�
 TFORM1 0ʏ  TPF0TForm1Form1Left Top Width�HeightCaptionGRBL HPGL PlayerColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style Menu	MainMenu1OldCreateOrderPositionpoScreenCenterScaled
OnActivateFormActivateOnCreate
FormCreate	OnDestroyFormDestroyPixelsPerInch`
TextHeight TBevelBevel4LeftPTop0WidthIHeightSShapebsFrame  	TPaintBoxVideoBoxLeftTop0Width�Height�ColorclCreamParentColor  	TPaintBox
DrawingBoxLeftTop0Width�Height�Hint4Milling View - Drag with mouse or click block objectColorclCream
DragCursor	crSizeAllParentColorOnMouseDownDrawingBoxMouseDownOnMouseMoveDrawingBoxMouseMove	OnMouseUpDrawingBoxMouseUp  TSpeedButtonBtnRunLeft�TopWidth9HeightHintRun ListCaptionRUNFont.CharsetANSI_CHARSET
Font.ColorclGreenFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontOnClickBtnRunClick  TBevelBevel2LeftTop0WidthAHeightiShapebsFrame  TSpeedButtonSpeedButton3LeftPTop<Width9HeightHintPause G-CodeCaptionPauseFont.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFont  TSpeedButtonSpeedButton2LeftPTop\Width9HeightHintContinue when pausedCaptionContinueFont.CharsetANSI_CHARSET
Font.ColorclGreenFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFont  TSpeedButtonSpeedButton1Left Top<Width9HeightHint
Run G-CodeCaptionRunFont.CharsetANSI_CHARSET
Font.Color�, Font.Height�	Font.NameArial
Font.StylefsBold 
ParentFontOnClickBtnRunClick  TSpeedButton	BtnCancelLeft Top\Width9HeightHintCancel any running processCaptionStopFont.CharsetANSI_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontOnClickBtnCancelClick  TLabelLabel8Left�Top`WidthHeightCaptionBusyFont.CharsetDEFAULT_CHARSET
Font.Colorcl3DDkShadowFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TRadioGroupRadioGroupCamLeftTop8Width� HeightYHintSpinde view camera controlCaptionCamera ControlFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	ItemIndex Items.StringsOff	CrosshairOverlay 
ParentFontTabOrder	OnClickRadioGroupCamClick  	TTrackBar	TrackBar1Left� TophWidthiHeightHintCrosshair circle diameterMaxdPosition2TabOrder TabStop	TickStyletsNone  TToolBarToolBar1Left Top Width�Height!BorderWidthColor	clBtnFaceConstraints.MaxWidth�Images
ImageList1IndentParentColorParentShowHintShowHint	TabOrderWrapable TToolButtonToolButton9LeftTopActionFileNew1  TToolButtonToolButton1LeftTopAction	FileOpen1  TToolButtonToolButton2Left3TopAction	FileSave1   TButton	BtnRescanLeft�TopWidth9HeightHintOpen FTDI USB DeviceCaptionDeviceFont.CharsetANSI_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTabOrderOnClickBtnRescanClick  TEdit
DeviceViewLeft�TopWidth� HeightHintSelected FTDI DeviceAutoSize
BevelInnerbvNone
BevelOuterbvNoneBorderStylebsNoneColor	clBtnFaceFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTabOrderText(not selected)  TButtonBtnCloseLeft�TopWidth9HeightHintClose FTDI USB DeviceCaptionCloseFont.CharsetANSI_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTabOrder  TButtonBtnZoomResetScrollLeft�TopWidthHeightHintReset zoom and panCaption-Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderTabStopOnClickBtnZoomResetScrollClick  
TScrollBar
ScrollBar1LeftTopWidth�HeightLargeChange
Max�Min�PageSize TabOrderOnChangeScrollBar1ChangeOnScrollScrollBarScroll  
TScrollBar
ScrollBar2Left�Top0WidthHeight�Kind
sbVerticalLargeChange
Max�Min�PageSize TabOrderTabStopOnChangeScrollBar2ChangeOnScrollScrollBarScroll  	TTrackBarTrackBarZoomLeft� TopWidth� Height Hint#View zoom - disabled when camera ONMinPageSizePositionTabOrderTabStopThumbLength 	TickStyletsNoneOnChangeTrackBarZoomChange  TButtonBtnZoomResetLeftpTopWidthYHeightHelpType	htKeywordHelpKeywordReset zoom and panCaption
Zoom ResetFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTabOrder
TabStopOnClickBtnZoomResetScrollClick  TStaticTextStaticText1Left� TopHWidthCHeightCaptionOverlay ColorTabOrder  TPanelOverlayColorLeft� TopHWidth!HeightHintCrosshair overlay color
BevelWidthColorclRedCtl3D	ParentBackgroundParentCtl3DTabOrderOnClickOverlayColorClick  TEditEditDragLeft�TopWidthaHeightHelpType	htKeywordHelpKeywordero offset when camera ONColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontReadOnly	TabOrderText(Off)OnChangeEditCamScaleChange  TStaticTextStaticText5Left@TopWidthJHeightCaptionDrag Offs (mm)TabOrder  TStaticTextStaticText6Left TophWidthHeightCaptionSizeTabOrder  TPanelPanelLEDLeft�Top\Width!HeightHintBusy/Running
BevelOuter	bvLowered
BevelWidthColorclMaroonCtl3D	ParentBackgroundParentCtl3DTabOrder  TProgressBarProgressLeft`Top<Width� HeightHintMill ProgressMax� StepTabOrder  TPageControlPageControl1Left�Top0Width�Heighti
ActivePageTabSheetPensFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold HotTrack	
ParentFontTabOrder 	TTabSheetTabSheetPensCaptionEdit Files/Pens TLabelLabel7LeftTop� Width(HeightCaptionPen EditFont.CharsetDEFAULT_CHARSET
Font.Colorcl3DDkShadowFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TLabelLabel1LeftTopWidth� HeightCaption HPGL/Excellon Files, Pen ReplaceFont.CharsetDEFAULT_CHARSET
Font.Colorcl3DDkShadowFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TStringGridStringGridPensTagLeftTop� Width�Height� Hint!Pen settings common to all blocksColCountDefaultColWidthDefaultRowHeight
FixedColor	cl3DLightRowCount
Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsgoFixedVertLinegoFixedHorzLine
goVertLine
goHorzLine 
ParentFont
ScrollBarsssNoneTabOrderOnClickStringGridPensClick
OnDrawCellStringGridPensDrawCellOnMouseWheelDownStringGridPensMouseWheelDownOnMouseWheelUpStringGridPensMouseWheelUpOnSetEditTextStringGridPensSetEditText	ColWidths,,,,,4, 
RowHeights   TStringGridStringGridFilesTagLeftTop(Width�Height� Hint$Files loaded - click on path to loadColCountDefaultRowHeight
FixedColor	cl3DLight	FixedCols RowCount	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsgoFixedVertLinegoFixedHorzLine
goVertLine
goHorzLine 
ParentFont
ScrollBars
ssVerticalTabOrder OnClickStringGridFilesClick
OnDrawCellStringGridFilesDrawCell	ColWidths� ((((((   TBitBtnBitBtnClearHPGLLeftTop�WidthKHeightCaption
Clear HPGLFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderOnClickBitBtnClearHPGLClick   	TTabSheetTabSheetGroupsCaptionEdit Groups/Drills
ImageIndex TLabelLabel5LeftTopWidth0HeightCaption
Block EditFont.CharsetDEFAULT_CHARSET
Font.Colorcl3DDkShadowFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TLabelLabel6LeftTop(Width&HeightCaption
Drill EditFont.CharsetDEFAULT_CHARSET
Font.Colorcl3DDkShadowFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TStringGridStringGridPointsLeftTop8Width�Height	Color	clBtnFaceColCountDefaultColWidth(DefaultRowHeight
FixedColor	cl3DLightRowCountFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsgoFixedVertLinegoFixedHorzLine
goVertLine
goHorzLinegoThumbTracking 
ParentFont
ScrollBars
ssVerticalTabOrder OnClickStringGridPointsClick
OnDrawCellStringGridPointsDrawCell	OnMouseUpStringGridPointsMouseUp	ColWidths,,((   TStringGridStringGridBlocksTagLeftTopWidth�HeightHint#Block Edit - overrides pen settingsColor	clBtnFaceColCount
DefaultRowHeight
FixedColor	cl3DLightRowCountFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsgoFixedVertLinegoFixedHorzLine
goVertLine
goHorzLinegoThumbTracking 
ParentFont
ScrollBars
ssVerticalTabOrderOnClickStringGridBlocksClick
OnDrawCellStringGridBlocksDrawCell	OnMouseUpStringGridBlocksMouseUp	ColWidths4,,,,,,    	TTabSheetTabSheetDefaultsCaptionDefaults
ImageIndex TBevelBevel1LeftTop� WidthQHeightqShapebsFrame  TLabelLabel2LeftTop� WidthIHeightCaptionmm HPGL Z upFont.CharsetDEFAULT_CHARSET
Font.Colorcl3DDkShadowFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TLabelLabel4Left[Top� WidthVHeightCaptionmm HPGL Z up liftFont.CharsetDEFAULT_CHARSET
Font.Colorcl3DDkShadowFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TLabelLabel3Left[Top� WidthOHeightCaptionmm Zero  GaugeFont.CharsetDEFAULT_CHARSET
Font.Colorcl3DDkShadowFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TEditEditCamScaleLeft Top@Width1HeightTabOrder Text0OnChangeEditCamScaleChange  TStaticTextStaticText2LeftXTopDWidth@HeightCaption	Cam ScaleTabOrder  TEditEditCamXLeft Top`Width1HeightTabOrderText0OnChangeEditCamScaleChange  TStaticTextStaticText3LeftXTopdWidthaHeightCaptionCam X Offs (mm)TabOrder  TEditEditCamYLeft TopxWidth1HeightTabOrderText0OnChangeEditCamScaleChange  TStaticTextStaticText4LeftXTop|WidthaHeightCaptionCam Y Offs (mm)TabOrder  TEdit	EditGaugeLeft Top� Width1HeightTabOrderText0OnChangeEditGaugeChange  	TCheckBoxCheckBoxInvertZLeft TopWidthqHeightCaptionInvert Z in G-CodeFont.CharsetDEFAULT_CHARSET
Font.Colorcl3DDkShadowFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder  TEditEditLiftLeft Top� Width1HeightTabOrderText0OnChangeEditLiftChange  TEditEditUpLeft� Top� Width1HeightTabOrder	Text0OnChangeEditUpChange  TStringGridStringGridDefaultsLeftTop@WidthYHeightColCountDefaultRowHeight
FixedColor	cl3DLight	FixedCols RowCount	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsgoFixedVertLinegoFixedHorzLine
goVertLine
goHorzLinegoThumbTracking 
ParentFont
ScrollBars
ssVerticalTabOrder
	ColWidths)(    	TTabSheetTabSheetRunCaptionRun
ImageIndex TMemoMemo1LeftTopWidth9Height�Lines.StringsG-CODEDEBUG OUPUT 
ScrollBars
ssVerticalTabOrder     
TStatusBar
StatusBar1Left Top�Width�HeightAutoHint	Panels SimplePanel	
SimpleTextSpeichern unter  	TCheckBoxCheckBoxDimensionsLeft`TopWidthiHeightCaptionShow dimensionsTabOrderOnClickCheckBoxDimensionsClick  	TCheckBoxCheckBoxDirectionsLeft`TopWidthiHeightCaptionShow directionsChecked	State	cbCheckedTabOrderOnClickCheckBoxDirectionsClick  	TMainMenu	MainMenu1Left�Top 	TMenuItemFile1Caption&FileHintDateibefehle 	TMenuItemFileNewItemActionFileNew1  	TMenuItemFileOpenItemCaption	&Open JobHint%Open|Open settings and parameter file
ImageIndexOnClickJobOpenExecute  	TMenuItemFileSaveItemCaption	&Save JobHint.Save settings|Save settings and params to file
ImageIndexOnClickJobSaveExecute  	TMenuItemFileSaveAsItemCaptionSave Job  &as...Hint?Save settings|Save settingsSave settings and params to new fileOnClickJobSaveAsExecute  	TMenuItemN7Caption-  	TMenuItemFileExitItemCaption&QuitHintQuit|Quit programOnClickFileExitItemClick   	TMenuItemEdit0Caption&EditHintAnweisungen zur Bearbeitung 	TMenuItemCutItemCaptionCut  	TMenuItemCopyItemCaptionCopy  	TMenuItem	PasteItemCaptionParte   	TMenuItemHelp1Caption&HelpHintHilfethemen 	TMenuItemHelpAboutItemAction
HelpAbout1    TActionListActionList1Left�Top TActionFileNew1CategoryFileCaption&NeuHintNeu|Neue Datei erstellen
ImageIndexShortCutN@	OnExecuteFileNew1Execute  TAction	FileOpen1CategoryFileCaption   Ö&ffnenHint   Öffnen|Datei öffnen
ImageIndexShortCutO@	OnExecuteJobOpenExecute  TAction	FileSave1CategoryFileCaption
&SpeichernHint"Speichern|Aktuelle Datei speichern
ImageIndexShortCutS@	OnExecuteJobSaveExecute  TActionFileSaveAs1CategoryFileCaptionSpeichern &unter...Hint9Speichern unter|Datei unter einem anderen Namen speichern  TAction	FileExit1CategoryFileCaption&BeendenHintBeenden|Programm beenden	OnExecuteFileExitItemClick  TEditCutEditCut1CategoryEditCaption&AusschneidenEnabledHint@Ausschneiden|Markiertes Objekt in die Zwischenablage verschieben
ImageIndex ShortCutX@  	TEditCopy	EditCopy1CategoryEditCaption	&KopierenEnabledHint9Kopieren|Markiertes Objekt in die Zwischenablage kopieren
ImageIndexShortCutC@  
TEditPaste
EditPaste1CategoryEditCaption
   &EinfügenHint-   Einfügen|Inhalt der Zwischenablage einfügen
ImageIndexShortCutV@  TAction
HelpAbout1CategoryHelpCaption&Info...HintInfo|Show info box   
TImageList
ImageList1Left�TopBitmap
&S  IL     �������������BM6       6   (   @   P           P                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �   �                                                                                                                                                                                                                                                       �   ��� �   �                                       �   �                                                                                                                                                                                                   �   ��� �   �   �                                   �   �   �                                   ��� ��� ��� ��� ��� ��� ��� ��� ���     ���                                                                                                                 �   ��� �   �   �                                   �   �   �                                                                                   ���                                                                                                         �   ��� �   �   �                       ��� ��� ��� ���     �                     �                 ��� ��� ��� ��� ��� ���  ��  ��  �� ��� ���                                                                                                 ��� ��� ��� ��� ��� �   �   �                       ��� ��� ��� ��� ��� ���                   �   �                 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���     ���                                                                                 ��� ��� ��� ��� ��� ��� ��� ���                             ��� ��� ��� ��� ��� ���               �   �   �   �   �                                                         ��� ���                                                                             ��� ��� ��� ��� ��� ��� ��� ���                             ��� ��� ��  ��� ��� ���                   �   �           �     ��� ��� ��� ��� ��� ��� ��� ��� ��� ���     ���     ���                                                                         ��� ��� ��� ��� ��� ��� ��� ��� ��� ���                         ��� ��� ��� ��� ��� ���                       �           �                                             ���     ���                                                                             ��� ��� ��� ��� ��� ��� ��� ��� ��� ���                             ��� ��� ��� ���                                       �             ��� ��� ��� ��� ��� ��� ��� ���     ���     ���                                                                         ��� ��� ��  ��� ��� ��� ��� ��� ��� ���                                                           �                                         ���                     ���                                                                                         ��� ��� ��  ��� ��� ��� ��� ��� ��� ���                                                           �           �                             ��� ��� ��� ��� ��� ��� ��� ���                                                                                         ��� ��� ��  ��  ��� ��� ��� ���                                                               �           �   �                             ���                     ���                                                                                         ��� ��� ��� ��� ��� ��� ��� ���                                                                   �   �   �   �   �                         ��� ��� ��� ��� ��� ��� ��� ���                                                                                             ��� ��� ��� ���                                                                                   �   �                                                                                                                                                                                                                                                           �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ��  ��                         ��� ���      ��             ��� ��� ��� ��� ��� ��� ��� ��� ��� ���                         ��� ��� ��� ��� ��� ��� ��� ��� ��� ���                                                                                              ��  ��                         ��� ���      ��             ��� ��� ��� ��� ��� ��� ���                                     ���         ���                     ���                                                             �   �   �                        ��  ��                         ��� ���      ��             ��� ��� ��� ��� ��� ���     ��� ��� ��� ���                     ��� ��� ��� ��� ��� ��� ��� ��� ��� ���                                                             �   �   �                        ��  ��                                      ��             ��� ��� ��� ��� ���     ��� ��� ��� ��  ��� ���                 ���         ���                     ���                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��             ��� ��� ��� ��� ���     ��� ��� ��� ��� ��� ���                 ��� ��� ��� ��� ��� ��� ��� ��� ��� ���                                                             �   �   �                        ��  ��                                  ��  ��             ��� ��� ��� ��� ���     ��� ��  ��� ��� ��� ���                 ��� ��� ��� ��� ��� ��� ���     ��� ���                                                             �   �   �                        ��     ��� ��� ��� ��� ��� ��� ��� ���      ��             ��� ��� ��� ��� ���     ��� ��  ��  ��� ��� ���                 ���         ��� ��� ���     ���     ���                                                                 �   �   �                    ��     ��� ��� ��� ��� ��� ��� ��� ���      ��             ��� ��� ��� ��� ��� ���     ��� ��� ��� ���                     ���     ���     ���     ���     ���                 �   �                                                   �   �   �                ��     ��� ��� ��� ��� ��� ��� ��� ���      ��             ��� ��� ��� ��� ��� ��� ���                                     ��� ���     ���     ���     ���     ��� ��� ���     �   �                               �   �   �               �   �   �            ��     ��� ��� ��� ��� ��� ��� ��� ���      ��             ��� ��� ��� ��� ��� ��� ��� ��� ��� ���                                         ���     ���     ��� ��� ��� ��� ��� �   �                               �   �   �               �   �   �            ��     ��� ��� ��� ��� ��� ��� ��� ���                     ��� ��� ��� ��� ��� ��� ���                                                         ���     ��� ��� ��� ��� ��� ��� �   �                               �   �   �               �   �   �            ��     ��� ��� ��� ��� ��� ��� ��� ���     ���             ��� ��� ��� ��� ��� ��� ���     ���                                                     ��� ��� ��� ��� ��� ���     �   �                                   �   �   �   �   �   �   �                                                                           ��� ��� ��� ��� ��� ��� ���                                                                                         �   �                                       �   �   �   �   �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ��� ��� ��� ��� ��� ��� ��� ��� ���                          ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                 ��� ��� ��� ��� ��� ��� ��� ��� ���                      ��      ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                             ��� ��� ��� ��� ��� ��� ��� ��� ���                     ���  ��      ��  ��  ��  ��  ��  ��  ��  ��  ��                     {Z                          cJ  cJ  cJ  cJ  cJ                                                                                      ��� ��� ��� ��� ��� ��� ��� ��� ���                      �� ���  ��      ��  ��  ��  ��  ��  ��  ��  ��  ��                 {Z                              �k {Z  {Z  �k                                                                                     ��� ��� ��� ��� ��� ��� ��� ��� ���                     ���  �� ���  ��                                                     {Z                              ޥ{ �k {Z  �k                                                                                     ��� ��� ��� ��� ��� ��� ��� ��� ���                      �� ���  �� ���  �� ���  �� ���  ��                                 {Z  ޥ{                     ޥ{ {Z  ޥ{ �k �k                                                                                     ��� ��� ��� ��� ��� ��� ��� ��� ���                     ���  �� ���  �� ���  �� ���  �� ���                                 ޥ{ {Z  ޥ{         ޥ{ {Z  {Z  ޥ{         �k                                                                                     ��� ��� ��� ��� ��� ��� ��� ��� ���                      �� ���  ��                                                             ޥ{ {Z  {Z  {Z  {Z  ޥ{                                                                                                         ��� ��� ��� ��� ��� ���                                                                                                                                                                                                                                         ��� ��� ��� ��� ��� ���     ���                                                                                                                                                                                                                                 ��� ��� ��� ��� ��� ���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 �   �                                                                                                                               �   �   �   �   �   �   �   �   �   �                                                                                   �           �           �   �                                               �   �   �   �   �   �   �   �   �                           �   ��� ��� ��� ��� ��� ��� ��� ��� �                                                                                   �           �       �           �                                           �   ��� ��� ��� ��� ��� ��� ��� �       ���  �� ���  �� ��� �   ���                         ��� �                                                                                   �           �       �           �                                           �   ���                     ��� �        �� ���  �� ���  �� �   ��� ��� ��� ��� ��� ��� ��� ��� �                                                                                       �   �   �       �           �                                           �   ��� ��� ��� ��� ��� ��� ��� �       ���  �� ���  �� ��� �   ���             ��� �   �   �   �                                                                                               �       �   �   �                           ��� ��� ��� ��� ��� �   ���                     ��� �        �� ���  �� ���  �� �   ��� ��� ��� ��� ��� �   ��� �               cJ  cJ  cJ  cJ  cJ                          {Z                                      �       �                                   ���                 �   ��� ��� ��� ��� ��� ��� ��� �       ���  �� ���  �� ��� �   ��� ��� ��� ��� ��� �   �                   �k {Z  {Z  �k                             {Z                                                                                  ��� ��� ��� ��� ��� �   ���         ��� �   �   �   �        �� ���  �� ���  �� �   �   �   �   �   �   �                       �k {Z  �k ޥ{                             {Z                                                                                  ���                 �   ��� ��� ��� ��� �   ��� �           ���  �� ���  �� ���  �� ���  �� ���  �� ���  ��                     �k �k ޥ{ {Z  ޥ{                     ޥ{ {Z                                                                                  ��� ��� ��� ��� ��� �   ��� ��� ��� ��� �   �                �� ���                                 ��� ���                     �k         ޥ{ {Z  {Z  ޥ{         ޥ{ {Z  ޥ{                                                                                 ���         ���     �   �   �   �   �   �                   ��� ���     ��� ��� ��� ��� ��� ���     ���  ��                                         ޥ{ {Z  {Z  {Z  {Z  ޥ{                                                                                     ��� ��� ��� ���     ���                                      �� ���  ��      ��          ��     ���  �� ���                                                                                                                                                     ��� ��� ��� ���                                                                  ��  ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 BM>       >   (   @   P         �                      ���                                                                                                                                 ������  ���?�  ���?�  ���   ���   � �   � �    � �      ��    ���    ÿ�   ���  ����  ����  �?���  ������  ���������  ���  ���  �ǀ  sǀ  '��  ǀ   ǀ  �  �   8�   8� � 8� � ?� ?���� ������������������������� ����� ����� ����� ߃��� �����  ���� σ�?� ��� �������������������u�����?����������������������� ����� � �����   �����   �����   �����  ���?�  ����  ���?� ����� �c��� ��߀ ���߀�����߁������������                        TOpenDialogOpenFileDialogFilterZHPGL Files|*.plt;*.hpgl|G-Code Files|*.tap, *.dat|Excellon Drill Files|*.drl|All Files|*.*FilterIndex OptionsofHideReadOnlyofFileMustExistofEnableSizing Left Top  TTimerTimer1Interval2OnTimerTimer1ElapsedLeft�Top  TXPManifestXPManifest1Left`Top  TColorDialogColorDialog1Left�Top  TOpenDialogOpenJobDialogFilterJob Files|*.job|All Files|*.*FilterIndex OptionsofHideReadOnlyofFileMustExistofEnableSizing Left Top  TSaveDialogSaveJobDialog
DefaultExtjobFilterJOB File|*.jobTitleJob File SaveLeft@Top  
TPopupMenu
PopupMenu1MenuAnimationmaTopToBottom Left`Top 	TMenuItem	pu_enableCaptionEnabledOnClickpu_enableClick  	TMenuItemN1Caption-  	TMenuItem	pu_online	AutoCheck	CaptionOn lineChecked	
GroupIndex	RadioItem	OnClickpu_RadioClick  	TMenuItem	pu_insideTag	AutoCheck	CaptionInside
GroupIndex	RadioItem	OnClickpu_RadioClick  	TMenuItem
pu_outsideTag	AutoCheck	CaptionOutside
GroupIndex	RadioItem	OnClickpu_RadioClick  	TMenuItem	pu_pocketTag	AutoCheck	CaptionPocket
GroupIndex	RadioItem	OnClickpu_RadioClick    