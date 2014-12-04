unit grbl_com;
// Sende- und Empfangsroutinen for GRBLize und GRBL-Jogger

interface

//uses SysUtils, FTDIdll, FTDIchip, FTDItypes;
uses SysUtils, StrUtils, Windows, Classes, Forms, Controls, Menus,
  Dialogs, StdCtrls, FTDIdll, FTDIchip, FTDItypes, import_files, Clipper;

type
  TFileBuffer = Array of byte;

  procedure mdelay(msecs: Longint);

  function SetupFTDI: String;
  function InitFTDI(my_device:Integer): String;
  function CheckCom(my_ComNumber: Integer): Integer;  // check if a COM port is available

  // GCode-String oder Char an GRBL senden, auf OK warten wenn my_getok = TRUE
  function grbl_sendStr(my_str: String; ProcMsg, my_getok: boolean): String;

  // GCode-String von GRBL holen, ggf. Timeout-Zeit warten:
  // ggf. Application.ProcessMessages w�hrend Warten ausf�hren
  function grbl_receiveStr(my_timeout: Integer; ProcMsg: Boolean): string;

  // gibt Anzahl der Zeichen im Empfangspuffer zur�ck:
  function grbl_receiveCount: Integer;


  // GCode-String G92 x,y mit abschlie�endem CR an GRBL senden, auf OK warten:
  procedure grbl_offsXY(x, y: Double);
  // GCode-String G92 z mit abschlie�endem CR an GRBL senden, auf OK warten
  procedure grbl_offsZ(z: Double);


  // GCode-String G0 x,y mit abschlie�endem CR an GRBL senden, auf OK warten.
  // Maschinenkoordinaten wenn is_abs = TRUE
  procedure grbl_moveXY(x, y: Double; is_abs: Boolean);

  // GCode-String G0 z mit abschlie�endem CR an GRBL senden, auf OK warten.
  // Maschinenkoordinaten wenn is_abs = TRUE
  procedure grbl_moveZ(z: Double; is_abs: Boolean);

  // GCode-String G1 x,y,f mit abschlie�endem CR an GRBL senden, auf OK warten:
  // F (speed) wird nur gesendet, wenn es sich ge�ndert hat!
  procedure grbl_millXYF(x, y: Double; f: Integer);

  // GCode-String G1 x,y,f mit abschlie�endem CR an GRBL senden, auf OK warten:
  // F (speed) wird nur gesendet, wenn es sich ge�ndert hat!
  procedure grbl_millXY(x, y: Double);

  // GCode-String G1 z mit abschlie�endem CR an GRBL senden, auf OK warten:
  // F (speed) wird nur gesendet, wenn es sich ge�ndert hat!
  procedure grbl_millZF(z: Double; f: Integer);

  // GCode-String G1 z mit abschlie�endem CR an GRBL senden, auf OK warten:
  procedure grbl_millZ(z: Double);

  // GCode-String G1 x,y,z,f mit abschlie�endem CR an GRBL senden, auf OK warten:
  // F (speed) wird nur gesendet, wenn es sich ge�ndert hat!
  procedure grbl_millXYZF(x, y, z: Double; f: Integer);

  // GCode-String G1 x,y,z mit abschlie�endem CR an GRBL senden, auf OK warten:
  procedure grbl_millXYZ(x, y, z: Double);

  // kompletten einzelnen Pfad fr�sen, zur�ck bis Anfang wenn Closed
  // Loch bohren wenn Path nur aus einem Eintrag besteht
  procedure grbl_millpath(millpath: TPath; millpen: Integer; offset: TIntPoint; is_closedpoly: Boolean);

var
//FTDI-Device
  ftdi: Tftdichip;
  ftdi_isopen : Boolean;
  grbl_available: Boolean;
  ftdi_selected_device: Integer;  // FTDI-Frosch-Device-Nummer
  ftdi_device_count: dword;
  ftdi_device_list: pftdiDeviceList;
  ftdi_sernum_arr, ftdi_desc_arr: Array[0..15] of ShortString;
  grbl_oldx, grbl_oldy, grbl_oldz: Double;
  grbl_oldf: Integer;
  grbl_sendlist: TSTringList;

implementation

uses grbl_player_main;


procedure mdelay(msecs: Longint);
var
  targettime: cardinal;
begin
  targettime := GetTickCount + msecs;
  while targettime > GetTickCount do
    Application.ProcessMessages;
end;


function ExtComName(ComNr: DWORD): string;
begin
  if ComNr > 9 then
    Result := Format('\\.\COM%d', [ComNr])
  else
    Result := Format('COM%d', [ComNr]);
end;

function CheckCom(my_ComNumber: Integer): Integer;
// check if a COM port is available
var
  FHandle: THandle;
  my_str: String;
begin
  Result := 0;
  my_str:= ExtComName(my_ComNumber);
  FHandle := CreateFile(PChar(my_str),
    GENERIC_WRITE,
    0, {exclusive access}
    nil, {no security attrs}
    OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL,
    0);
  if FHandle <> INVALID_HANDLE_VALUE then
    CloseHandle(FHandle)
  else
    Result := GetLastError;
end;

// #############################################################################
// #############################################################################

function grbl_receiveCount: Integer;
// gibt Anzahl der Zeichen im Empfangspuffer zur�ck
var i: Integer;
begin
  if ftdi_isopen then begin
    ftdi.getReceiveQueueStatus(i);
    grbl_receiveCount:= i;
  end else
    grbl_receiveCount:= 0;
end;


function grbl_receiveStr(my_timeout: Integer; ProcMsg: Boolean): string;
var
  my_str: String;
  i: Integer;
  my_char: char;
  targettime: cardinal;

begin
  if ftdi_isopen then begin
    my_str:= '';
    targettime := GetTickCount + my_timeout;
    repeat
      if ProcMsg then
        Application.ProcessMessages;
      i:= grbl_receiveCount;
      if i > 0 then begin
        ftdi.read(@my_char, 1, i);
        if my_char >= #32 then
          my_str:= my_str + my_char;
      end;
    until (my_char= #13) or (GetTickCount > targettime);
    if (GetTickCount > targettime) then
      grbl_receiveStr:= '#Timeout'
    else
      grbl_receiveStr:= my_str;
  end else
    grbl_receiveStr:= '#Device not open';
end;


function grbl_sendStr(my_str: String; ProcMsg, my_getok: boolean): String;
// liefert TRUE wenn my_getok TRUE war und GRBL mit "ok" geantwortet hat
// String sollte mit #13 abgeschlossen sein, kann aber auch einzelnes
// GRBL-Steuerzeichen sein (?,!,~,CTRL-X)
var
  i: longint;
  my_char: char;

begin
  grbl_sendStr:= '';
  if ftdi_isopen then begin
    ftdi.write(@my_str[1], length(my_str), i);
    if my_getok then begin
      my_str:= '';
      repeat
        if ProcMsg then
          Application.ProcessMessages;
        i:= grbl_receiveCount;
        if i > 0 then begin
          ftdi.read(@my_char, 1, i);
          if my_char >= #32 then
            my_str:= my_str + my_char;
        end;
      until (my_char= #13);
      grbl_sendStr:= my_str;
    end;
  end;
end;

// #############################################################################
// Highlevel-Funktionen
// #############################################################################

procedure grbl_checkZ(var z: Double);
// limits z to upper limit
begin
end;

procedure grbl_checkXY(var x,y: Double);
// limits z to upper limit
begin
end;

procedure grbl_offsXY(x, y: Double);
// GCode-String G92 x,y mit abschlie�endem CR an GRBL senden, auf OK warten
begin
  grbl_sendlist.add('G92 X'+ FloatToSTrDot(x)+' Y'+ FloatToSTrDot(y));
end;

procedure grbl_offsZ(z: Double);
// GCode-String G92 z mit abschlie�endem CR an GRBL senden, auf OK warten
begin
  grbl_sendlist.add('G92 Z'+ FloatToSTrDot(z));
end;

procedure grbl_moveXY(x, y: Double; is_abs: Boolean);
// GCode-String G0 x,y mit abschlie�endem CR an GRBL senden, auf OK warten
var my_str: String;
begin

  if is_abs then
    my_str:= 'G53 X'
  else begin
    my_str:= 'G0 X';
    grbl_checkXY(x,y);
    grbl_oldx:= x;
    grbl_oldy:= y;
  end;
  my_str:= my_str + FloatToSTrDot(x) + ' Y' + FloatToSTrDot(y);
  grbl_sendlist.add(my_str);
end;

procedure grbl_moveZ(z: Double; is_abs: Boolean);
// GCode-String G0 z mit abschlie�endem CR an GRBL senden, auf OK warten
var my_str: String;
begin
  if is_abs then
    my_str:= 'G53 Z'
  else begin
    my_str:= 'G0 Z';
    grbl_checkZ(z);
    grbl_oldz:= z;
  end;
  my_str:= my_str + FloatToSTrDot(z);
  grbl_sendlist.add(my_str);
end;

procedure grbl_millXYF(x, y: Double; f: Integer);
// GCode-String G0 x,y mit abschlie�endem CR an GRBL senden, auf OK warten
// F (speed) wird nur gesendet, wenn es sich ge�ndert hat!
var my_str: String;
begin
  grbl_checkXY(x,y);
  my_str:= 'G1 X'+ FloatToSTrDot(x)+' Y'+ FloatToSTrDot(y);
  if f <> grbl_oldf then
    my_str:= my_str + ' F' + IntToStr(f);
  grbl_sendlist.add(my_str);
  grbl_oldf:= f;
  grbl_oldx:= x;
  grbl_oldy:= y;
end;

procedure grbl_millXY(x, y: Double);
// GCode-String G0 x,y mit abschlie�endem CR an GRBL senden, auf OK warten
// XY-Werte werden nur gesendet, wenn sie sich ge�ndert haben!
var my_str: String;
begin
  grbl_checkXY(x,y);
  my_str:= 'G1';
  if x <> grbl_oldx then
    my_str:= my_str + ' X'+ FloatToSTrDot(x);
  if y <> grbl_oldy then
    my_str:= my_str + ' Y'+ FloatToSTrDot(y);
  grbl_sendlist.add(my_str);
  grbl_oldx:= x;
  grbl_oldy:= y;
end;

procedure grbl_millZF(z: Double; f: Integer);
// GCode-String G0 x,y mit abschlie�endem CR an GRBL senden, auf OK warten
// F (speed) wird nur gesendet, wenn es sich ge�ndert hat!
var my_str: String;
begin
  grbl_checkZ(z);
  my_str:= 'G1 Z'+ FloatToSTrDot(z);
  my_str:= my_str + ' F' + IntToStr(f);
  grbl_sendlist.add(my_str);
  grbl_oldf:= f;
  grbl_oldz:= z;
end;

procedure grbl_millZ(z: Double);
// GCode-String G0 x,y mit abschlie�endem CR an GRBL senden, auf OK warten
var my_str: String;
begin
  grbl_checkZ(z);
  my_str:= 'G1 Z'+ FloatToSTrDot(z);
  grbl_sendlist.add(my_str);
  grbl_oldz:= z;
end;

procedure grbl_millXYZF(x, y, z: Double; f: Integer);
// GCode-String G0 x,y mit abschlie�endem CR an GRBL senden, auf OK warten
// F (speed) wird nur gesendet, wenn es sich ge�ndert hat!
var my_str: String;
begin
  grbl_checkXY(x,y);
  grbl_checkZ(z);
  my_str:= 'G1 X' + FloatToSTrDot(x) +' Y'+ FloatToSTrDot(y) +' Z' + FloatToSTrDot(z);
  if f <> grbl_oldf then
    my_str:= my_str + ' F' + IntToStr(f);
  grbl_sendlist.add(my_str);
  grbl_oldf:= f;
  grbl_oldx:= x;
  grbl_oldy:= y;
  grbl_oldz:= z;
end;

procedure grbl_millXYZ(x, y, z: Double);
// GCode-String G0 x,y mit abschlie�endem CR an GRBL senden, auf OK warten
// XYZ-Werte werden nur gesendet, wenn sie sich ge�ndert haben!
var my_str: String;
begin
  grbl_checkXY(x,y);
  grbl_checkZ(z);
  my_str:= 'G1';
  if x <> grbl_oldx then
    my_str:= my_str + ' X'+ FloatToSTrDot(x);
  if y <> grbl_oldy then
    my_str:= my_str + ' Y'+ FloatToSTrDot(y);
  if z <> grbl_oldz then
    my_str:= my_str + ' Z'+ FloatToSTrDot(z);
  grbl_sendlist.add(my_str);
  grbl_oldx:= x;
  grbl_oldy:= y;
  grbl_oldz:= z;
end;


procedure grbl_millpath(millpath: TPath; millpen: Integer; offset: TIntPoint; is_closedpoly: Boolean);
// kompletten Pfad fr�sen oder bohren, ggf. wiederholen bis z_end erreicht
var i, my_len: Integer;
  x, y: Double;
  my_z, my_z_limit, my_z_end: Double;

  begin
  my_len:= length(millpath);
  if my_len < 1 then
    exit;

  my_z_limit:= 0;
  my_z_end:= job.pens[millpen].z_end;

  repeat
    my_z_limit:= my_z_limit - job.pens[millpen].z_inc;
    my_z:= -job.pens[millpen].z_end;
    if my_z < my_z_limit then
      my_z:= my_z_limit;

    Application.ProcessMessages;
    if CancelProc then
      break;
    if my_len = 1 then begin
    // single point drill
      x:= (millpath[0].x + offset.x) / 40;
      y:= (millpath[0].y + offset.y) / 40;
      grbl_moveZ(job.z_penup, false);
      grbl_moveXY(x,y, false);
      grbl_moveZ(0, false);
      grbl_millZF(my_z, job.pens[millpen].speed);
      grbl_moveZ(job.z_penup, false);
      exit;
    end;
    grbl_moveZ(job.z_penup, false);
    x:= (millpath[0].x + offset.x) / 40;
    y:= (millpath[0].y + offset.y) / 40;
    grbl_moveXY(x,y, false);
    grbl_moveZ(0, false);
    grbl_millZF(my_z, job.pens[millpen].speed);
    for i:= 1 to my_len - 1 do begin
      Application.ProcessMessages;
      if CancelProc then
        break;
      x:= (millpath[i].x + offset.x) / 40;
      y:= (millpath[i].y + offset.y) / 40;
      grbl_millXY(x,y);
    end;
    if is_closedpoly and (not CancelProc) then begin
      x:= (millpath[0].x + offset.x) / 40;
      y:= (millpath[0].y + offset.y) / 40;
      grbl_millXY(x,y);
    end;
  until (my_z_limit <= my_z_end) or CancelProc;

  grbl_moveZ(job.z_penup, false);
end;


// #############################################################################
// #############################################################################

function SetupFTDI: String;
var
  i: longint;

begin
  ftdi_isopen:= false;
  ftdi:= tftdichip.create;  { Create class instance }
  { Get the device list }
  if not ftdi.createDeviceInfoList(ftdi_device_count, ftdi_device_list) then begin
    result:= '### Failed to create device info list';
    freeandnil(ftdi);
    exit;
  end;
  { Iterate through the device list that was returned }
  if ftdi_device_count > 0 then
    for i := 0 to ftdi_device_count - 1 do begin
      ftdi_sernum_arr[i]:= strpas(ftdi_device_list^[i].serialNumber);
      ftdi_desc_arr[i]:= strpas(ftdi_device_list^[i].description);
    end;
end;

function InitFTDI(my_device:Integer):String;
begin
    { Check if device is present }
  if not ftdi.isPresentBySerial(ftdi_sernum_arr[my_device]) then begin
    result:= '### Device not present';
    ftdi.destroy;
    ftdi := nil;
    exit;
  end;

  if not ftdi.openDeviceBySerial(ftdi_sernum_arr[my_device]) then begin
    result:= '### Failed to open device';
    ftdi.destroy;
    ftdi := nil;
    exit;
  end;
  { Configure for 57600 baud, 8 bit, 1 stop bit, no parity, no flow control }
  if ftdi.resetDevice then begin
    ftdi_isopen:= true;
    ftdi.setBaudRate(fBaud19200);
    ftdi.setDataCharacteristics(fBits8, fStopBits1, fParityNone);
    ftdi.setFlowControl(fFlowNone, 0, 0);
    result:= 'USB connected';
    grbl_available:= true;
  end else
    result:= '### Reset error';
end;

end.
