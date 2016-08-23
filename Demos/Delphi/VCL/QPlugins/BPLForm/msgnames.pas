unit msgnames;

interface

uses classes, sysutils, windows, messages, controls, commctrl;

function MessageName(const AMsgId: Cardinal): String;

implementation

var
  KnownMsgs: array of String;

procedure RegisterNames;
begin
  SetLength(KnownMsgs, 65536);
  KnownMsgs[WM_USER + $113 + WM_CTLCOLORBTN] := 'CM_CTLCOLORBTN';
  KnownMsgs[WM_USER + $113 + WM_CTLCOLORDLG] := 'CM_CTLCOLORDLG';
  KnownMsgs[WM_USER + $113 + WM_CTLCOLOREDIT] := 'CM_CTLCOLOREDIT';
  KnownMsgs[WM_USER + $113 + WM_CTLCOLORLISTBOX] := 'CM_CTLCOLORLISTBOX';
  KnownMsgs[WM_USER + $113 + WM_CTLCOLORMSGBOX] := 'CM_CTLCOLORMSGBOX';
  KnownMsgs[WM_USER + $113 + WM_CTLCOLORSCROLLBAR] := 'CM_CTLCOLORSCROLLBAR';
  KnownMsgs[WM_USER + $113 + WM_CTLCOLORSTATIC] := 'CM_CTLCOLORSTATIC';
  KnownMsgs[WM_USER + $113 + 350] := 'CM_SCROLLTRACKING';
  KnownMsgs[WM_USER + $113 + 360] := 'CM_PARENTHOOKED';
  KnownMsgs[WM_USER + $113 + 361] := 'CM_CONTROLHOOKED';
  KnownMsgs[WM_USER + $113 + 362] := 'CM_INITCHILDS';
  KnownMsgs[$B000 + 0] := 'CM_ACTIVATE';
  KnownMsgs[$B000 + 1] := 'CM_DEACTIVATE';
  KnownMsgs[$B000 + 2] := 'CM_GOTFOCUS';
  KnownMsgs[$B000 + 3] := 'CM_LOSTFOCUS';
  KnownMsgs[$B000 + 4] := 'CM_CANCELMODE';
  KnownMsgs[$B000 + 5] := 'CM_DIALOGKEY';
  KnownMsgs[$B000 + 6] := 'CM_DIALOGCHAR';
  KnownMsgs[$B000 + 7] := 'CM_FOCUSCHANGED';
  KnownMsgs[$B000 + 8] := 'CM_PARENTFONTCHANGED';
  KnownMsgs[$B000 + 9] := 'CM_PARENTCOLORCHANGED';
  KnownMsgs[$B000 + 10] := 'CM_HITTEST';
  KnownMsgs[$B000 + 11] := 'CM_VISIBLECHANGED';
  KnownMsgs[$B000 + 12] := 'CM_ENABLEDCHANGED';
  KnownMsgs[$B000 + 13] := 'CM_COLORCHANGED';
  KnownMsgs[$B000 + 14] := 'CM_FONTCHANGED';
  KnownMsgs[$B000 + 15] := 'CM_CURSORCHANGED';
  KnownMsgs[$B000 + 16] := 'CM_CTL';
  KnownMsgs[$B000 + 17] := 'CM_PARENTCTL';
  KnownMsgs[$B000 + 18] := 'CM_TEXTCHANGED';
  KnownMsgs[$B000 + 19] := 'CM_MOUSEENTER';
  KnownMsgs[$B000 + 20] := 'CM_MOUSELEAVE';
  KnownMsgs[$B000 + 21] := 'CM_MENUCHANGED';
  KnownMsgs[$B000 + 22] := 'CM_APPKEYDOWN';
  KnownMsgs[$B000 + 23] := 'CM_APPSYSCOMMAND';
  KnownMsgs[$B000 + 24] := 'CM_BUTTONPRESSED';
  KnownMsgs[$B000 + 25] := 'CM_SHOWINGCHANGED';
  KnownMsgs[$B000 + 26] := 'CM_ENTER';
  KnownMsgs[$B000 + 27] := 'CM_EXIT';
  KnownMsgs[$B000 + 28] := 'CM_DESIGNHITTEST';
  KnownMsgs[$B000 + 29] := 'CM_ICONCHANGED';
  KnownMsgs[$B000 + 30] := 'CM_WANTSPECIALKEY';
  KnownMsgs[$B000 + 31] := 'CM_INVOKEHELP';
  KnownMsgs[$B000 + 32] := 'CM_WINDOWHOOK';
  KnownMsgs[$B000 + 33] := 'CM_RELEASE';
  KnownMsgs[$B000 + 34] := 'CM_SHOWHINTCHANGED';
  KnownMsgs[$B000 + 35] := 'CM_PARENTSHOWHINTCHANGED';
  KnownMsgs[$B000 + 36] := 'CM_SYSCOLORCHANGE';
  KnownMsgs[$B000 + 37] := 'CM_WININICHANGE';
  KnownMsgs[$B000 + 38] := 'CM_FONTCHANGE';
  KnownMsgs[$B000 + 39] := 'CM_TIMECHANGE';
  KnownMsgs[$B000 + 40] := 'CM_TABSTOPCHANGED';
  KnownMsgs[$B000 + 41] := 'CM_UIACTIVATE';
  KnownMsgs[$B000 + 42] := 'CM_UIDEACTIVATE';
  KnownMsgs[$B000 + 43] := 'CM_DOCWINDOWACTIVATE';
  KnownMsgs[$B000 + 44] := 'CM_CONTROLLISTCHANGE';
  KnownMsgs[$B000 + 45] := 'CM_GETDATALINK';
  KnownMsgs[$B000 + 46] := 'CM_CHILDKEY';
  KnownMsgs[$B000 + 47] := 'CM_DRAG';
  KnownMsgs[$B000 + 48] := 'CM_HINTSHOW';
  KnownMsgs[$B000 + 49] := 'CM_DIALOGHANDLE';
  KnownMsgs[$B000 + 50] := 'CM_ISTOOLCONTROL';
  KnownMsgs[$B000 + 51] := 'CM_RECREATEWND';
  KnownMsgs[$B000 + 52] := 'CM_INVALIDATE';
  KnownMsgs[$B000 + 53] := 'CM_SYSFONTCHANGED';
  KnownMsgs[$B000 + 54] := 'CM_CONTROLCHANGE';
  KnownMsgs[$B000 + 55] := 'CM_CHANGED';
  KnownMsgs[$B000 + 56] := 'CM_DOCKCLIENT';
  KnownMsgs[$B000 + 57] := 'CM_UNDOCKCLIENT';
  KnownMsgs[$B000 + 58] := 'CM_FLOAT';
  KnownMsgs[$B000 + 59] := 'CM_BORDERCHANGED';
  KnownMsgs[$B000 + 60] := 'CM_BIDIMODECHANGED';
  KnownMsgs[$B000 + 61] := 'CM_PARENTBIDIMODECHANGED';
  KnownMsgs[$B000 + 62] := 'CM_ALLCHILDRENFLIPPED';
  KnownMsgs[$B000 + 63] := 'CM_ACTIONUPDATE';
  KnownMsgs[$B000 + 64] := 'CM_ACTIONEXECUTE';
  KnownMsgs[$B000 + 65] := 'CM_HINTSHOWPAUSE';
  KnownMsgs[$B000 + 66] := 'CM_DOCKNOTIFICATION';
  KnownMsgs[$B000 + 67] := 'CM_MOUSEWHEEL';
  KnownMsgs[$B000 + 68] := 'CM_ISSHORTCUT';
  KnownMsgs[$B000 + 69] := 'CM_RAWX';
  KnownMsgs[$B000 + 70] := 'CM_INVALIDATEDOCKHOST';
  KnownMsgs[$B000 + 71] := 'CM_SETACTIVECONTROL';
  KnownMsgs[$B000 + 72] := 'CM_POPUPHWNDDESTROY';
  KnownMsgs[$B000 + 73] := 'CM_CREATEPOPUP';
  KnownMsgs[$B000 + 74] := 'CM_DESTROYHANDLE';
  KnownMsgs[$B000 + 75] := 'CM_MOUSEACTIVATE';
  KnownMsgs[$B000 + 76] := 'CM_CONTROLLISTCHANGING';
  KnownMsgs[$B000 + 77] := 'CM_BUFFEREDPRINTCLIENT';
  KnownMsgs[$B000 + 78] := 'CM_UNTHEMECONTROL';
  KnownMsgs[$B000 + 79] := 'CM_DOUBLEBUFFEREDCHANGED';
  KnownMsgs[$B000 + 80] := 'CM_PARENTDOUBLEBUFFEREDCHANGED';
  KnownMsgs[$B000 + 81] := 'CM_STYLECHANGED';
  KnownMsgs[$B000 + 82] := 'CM_GESTURE';
  KnownMsgs[$B000 + 83] := 'CM_CUSTOMGESTURESCHANGED';
  KnownMsgs[$B000 + 84] := 'CM_GESTUREMANAGERCHANGED';
  KnownMsgs[$B000 + 85] := 'CM_STANDARDGESTURESCHANGED';
  KnownMsgs[$B000 + 86] := 'CM_INPUTLANGCHANGE';
  KnownMsgs[$B000 + 87] := 'CM_TABLETOPTIONSCHANGED';
  KnownMsgs[$B000 + 88] := 'CM_PARENTTABLETOPTIONSCHANGED';
  KnownMsgs[$B000 + 89] := 'CM_CUSTOMSTYLECHANGED';
  KnownMsgs[$B000 + 100] := 'CM_FORMMODIFIED/CM_TABFONTCHANGED';
  KnownMsgs[$B000 + $0402] := 'CM_ITEMSELECTED';
  KnownMsgs[$B000 + $0403] := 'CM_ITEMCLICKED';
  KnownMsgs[$B000 + $0404] := 'CM_ITEMKEYED';
  KnownMsgs[$B000 + $0405] := 'CM_SPLITITEMCLICKED';
  KnownMsgs[$B000 + $0406] := 'CM_SCROLLCLICKED';
  KnownMsgs[$B000 + $0409] := 'CM_RESETBAR';
  KnownMsgs[$B000 + $0410] := 'CM_ENTERMENULOOP';
  KnownMsgs[$B000 + $0411] := 'CM_ITEMDROPPOINT';
  KnownMsgs[$BC00] := 'CN_BASE';
  KnownMsgs[$BC00 + WM_CHARTOITEM] := 'CN_CHARTOITEM';
  KnownMsgs[$BC00 + WM_COMMAND] := 'CN_COMMAND';
  KnownMsgs[$BC00 + WM_COMPAREITEM] := 'CN_COMPAREITEM';
  KnownMsgs[$BC00 + WM_CTLCOLORBTN] := 'CN_CTLCOLORBTN';
  KnownMsgs[$BC00 + WM_CTLCOLORDLG] := 'CN_CTLCOLORDLG';
  KnownMsgs[$BC00 + WM_CTLCOLOREDIT] := 'CN_CTLCOLOREDIT';
  KnownMsgs[$BC00 + WM_CTLCOLORLISTBOX] := 'CN_CTLCOLORLISTBOX';
  KnownMsgs[$BC00 + WM_CTLCOLORMSGBOX] := 'CN_CTLCOLORMSGBOX';
  KnownMsgs[$BC00 + WM_CTLCOLORSCROLLBAR] := 'CN_CTLCOLORSCROLLBAR';
  KnownMsgs[$BC00 + WM_CTLCOLORSTATIC] := 'CN_CTLCOLORSTATIC';
  KnownMsgs[$BC00 + WM_DELETEITEM] := 'CN_DELETEITEM';
  KnownMsgs[$BC00 + WM_DRAWITEM] := 'CN_DRAWITEM';
  KnownMsgs[$BC00 + WM_HSCROLL] := 'CN_HSCROLL';
  KnownMsgs[$BC00 + WM_MEASUREITEM] := 'CN_MEASUREITEM';
  KnownMsgs[$BC00 + WM_PARENTNOTIFY] := 'CN_PARENTNOTIFY';
  KnownMsgs[$BC00 + WM_VKEYTOITEM] := 'CN_VKEYTOITEM';
  KnownMsgs[$BC00 + WM_VSCROLL] := 'CN_VSCROLL';
  KnownMsgs[$BC00 + WM_KEYDOWN] := 'CN_KEYDOWN';
  KnownMsgs[$BC00 + WM_KEYUP] := 'CN_KEYUP';
  KnownMsgs[$BC00 + WM_CHAR] := 'CN_CHAR';
  KnownMsgs[$BC00 + WM_SYSKEYDOWN] := 'CN_SYSKEYDOWN';
  KnownMsgs[$BC00 + WM_SYSCHAR] := 'CN_SYSCHAR';
  KnownMsgs[$BC00 + WM_NOTIFY] := 'CN_NOTIFY';
  KnownMsgs[$BC00 + WM_CONTEXTMENU] := 'CN_CONTEXTMENU';
  KnownMsgs[$0000] := 'WM_NULL';
  KnownMsgs[$0001] := 'WM_CREATE';
  KnownMsgs[$0002] := 'WM_DESTROY';
  KnownMsgs[$0003] := 'WM_MOVE';
  KnownMsgs[$0005] := 'WM_SIZE';
  KnownMsgs[$0006] := 'WM_ACTIVATE';
  KnownMsgs[$0007] := 'WM_SETFOCUS';
  KnownMsgs[$0008] := 'WM_KILLFOCUS';
  KnownMsgs[$000A] := 'WM_ENABLE';
  KnownMsgs[$000B] := 'WM_SETREDRAW';
  KnownMsgs[$000C] := 'WM_SETTEXT';
  KnownMsgs[$000D] := 'WM_GETTEXT';
  KnownMsgs[$000E] := 'WM_GETTEXTLENGTH';
  KnownMsgs[$000F] := 'WM_PAINT';
  KnownMsgs[$0010] := 'WM_CLOSE';
  KnownMsgs[$0011] := 'WM_QUERYENDSESSION';
  KnownMsgs[$0013] := 'WM_QUERYOPEN';
  KnownMsgs[$0016] := 'WM_ENDSESSION';
  KnownMsgs[$0012] := 'WM_QUIT';
  KnownMsgs[$0014] := 'WM_ERASEBKGND';
  KnownMsgs[$0015] := 'WM_SYSCOLORCHANGE';
  KnownMsgs[$0018] := 'WM_SHOWWINDOW';
  KnownMsgs[$001A] := 'WM_WININICHANGE';
  KnownMsgs[$001B] := 'WM_DEVMODECHANGE';
  KnownMsgs[$001C] := 'WM_ACTIVATEAPP';
  KnownMsgs[$001D] := 'WM_FONTCHANGE';
  KnownMsgs[$001E] := 'WM_TIMECHANGE';
  KnownMsgs[$001F] := 'WM_CANCELMODE';
  KnownMsgs[$0020] := 'WM_SETCURSOR';
  KnownMsgs[$0021] := 'WM_MOUSEACTIVATE';
  KnownMsgs[$0022] := 'WM_CHILDACTIVATE';
  KnownMsgs[$0023] := 'WM_QUEUESYNC';
  KnownMsgs[$0024] := 'WM_GETMINMAXINFO';
  KnownMsgs[$0026] := 'WM_PAINTICON';
  KnownMsgs[$0027] := 'WM_ICONERASEBKGND';
  KnownMsgs[$0028] := 'WM_NEXTDLGCTL';
  KnownMsgs[$002A] := 'WM_SPOOLERSTATUS';
  KnownMsgs[$002B] := 'WM_DRAWITEM';
  KnownMsgs[$002C] := 'WM_MEASUREITEM';
  KnownMsgs[$002D] := 'WM_DELETEITEM';
  KnownMsgs[$002E] := 'WM_VKEYTOITEM';
  KnownMsgs[$002F] := 'WM_CHARTOITEM';
  KnownMsgs[$0030] := 'WM_SETFONT';
  KnownMsgs[$0031] := 'WM_GETFONT';
  KnownMsgs[$0032] := 'WM_SETHOTKEY';
  KnownMsgs[$0033] := 'WM_GETHOTKEY';
  KnownMsgs[$0037] := 'WM_QUERYDRAGICON';
  KnownMsgs[$0039] := 'WM_COMPAREITEM';
  KnownMsgs[$003D] := 'WM_GETOBJECT';
  KnownMsgs[$0041] := 'WM_COMPACTING';
  KnownMsgs[$0044] := 'WM_COMMNOTIFY';
  KnownMsgs[$0046] := 'WM_WINDOWPOSCHANGING';
  KnownMsgs[$0047] := 'WM_WINDOWPOSCHANGED';
  KnownMsgs[$0048] := 'WM_POWER';
  KnownMsgs[$004A] := 'WM_COPYDATA';
  KnownMsgs[$004B] := 'WM_CANCELJOURNAL';
  KnownMsgs[$004E] := 'WM_NOTIFY';
  KnownMsgs[$0050] := 'WM_INPUTLANGCHANGEREQUEST';
  KnownMsgs[$0051] := 'WM_INPUTLANGCHANGE';
  KnownMsgs[$0052] := 'WM_TCARD';
  KnownMsgs[$0053] := 'WM_HELP';
  KnownMsgs[$0054] := 'WM_USERCHANGED';
  KnownMsgs[$0055] := 'WM_NOTIFYFORMAT';
  KnownMsgs[$007B] := 'WM_CONTEXTMENU';
  KnownMsgs[$007C] := 'WM_STYLECHANGING';
  KnownMsgs[$007D] := 'WM_STYLECHANGED';
  KnownMsgs[$007E] := 'WM_DISPLAYCHANGE';
  KnownMsgs[$007F] := 'WM_GETICON';
  KnownMsgs[$0080] := 'WM_SETICON';
  KnownMsgs[$0081] := 'WM_NCCREATE';
  KnownMsgs[$0082] := 'WM_NCDESTROY';
  KnownMsgs[$0083] := 'WM_NCCALCSIZE';
  KnownMsgs[$0084] := 'WM_NCHITTEST';
  KnownMsgs[$0085] := 'WM_NCPAINT';
  KnownMsgs[$0086] := 'WM_NCACTIVATE';
  KnownMsgs[$0087] := 'WM_GETDLGCODE';
  KnownMsgs[$0088] := 'WM_SYNCPAINT';
  KnownMsgs[$00A0] := 'WM_NCMOUSEMOVE';
  KnownMsgs[$00A1] := 'WM_NCLBUTTONDOWN';
  KnownMsgs[$00A2] := 'WM_NCLBUTTONUP';
  KnownMsgs[$00A3] := 'WM_NCLBUTTONDBLCLK';
  KnownMsgs[$00A4] := 'WM_NCRBUTTONDOWN';
  KnownMsgs[$00A5] := 'WM_NCRBUTTONUP';
  KnownMsgs[$00A6] := 'WM_NCRBUTTONDBLCLK';
  KnownMsgs[$00A7] := 'WM_NCMBUTTONDOWN';
  KnownMsgs[$00A8] := 'WM_NCMBUTTONUP';
  KnownMsgs[$00A9] := 'WM_NCMBUTTONDBLCLK';
  KnownMsgs[$00AB] := 'WM_NCXBUTTONDOWN';
  KnownMsgs[$00AC] := 'WM_NCXBUTTONUP';
  KnownMsgs[$00AD] := 'WM_NCXBUTTONDBLCLK';
  KnownMsgs[$00B0] := 'EM_GETSEL';
  KnownMsgs[$00B1] := 'EM_SETSEL';
  KnownMsgs[$00B2] := 'EM_GETRECT';
  KnownMsgs[$00B3] := 'EM_SETRECT';
  KnownMsgs[$00B4] := 'EM_SETRECTNP';
  KnownMsgs[$00B5] := 'EM_SCROLL';
  KnownMsgs[$00B6] := 'EM_LINESCROLL';
  KnownMsgs[$00B7] := 'EM_SCROLLCARET';
  KnownMsgs[$00B8] := 'EM_GETMODIFY';
  KnownMsgs[$00B9] := 'EM_SETMODIFY';
  KnownMsgs[$00BA] := 'EM_GETLINECOUNT';
  KnownMsgs[$00BB] := 'EM_LINEINDEX';
  KnownMsgs[$00BC] := 'EM_SETHANDLE';
  KnownMsgs[$00BD] := 'EM_GETHANDLE';
  KnownMsgs[$00BE] := 'EM_GETTHUMB';
  KnownMsgs[$00C1] := 'EM_LINELENGTH';
  KnownMsgs[$00C2] := 'EM_REPLACESEL';
  KnownMsgs[$00C4] := 'EM_GETLINE';
  KnownMsgs[$00C5] := 'EM_LIMITTEXT';
  KnownMsgs[$00C6] := 'EM_CANUNDO';
  KnownMsgs[$00C7] := 'EM_UNDO';
  KnownMsgs[$00C8] := 'EM_FMTLINES';
  KnownMsgs[$00C9] := 'EM_LINEFROMCHAR';
  KnownMsgs[$00CB] := 'EM_SETTABSTOPS';
  KnownMsgs[$00CC] := 'EM_SETPASSWORDCHAR';
  KnownMsgs[$00CD] := 'EM_EMPTYUNDOBUFFER';
  KnownMsgs[$00CE] := 'EM_GETFIRSTVISIBLELINE';
  KnownMsgs[$00CF] := 'EM_SETREADONLY';
  KnownMsgs[$00D0] := 'EM_SETWORDBREAKPROC';
  KnownMsgs[$00D1] := 'EM_GETWORDBREAKPROC';
  KnownMsgs[$00D2] := 'EM_GETPASSWORDCHAR';
  KnownMsgs[$00D3] := 'EM_SETMARGINS';
  KnownMsgs[$00D4] := 'EM_GETMARGINS';
  KnownMsgs[$00D5] := 'EM_GETLIMITTEXT';
  KnownMsgs[$00D6] := 'EM_POSFROMCHAR';
  KnownMsgs[$00D7] := 'EM_CHARFROMPOS';
  KnownMsgs[$00D8] := 'EM_SETIMESTATUS';
  KnownMsgs[$00D9] := 'EM_GETIMESTATUS';
  KnownMsgs[$00F0] := 'BM_GETCHECK';
  KnownMsgs[$00F1] := 'BM_SETCHECK';
  KnownMsgs[$00F2] := 'BM_GETSTATE';
  KnownMsgs[$00F3] := 'BM_SETSTATE';
  KnownMsgs[$00F4] := 'BM_SETSTYLE';
  KnownMsgs[$00F5] := 'BM_CLICK';
  KnownMsgs[$00F6] := 'BM_GETIMAGE';
  KnownMsgs[$00F7] := 'BM_SETIMAGE';
  KnownMsgs[$00F8] := 'BM_SETDONTCLICK';
  KnownMsgs[$00FE] := 'WM_INPUT_DEVICE_CHANGE';
  KnownMsgs[$00FF] := 'WM_INPUT';
  KnownMsgs[$0100] := 'WM_KEYDOWN';
  KnownMsgs[$0101] := 'WM_KEYUP';
  KnownMsgs[$0102] := 'WM_CHAR';
  KnownMsgs[$0103] := 'WM_DEADCHAR';
  KnownMsgs[$0104] := 'WM_SYSKEYDOWN';
  KnownMsgs[$0105] := 'WM_SYSKEYUP';
  KnownMsgs[$0106] := 'WM_SYSCHAR';
  KnownMsgs[$0107] := 'WM_SYSDEADCHAR';
  KnownMsgs[$0109] := 'WM_UNICHAR';
  KnownMsgs[$0109] := 'WM_KEYLAST';
  KnownMsgs[$0108] := 'WM_KEYLAST';
  KnownMsgs[$010D] := 'WM_IME_STARTCOMPOSITION';
  KnownMsgs[$010E] := 'WM_IME_ENDCOMPOSITION';
  KnownMsgs[$010F] := 'WM_IME_COMPOSITION';
  KnownMsgs[$010F] := 'WM_IME_KEYLAST';
  KnownMsgs[$0110] := 'WM_INITDIALOG';
  KnownMsgs[$0111] := 'WM_COMMAND';
  KnownMsgs[$0112] := 'WM_SYSCOMMAND';
  KnownMsgs[$0113] := 'WM_TIMER';
  KnownMsgs[$0114] := 'WM_HSCROLL';
  KnownMsgs[$0115] := 'WM_VSCROLL';
  KnownMsgs[$0116] := 'WM_INITMENU';
  KnownMsgs[$0117] := 'WM_INITMENUPOPUP';
  KnownMsgs[$0118] := 'WM_SYSTIMER';
  KnownMsgs[$0119] := 'WM_GESTURE';
  KnownMsgs[$011A] := 'WM_GESTURENOTIFY';
  KnownMsgs[$011F] := 'WM_MENUSELECT';
  KnownMsgs[$0120] := 'WM_MENUCHAR';
  KnownMsgs[$0121] := 'WM_ENTERIDLE';
  KnownMsgs[$0122] := 'WM_MENURBUTTONUP';
  KnownMsgs[$0123] := 'WM_MENUDRAG';
  KnownMsgs[$0124] := 'WM_MENUGETOBJECT';
  KnownMsgs[$0125] := 'WM_UNINITMENUPOPUP';
  KnownMsgs[$0126] := 'WM_MENUCOMMAND';
  KnownMsgs[$0127] := 'WM_CHANGEUISTATE';
  KnownMsgs[$0128] := 'WM_UPDATEUISTATE';
  KnownMsgs[$0129] := 'WM_QUERYUISTATE';
  KnownMsgs[$0132] := 'WM_CTLCOLORMSGBOX';
  KnownMsgs[$0133] := 'WM_CTLCOLOREDIT';
  KnownMsgs[$0134] := 'WM_CTLCOLORLISTBOX';
  KnownMsgs[$0135] := 'WM_CTLCOLORBTN';
  KnownMsgs[$0136] := 'WM_CTLCOLORDLG';
  KnownMsgs[$0137] := 'WM_CTLCOLORSCROLLBAR';
  KnownMsgs[$0138] := 'WM_CTLCOLORSTATIC';

  KnownMsgs[$0200] := 'WM_MOUSEMOVE';
  KnownMsgs[$0201] := 'WM_LBUTTONDOWN';
  KnownMsgs[$0202] := 'WM_LBUTTONUP';
  KnownMsgs[$0203] := 'WM_LBUTTONDBLCLK';
  KnownMsgs[$0204] := 'WM_RBUTTONDOWN';
  KnownMsgs[$0205] := 'WM_RBUTTONUP';
  KnownMsgs[$0206] := 'WM_RBUTTONDBLCLK';
  KnownMsgs[$0207] := 'WM_MBUTTONDOWN';
  KnownMsgs[$0208] := 'WM_MBUTTONUP';
  KnownMsgs[$0209] := 'WM_MBUTTONDBLCLK';
  KnownMsgs[$020A] := 'WM_MOUSEWHEEL';
  KnownMsgs[$020B] := 'WM_XBUTTONDOWN';
  KnownMsgs[$020C] := 'WM_XBUTTONUP';
  KnownMsgs[$020D] := 'WM_XBUTTONDBLCLK';
  KnownMsgs[$020E] := 'WM_MOUSEHWHEEL';
  KnownMsgs[$020E] := 'WM_MOUSELAST';
  KnownMsgs[$020D] := 'WM_MOUSELAST';
  KnownMsgs[$020A] := 'WM_MOUSELAST';
  KnownMsgs[$0209] := 'WM_MOUSELAST';
  KnownMsgs[$0210] := 'WM_PARENTNOTIFY';
  KnownMsgs[$0211] := 'WM_ENTERMENULOOP';
  KnownMsgs[$0212] := 'WM_EXITMENULOOP';
  KnownMsgs[$0213] := 'WM_NEXTMENU';
  KnownMsgs[$0214] := 'WM_SIZING';
  KnownMsgs[$0215] := 'WM_CAPTURECHANGED';
  KnownMsgs[$0216] := 'WM_MOVING';
  KnownMsgs[$0218] := 'WM_POWERBROADCAST';
  KnownMsgs[$0219] := 'WM_DEVICECHANGE';
  KnownMsgs[$0220] := 'WM_MDICREATE';
  KnownMsgs[$0221] := 'WM_MDIDESTROY';
  KnownMsgs[$0222] := 'WM_MDIACTIVATE';
  KnownMsgs[$0223] := 'WM_MDIRESTORE';
  KnownMsgs[$0224] := 'WM_MDINEXT';
  KnownMsgs[$0225] := 'WM_MDIMAXIMIZE';
  KnownMsgs[$0226] := 'WM_MDITILE';
  KnownMsgs[$0227] := 'WM_MDICASCADE';
  KnownMsgs[$0228] := 'WM_MDIICONARRANGE';
  KnownMsgs[$0229] := 'WM_MDIGETACTIVE';
  KnownMsgs[$0230] := 'WM_MDISETMENU';
  KnownMsgs[$0231] := 'WM_ENTERSIZEMOVE';
  KnownMsgs[$0232] := 'WM_EXITSIZEMOVE';
  KnownMsgs[$0233] := 'WM_DROPFILES';
  KnownMsgs[$0234] := 'WM_MDIREFRESHMENU';
  KnownMsgs[$0281] := 'WM_IME_SETCONTEXT';
  KnownMsgs[$0282] := 'WM_IME_NOTIFY';
  KnownMsgs[$0283] := 'WM_IME_CONTROL';
  KnownMsgs[$0284] := 'WM_IME_COMPOSITIONFULL';
  KnownMsgs[$0285] := 'WM_IME_SELECT';
  KnownMsgs[$0286] := 'WM_IME_CHAR';
  KnownMsgs[$0288] := 'WM_IME_REQUEST';
  KnownMsgs[$0290] := 'WM_IME_KEYDOWN';
  KnownMsgs[$0291] := 'WM_IME_KEYUP';
  KnownMsgs[$02A1] := 'WM_MOUSEHOVER';
  KnownMsgs[$02A3] := 'WM_MOUSELEAVE';
  KnownMsgs[$02A0] := 'WM_NCMOUSEHOVER';
  KnownMsgs[$02A2] := 'WM_NCMOUSELEAVE';
  KnownMsgs[$02B1] := 'WM_WTSSESSION_CHANGE';
  KnownMsgs[$02C0] := 'WM_TABLET_FIRST';
  KnownMsgs[$02DF] := 'WM_TABLET_LAST';
  KnownMsgs[$02E0] := 'WM_DPICHANGED';
  KnownMsgs[$0300] := 'WM_CUT';
  KnownMsgs[$0301] := 'WM_COPY';
  KnownMsgs[$0302] := 'WM_PASTE';
  KnownMsgs[$0303] := 'WM_CLEAR';
  KnownMsgs[$0304] := 'WM_UNDO';
  KnownMsgs[$0305] := 'WM_RENDERFORMAT';
  KnownMsgs[$0306] := 'WM_RENDERALLFORMATS';
  KnownMsgs[$0307] := 'WM_DESTROYCLIPBOARD';
  KnownMsgs[$0308] := 'WM_DRAWCLIPBOARD';
  KnownMsgs[$0309] := 'WM_PAINTCLIPBOARD';
  KnownMsgs[$030A] := 'WM_VSCROLLCLIPBOARD';
  KnownMsgs[$030B] := 'WM_SIZECLIPBOARD';
  KnownMsgs[$030C] := 'WM_ASKCBFORMATNAME';
  KnownMsgs[$030D] := 'WM_CHANGECBCHAIN';
  KnownMsgs[$030E] := 'WM_HSCROLLCLIPBOARD';
  KnownMsgs[$030F] := 'WM_QUERYNEWPALETTE';
  KnownMsgs[$0310] := 'WM_PALETTEISCHANGING';
  KnownMsgs[$0311] := 'WM_PALETTECHANGED';
  KnownMsgs[$0312] := 'WM_HOTKEY';
  KnownMsgs[$0317] := 'WM_PRINT';
  KnownMsgs[$0318] := 'WM_PRINTCLIENT';
  KnownMsgs[$0319] := 'WM_APPCOMMAND';
  KnownMsgs[$031A] := 'WM_THEMECHANGED';
  KnownMsgs[$031D] := 'WM_CLIPBOARDUPDATE';
  KnownMsgs[$031E] := 'WM_DWMCOMPOSITIONCHANGED';
  KnownMsgs[$031F] := 'WM_DWMNCRENDERINGCHANGED';
  KnownMsgs[$0320] := 'WM_DWMCOLORIZATIONCOLORCHANGED';
  KnownMsgs[$0321] := 'WM_DWMWINDOWMAXIMIZEDCHANGE';
  KnownMsgs[$033F] := 'WM_GETTITLEBARINFOEX';
  KnownMsgs[$0358] := 'WM_HANDHELDFIRST';
  KnownMsgs[$035F] := 'WM_HANDHELDLAST';
  KnownMsgs[$0360] := 'WM_AFXFIRST';
  KnownMsgs[$037F] := 'WM_AFXLAST';
  KnownMsgs[$0380] := 'WM_PENWINFIRST';
  KnownMsgs[$038F] := 'WM_PENWINLAST';
  KnownMsgs[$1000] := 'LVM_FIRST';
  KnownMsgs[(LVM_FIRST + 0)] := 'LVM_GETBKCOLOR';
  KnownMsgs[(LVM_FIRST + 1)] := 'LVM_SETBKCOLOR';
  KnownMsgs[(LVM_FIRST + 2)] := 'LVM_GETIMAGELIST';
  KnownMsgs[(LVM_FIRST + 3)] := 'LVM_SETIMAGELIST';
  KnownMsgs[(LVM_FIRST + 4)] := 'LVM_GETITEMCOUNT';
  KnownMsgs[(LVM_FIRST + 5)] := 'LVM_GETITEMA';
  KnownMsgs[(LVM_FIRST + 75)] := 'LVM_GETITEMW';
  KnownMsgs[(LVM_FIRST + 6)] := 'LVM_SETITEMA';
  KnownMsgs[(LVM_FIRST + 76)] := 'LVM_SETITEMW';
  KnownMsgs[(LVM_FIRST + 7)] := 'LVM_INSERTITEMA';
  KnownMsgs[(LVM_FIRST + 77)] := 'LVM_INSERTITEMW';
  KnownMsgs[(LVM_FIRST + 8)] := 'LVM_DELETEITEM';
  KnownMsgs[(LVM_FIRST + 9)] := 'LVM_DELETEALLITEMS';
  KnownMsgs[(LVM_FIRST + 10)] := 'LVM_GETCALLBACKMASK';
  KnownMsgs[(LVM_FIRST + 11)] := 'LVM_SETCALLBACKMASK';
  KnownMsgs[(LVM_FIRST + 12)] := 'LVM_GETNEXTITEM';
  KnownMsgs[(LVM_FIRST + 13)] := 'LVM_FINDITEMA';
  KnownMsgs[(LVM_FIRST + 83)] := 'LVM_FINDITEMW';
  KnownMsgs[(LVM_FIRST + 14)] := 'LVM_GETITEMRECT';
  KnownMsgs[(LVM_FIRST + 15)] := 'LVM_SETITEMPOSITION';
  KnownMsgs[(LVM_FIRST + 16)] := 'LVM_GETITEMPOSITION';
  KnownMsgs[(LVM_FIRST + 17)] := 'LVM_GETSTRINGWIDTHA';
  KnownMsgs[(LVM_FIRST + 87)] := 'LVM_GETSTRINGWIDTHW';
  KnownMsgs[(LVM_FIRST + 18)] := 'LVM_HITTEST';
  KnownMsgs[(LVM_FIRST + 19)] := 'LVM_ENSUREVISIBLE';
  KnownMsgs[(LVM_FIRST + 20)] := 'LVM_SCROLL';
  KnownMsgs[(LVM_FIRST + 21)] := 'LVM_REDRAWITEMS';
  KnownMsgs[(LVM_FIRST + 22)] := 'LVM_ARRANGE';
  KnownMsgs[(LVM_FIRST + 23)] := 'LVM_EDITLABELA';
  KnownMsgs[(LVM_FIRST + 118)] := 'LVM_EDITLABELW';
  KnownMsgs[(LVM_FIRST + 24)] := 'LVM_GETEDITCONTROL';
  KnownMsgs[(LVM_FIRST + 25)] := 'LVM_GETCOLUMNA';
  KnownMsgs[(LVM_FIRST + 95)] := 'LVM_GETCOLUMNW';
  KnownMsgs[(LVM_FIRST + 26)] := 'LVM_SETCOLUMNA';
  KnownMsgs[(LVM_FIRST + 96)] := 'LVM_SETCOLUMNW';
  KnownMsgs[(LVM_FIRST + 27)] := 'LVM_INSERTCOLUMNA';
  KnownMsgs[(LVM_FIRST + 97)] := 'LVM_INSERTCOLUMNW';
  KnownMsgs[(LVM_FIRST + 28)] := 'LVM_DELETECOLUMN';
  KnownMsgs[(LVM_FIRST + 29)] := 'LVM_GETCOLUMNWIDTH';
  KnownMsgs[(LVM_FIRST + 30)] := 'LVM_SETCOLUMNWIDTH';
  KnownMsgs[(LVM_FIRST + 31)] := 'LVM_GETHEADER';
  KnownMsgs[(LVM_FIRST + 33)] := 'LVM_CREATEDRAGIMAGE';
  KnownMsgs[(LVM_FIRST + 34)] := 'LVM_GETVIEWRECT';
  KnownMsgs[(LVM_FIRST + 35)] := 'LVM_GETTEXTCOLOR';
  KnownMsgs[(LVM_FIRST + 36)] := 'LVM_SETTEXTCOLOR';
  KnownMsgs[(LVM_FIRST + 37)] := 'LVM_GETTEXTBKCOLOR';
  KnownMsgs[(LVM_FIRST + 38)] := 'LVM_SETTEXTBKCOLOR';
  KnownMsgs[(LVM_FIRST + 39)] := 'LVM_GETTOPINDEX';
  KnownMsgs[(LVM_FIRST + 40)] := 'LVM_GETCOUNTPERPAGE';
  KnownMsgs[(LVM_FIRST + 41)] := 'LVM_GETORIGIN';
  KnownMsgs[(LVM_FIRST + 42)] := 'LVM_UPDATE';
  KnownMsgs[(LVM_FIRST + 43)] := 'LVM_SETITEMSTATE';
  KnownMsgs[(LVM_FIRST + 44)] := 'LVM_GETITEMSTATE';
  KnownMsgs[(LVM_FIRST + 45)] := 'LVM_GETITEMTEXTA';
  KnownMsgs[(LVM_FIRST + 115)] := 'LVM_GETITEMTEXTW';
  KnownMsgs[(LVM_FIRST + 46)] := 'LVM_SETITEMTEXTA';
  KnownMsgs[(LVM_FIRST + 116)] := 'LVM_SETITEMTEXTW';
  KnownMsgs[(LVM_FIRST + 47)] := 'LVM_SETITEMCOUNT';
  KnownMsgs[(LVM_FIRST + 48)] := 'LVM_SORTITEMS';
  KnownMsgs[(LVM_FIRST + 49)] := 'LVM_SETITEMPOSITION32';
  KnownMsgs[(LVM_FIRST + 50)] := 'LVM_GETSELECTEDCOUNT';
  KnownMsgs[(LVM_FIRST + 51)] := 'LVM_GETITEMSPACING';
  KnownMsgs[(LVM_FIRST + 52)] := 'LVM_GETISEARCHSTRINGA';
  KnownMsgs[(LVM_FIRST + 117)] := 'LVM_GETISEARCHSTRINGW';
  KnownMsgs[(LVM_FIRST + 53)] := 'LVM_SETICONSPACING';
  KnownMsgs[(LVM_FIRST + 54)] := 'LVM_SETEXTENDEDLISTVIEWSTYLE';
  KnownMsgs[(LVM_FIRST + 55)] := 'LVM_GETEXTENDEDLISTVIEWSTYLE';
  KnownMsgs[(LVM_FIRST + 56)] := 'LVM_GETSUBITEMRECT';
  KnownMsgs[(LVM_FIRST + 57)] := 'LVM_SUBITEMHITTEST';
  KnownMsgs[(LVM_FIRST + 58)] := 'LVM_SETCOLUMNORDERARRAY';
  KnownMsgs[(LVM_FIRST + 59)] := 'LVM_GETCOLUMNORDERARRAY';
  KnownMsgs[(LVM_FIRST + 60)] := 'LVM_SETHOTITEM';
  KnownMsgs[(LVM_FIRST + 61)] := 'LVM_GETHOTITEM';
  KnownMsgs[(LVM_FIRST + 62)] := 'LVM_SETHOTCURSOR';
  KnownMsgs[(LVM_FIRST + 63)] := 'LVM_GETHOTCURSOR';
  KnownMsgs[(LVM_FIRST + 64)] := 'LVM_APPROXIMATEVIEWRECT';
  KnownMsgs[(LVM_FIRST + 65)] := 'LVM_SETWORKAREAS';
  KnownMsgs[(LVM_FIRST + 70)] := 'LVM_GETWORKAREAS';
  KnownMsgs[(LVM_FIRST + 73)] := 'LVM_GETNUMBEROFWORKAREAS';
  KnownMsgs[(LVM_FIRST + 66)] := 'LVM_GETSELECTIONMARK';
  KnownMsgs[(LVM_FIRST + 67)] := 'LVM_SETSELECTIONMARK';
  KnownMsgs[(LVM_FIRST + 71)] := 'LVM_SETHOVERTIME';
  KnownMsgs[(LVM_FIRST + 72)] := 'LVM_GETHOVERTIME';
  KnownMsgs[(LVM_FIRST + 74)] := 'LVM_SETTOOLTIPS';
  KnownMsgs[(LVM_FIRST + 78)] := 'LVM_GETTOOLTIPS';
  KnownMsgs[(LVM_FIRST + 81)] := 'LVM_SORTITEMSEX';
  KnownMsgs[(LVM_FIRST + 68)] := 'LVM_SETBKIMAGEA';
  KnownMsgs[(LVM_FIRST + 138)] := 'LVM_SETBKIMAGEW';
  KnownMsgs[(LVM_FIRST + 69)] := 'LVM_GETBKIMAGEA';
  KnownMsgs[(LVM_FIRST + 139)] := 'LVM_GETBKIMAGEW';
  KnownMsgs[(LVM_FIRST + 140)] := 'LVM_SETSELECTEDCOLUMN';
  KnownMsgs[(LVM_FIRST + 142)] := 'LVM_SETVIEW';
  KnownMsgs[(LVM_FIRST + 143)] := 'LVM_GETVIEW';
  KnownMsgs[(LVM_FIRST + 145)] := 'LVM_INSERTGROUP';
  KnownMsgs[(LVM_FIRST + 147)] := 'LVM_SETGROUPINFO';
  KnownMsgs[(LVM_FIRST + 149)] := 'LVM_GETGROUPINFO';
  KnownMsgs[(LVM_FIRST + 150)] := 'LVM_REMOVEGROUP';
  KnownMsgs[(LVM_FIRST + 151)] := 'LVM_MOVEGROUP';
  KnownMsgs[(LVM_FIRST + 152)] := 'LVM_GETGROUPCOUNT';
  KnownMsgs[(LVM_FIRST + 153)] := 'LVM_GETGROUPINFOBYINDEX';
  KnownMsgs[(LVM_FIRST + 154)] := 'LVM_MOVEITEMTOGROUP';
  KnownMsgs[(LVM_FIRST + 98)] := 'LVM_GETGROUPRECT';
  KnownMsgs[(LVM_FIRST + 155)] := 'LVM_SETGROUPMETRICS';
  KnownMsgs[(LVM_FIRST + 156)] := 'LVM_GETGROUPMETRICS';
  KnownMsgs[(LVM_FIRST + 157)] := 'LVM_ENABLEGROUPVIEW';
  KnownMsgs[(LVM_FIRST + 158)] := 'LVM_SORTGROUPS';
  KnownMsgs[(LVM_FIRST + 159)] := 'LVM_INSERTGROUPSORTED';
  KnownMsgs[(LVM_FIRST + 160)] := 'LVM_REMOVEALLGROUPS';
  KnownMsgs[(LVM_FIRST + 161)] := 'LVM_HASGROUP';
  KnownMsgs[(LVM_FIRST + 92)] := 'LVM_GETGROUPSTATE';
  KnownMsgs[(LVM_FIRST + 93)] := 'LVM_GETFOCUSEDGROUP';
  KnownMsgs[(LVM_FIRST + 162)] := 'LVM_SETTILEVIEWINFO';
  KnownMsgs[(LVM_FIRST + 163)] := 'LVM_GETTILEVIEWINFO';
  KnownMsgs[(LVM_FIRST + 164)] := 'LVM_SETTILEINFO';
  KnownMsgs[(LVM_FIRST + 165)] := 'LVM_GETTILEINFO';
  KnownMsgs[(LVM_FIRST + 166)] := 'LVM_SETINSERTMARK';
  KnownMsgs[(LVM_FIRST + 167)] := 'LVM_GETINSERTMARK';
  KnownMsgs[(LVM_FIRST + 168)] := 'LVM_INSERTMARKHITTEST';
  KnownMsgs[(LVM_FIRST + 169)] := 'LVM_GETINSERTMARKRECT';
  KnownMsgs[(LVM_FIRST + 170)] := 'LVM_SETINSERTMARKCOLOR';
  KnownMsgs[(LVM_FIRST + 171)] := 'LVM_GETINSERTMARKCOLOR';
  KnownMsgs[(LVM_FIRST + 173)] := 'LVM_SETINFOTIP';
  KnownMsgs[(LVM_FIRST + 174)] := 'LVM_GETSELECTEDCOLUMN';
  KnownMsgs[(LVM_FIRST + 175)] := 'LVM_ISGROUPVIEWENABLED';
  KnownMsgs[(LVM_FIRST + 176)] := 'LVM_GETOUTLINECOLOR';
  KnownMsgs[(LVM_FIRST + 177)] := 'LVM_SETOUTLINECOLOR';
  KnownMsgs[(LVM_FIRST + 179)] := 'LVM_CANCELEDITLABEL';
  KnownMsgs[(LVM_FIRST + 180)] := 'LVM_MAPINDEXTOID';
  KnownMsgs[(LVM_FIRST + 181)] := 'LVM_MAPIDTOINDEX';
  KnownMsgs[(LVM_FIRST + 182)] := 'LVM_ISITEMVISIBLE';
  KnownMsgs[(LVM_FIRST + 204)] := 'LVM_GETEMPTYTEXT';
  KnownMsgs[(LVM_FIRST + 205)] := 'LVM_GETFOOTERRECT';
  KnownMsgs[(LVM_FIRST + 206)] := 'LVM_GETFOOTERINFO';
  KnownMsgs[(LVM_FIRST + 207)] := 'LVM_GETFOOTERITEMRECT';
  KnownMsgs[(LVM_FIRST + 208)] := 'LVM_GETFOOTERITEM';
  KnownMsgs[(LVM_FIRST + 209)] := 'LVM_GETITEMINDEXRECT';
  KnownMsgs[(LVM_FIRST + 210)] := 'LVM_SETITEMINDEXSTATE';
  KnownMsgs[(LVM_FIRST + 211)] := 'LVM_GETNEXTITEMINDEX';

  KnownMsgs[(TV_FIRST + 0)] := 'TVM_INSERTITEMA';
  KnownMsgs[(TV_FIRST + 50)] := 'TVM_INSERTITEMW';
  KnownMsgs[(TV_FIRST + 1)] := 'TVM_DELETEITEM';
  KnownMsgs[(TV_FIRST + 2)] := 'TVM_EXPAND';
  KnownMsgs[(TV_FIRST + 4)] := 'TVM_GETITEMRECT';
  KnownMsgs[(TV_FIRST + 5)] := 'TVM_GETCOUNT';
  KnownMsgs[(TV_FIRST + 6)] := 'TVM_GETINDENT';
  KnownMsgs[(TV_FIRST + 7)] := 'TVM_SETINDENT';
  KnownMsgs[(TV_FIRST + 8)] := 'TVM_GETIMAGELIST';
  KnownMsgs[(TV_FIRST + 9)] := 'TVM_SETIMAGELIST';
  KnownMsgs[(TV_FIRST + 10)] := 'TVM_GETNEXTITEM';
  KnownMsgs[(TV_FIRST + 11)] := 'TVM_SELECTITEM';
  KnownMsgs[(TV_FIRST + 12)] := 'TVM_GETITEMA';
  KnownMsgs[(TV_FIRST + 62)] := 'TVM_GETITEMW';
  KnownMsgs[(TV_FIRST + 13)] := 'TVM_SETITEMA';
  KnownMsgs[(TV_FIRST + 63)] := 'TVM_SETITEMW';
  KnownMsgs[(TV_FIRST + 14)] := 'TVM_EDITLABELA';
  KnownMsgs[(TV_FIRST + 65)] := 'TVM_EDITLABELW';
  KnownMsgs[(TV_FIRST + 15)] := 'TVM_GETEDITCONTROL';
  KnownMsgs[(TV_FIRST + 16)] := 'TVM_GETVISIBLECOUNT';
  KnownMsgs[(TV_FIRST + 17)] := 'TVM_HITTEST';
  KnownMsgs[(TV_FIRST + 18)] := 'TVM_CREATEDRAGIMAGE';
  KnownMsgs[(TV_FIRST + 19)] := 'TVM_SORTCHILDREN';
  KnownMsgs[(TV_FIRST + 20)] := 'TVM_ENSUREVISIBLE';
  KnownMsgs[(TV_FIRST + 21)] := 'TVM_SORTCHILDRENCB';
  KnownMsgs[(TV_FIRST + 22)] := 'TVM_ENDEDITLABELNOW';
  KnownMsgs[(TV_FIRST + 23)] := 'TVM_GETISEARCHSTRINGA';
  KnownMsgs[(TV_FIRST + 64)] := 'TVM_GETISEARCHSTRINGW';
  KnownMsgs[(TV_FIRST + 24)] := 'TVM_SETTOOLTIPS';
  KnownMsgs[(TV_FIRST + 25)] := 'TVM_GETTOOLTIPS';
  KnownMsgs[(TV_FIRST + 26)] := 'TVM_SETINSERTMARK';
  KnownMsgs[(TV_FIRST + 27)] := 'TVM_SETITEMHEIGHT';
  KnownMsgs[(TV_FIRST + 28)] := 'TVM_GETITEMHEIGHT';
  KnownMsgs[(TV_FIRST + 29)] := 'TVM_SETBKCOLOR';
  KnownMsgs[(TV_FIRST + 30)] := 'TVM_SETTEXTCOLOR';
  KnownMsgs[(TV_FIRST + 31)] := 'TVM_GETBKCOLOR';
  KnownMsgs[(TV_FIRST + 32)] := 'TVM_GETTEXTCOLOR';
  KnownMsgs[(TV_FIRST + 33)] := 'TVM_SETSCROLLTIME';
  KnownMsgs[(TV_FIRST + 34)] := 'TVM_GETSCROLLTIME';
  KnownMsgs[(TV_FIRST + 37)] := 'TVM_SETINSERTMARKCOLOR';
  KnownMsgs[(TV_FIRST + 38)] := 'TVM_GETINSERTMARKCOLOR';
  KnownMsgs[(TV_FIRST + 39)] := 'TVM_GETITEMSTATE';
  KnownMsgs[(TV_FIRST + 40)] := 'TVM_SETLINECOLOR';
  KnownMsgs[(TV_FIRST + 41)] := 'TVM_GETLINECOLOR';
  KnownMsgs[(TV_FIRST + 42)] := 'TVM_MAPACCIDTOHTREEITEM';
  KnownMsgs[(TV_FIRST + 43)] := 'TVM_MAPHTREEITEMTOACCID';
  KnownMsgs[(TV_FIRST + 44)] := 'TVM_SETEXTENDEDSTYLE';
  KnownMsgs[(TV_FIRST + 45)] := 'TVM_GETEXTENDEDSTYLE';
  KnownMsgs[(TV_FIRST + 59)] := 'TVM_SETAUTOSCROLLINFO';
  KnownMsgs[(TV_FIRST + 70)] := 'TVM_GETSELECTEDCOUNT';
  KnownMsgs[(TV_FIRST + 71)] := 'TVM_SHOWINFOTIP';
  KnownMsgs[(TV_FIRST + 72)] := 'TVM_GETITEMPARTRECT';

  KnownMsgs[$1200] := 'HDM_FIRST';
  KnownMsgs[(HDM_FIRST + 0)] := 'HDM_GETITEMCOUNT';
  KnownMsgs[(HDM_FIRST + 1)] := 'HDM_INSERTITEMA';
  KnownMsgs[(HDM_FIRST + 10)] := 'HDM_INSERTITEMW';
  KnownMsgs[(HDM_FIRST + 2)] := 'HDM_DELETEITEM';
  KnownMsgs[(HDM_FIRST + 3)] := 'HDM_GETITEMA';
  KnownMsgs[(HDM_FIRST + 11)] := 'HDM_GETITEMW';
  KnownMsgs[(HDM_FIRST + 4)] := 'HDM_SETITEMA';
  KnownMsgs[(HDM_FIRST + 12)] := 'HDM_SETITEMW';
  KnownMsgs[(HDM_FIRST + 5)] := 'HDM_LAYOUT';
  KnownMsgs[(HDM_FIRST + 6)] := 'HDM_HITTEST';
  KnownMsgs[(HDM_FIRST + 7)] := 'HDM_GETITEMRECT';
  KnownMsgs[(HDM_FIRST + 8)] := 'HDM_SETIMAGELIST';
  KnownMsgs[(HDM_FIRST + 9)] := 'HDM_GETIMAGELIST';
  KnownMsgs[(HDM_FIRST + 15)] := 'HDM_ORDERTOINDEX';
  KnownMsgs[(HDM_FIRST + 16)] := 'HDM_CREATEDRAGIMAGE';
  KnownMsgs[(HDM_FIRST + 17)] := 'HDM_GETORDERARRAY';
  KnownMsgs[(HDM_FIRST + 18)] := 'HDM_SETORDERARRAY';
  KnownMsgs[(HDM_FIRST + 19)] := 'HDM_SETHOTDIVIDER';
  KnownMsgs[(HDM_FIRST + 20)] := 'HDM_SETBITMAPMARGIN';
  KnownMsgs[(HDM_FIRST + 21)] := 'HDM_GETBITMAPMARGIN';
  KnownMsgs[(HDM_FIRST + 22)] := 'HDM_SETFILTERCHANGETIMEOUT';
  KnownMsgs[(HDM_FIRST + 23)] := 'HDM_EDITFILTER';
  KnownMsgs[(HDM_FIRST + 24)] := 'HDM_CLEARFILTER';
  KnownMsgs[(HDM_FIRST + 25)] := 'HDM_GETITEMDROPDOWNRECT';
  KnownMsgs[(HDM_FIRST + 26)] := 'HDM_GETOVERFLOWRECT';
  KnownMsgs[(HDM_FIRST + 27)] := 'HDM_GETFOCUSEDITEM';
  KnownMsgs[(HDM_FIRST + 28)] := 'HDM_SETFOCUSEDITEM';

  KnownMsgs[$1300] := 'TCM_FIRST';
  KnownMsgs[(TCM_FIRST + 2)] := 'TCM_GETIMAGELIST';
  KnownMsgs[(TCM_FIRST + 3)] := 'TCM_SETIMAGELIST';
  KnownMsgs[(TCM_FIRST + 4)] := 'TCM_GETITEMCOUNT';
  KnownMsgs[(TCM_FIRST + 5)] := 'TCM_GETITEMA';
  KnownMsgs[(TCM_FIRST + 60)] := 'TCM_GETITEMW';
  KnownMsgs[(TCM_FIRST + 6)] := 'TCM_SETITEMA';
  KnownMsgs[(TCM_FIRST + 61)] := 'TCM_SETITEMW';
  KnownMsgs[(TCM_FIRST + 7)] := 'TCM_INSERTITEMA';
  KnownMsgs[(TCM_FIRST + 62)] := 'TCM_INSERTITEMW';
  KnownMsgs[(TCM_FIRST + 8)] := 'TCM_DELETEITEM';
  KnownMsgs[(TCM_FIRST + 9)] := 'TCM_DELETEALLITEMS';
  KnownMsgs[(TCM_FIRST + 10)] := 'TCM_GETITEMRECT';
  KnownMsgs[(TCM_FIRST + 11)] := 'TCM_GETCURSEL';
  KnownMsgs[(TCM_FIRST + 12)] := 'TCM_SETCURSEL';
  KnownMsgs[(TCM_FIRST + 13)] := 'TCM_HITTEST';
  KnownMsgs[(TCM_FIRST + 14)] := 'TCM_SETITEMEXTRA';
  KnownMsgs[(TCM_FIRST + 40)] := 'TCM_ADJUSTRECT';
  KnownMsgs[(TCM_FIRST + 41)] := 'TCM_SETITEMSIZE';
  KnownMsgs[(TCM_FIRST + 42)] := 'TCM_REMOVEIMAGE';
  KnownMsgs[(TCM_FIRST + 43)] := 'TCM_SETPADDING';
  KnownMsgs[(TCM_FIRST + 44)] := 'TCM_GETROWCOUNT';
  KnownMsgs[(TCM_FIRST + 45)] := 'TCM_GETTOOLTIPS';
  KnownMsgs[(TCM_FIRST + 46)] := 'TCM_SETTOOLTIPS';
  KnownMsgs[(TCM_FIRST + 47)] := 'TCM_GETCURFOCUS';
  KnownMsgs[(TCM_FIRST + 48)] := 'TCM_SETCURFOCUS';
  KnownMsgs[(TCM_FIRST + 49)] := 'TCM_SETMINTABWIDTH';
  KnownMsgs[(TCM_FIRST + 50)] := 'TCM_DESELECTALL';
  KnownMsgs[(TCM_FIRST + 51)] := 'TCM_HIGHLIGHTITEM';
  KnownMsgs[(TCM_FIRST + 52)] := 'TCM_SETEXTENDEDSTYLE';
  KnownMsgs[(TCM_FIRST + 53)] := 'TCM_GETEXTENDEDSTYLE';

  KnownMsgs[$1400] := 'PGM_FIRST';
  KnownMsgs[(PGM_FIRST + 1)] := 'PGM_SETCHILD';
  KnownMsgs[(PGM_FIRST + 2)] := 'PGM_RECALCSIZE';
  KnownMsgs[(PGM_FIRST + 3)] := 'PGM_FORWARDMOUSE';
  KnownMsgs[(PGM_FIRST + 4)] := 'PGM_SETBKCOLOR';
  KnownMsgs[(PGM_FIRST + 5)] := 'PGM_GETBKCOLOR';
  KnownMsgs[(PGM_FIRST + 6)] := 'PGM_SETBORDER';
  KnownMsgs[(PGM_FIRST + 7)] := 'PGM_GETBORDER';
  KnownMsgs[(PGM_FIRST + 8)] := 'PGM_SETPOS';
  KnownMsgs[(PGM_FIRST + 9)] := 'PGM_GETPOS';
  KnownMsgs[(PGM_FIRST + 10)] := 'PGM_SETBUTTONSIZE';
  KnownMsgs[(PGM_FIRST + 11)] := 'PGM_GETBUTTONSIZE';
  KnownMsgs[(PGM_FIRST + 12)] := 'PGM_GETBUTTONSTATE';

  KnownMsgs[$1400] := 'ECM_FIRST';
  KnownMsgs[(ECM_FIRST + 1)] := 'EM_SETCUEBANNER';
  KnownMsgs[(ECM_FIRST + 2)] := 'EM_GETCUEBANNER';
  KnownMsgs[(ECM_FIRST + 3)] := 'EM_SHOWBALLOONTIP';
  KnownMsgs[(ECM_FIRST + 4)] := 'EM_HIDEBALLOONTIP';
  KnownMsgs[(ECM_FIRST + 5)] := 'EM_SETHILITE';
  KnownMsgs[(ECM_FIRST + 6)] := 'EM_GETHILITE';

  KnownMsgs[$1600] := 'BCM_FIRST';
  KnownMsgs[(BCM_FIRST + $0001)] := 'BCM_GETIDEALSIZE';
  KnownMsgs[(BCM_FIRST + $0002)] := 'BCM_SETIMAGELIST';
  KnownMsgs[(BCM_FIRST + $0003)] := 'BCM_GETIMAGELIST';
  KnownMsgs[(BCM_FIRST + $0004)] := 'BCM_SETTEXTMARGIN';
  KnownMsgs[(BCM_FIRST + $0005)] := 'BCM_GETTEXTMARGIN';
  KnownMsgs[(BCM_FIRST + $0006)] := 'BCM_SETDROPDOWNSTATE';
  KnownMsgs[(BCM_FIRST + $0007)] := 'BCM_SETSPLITINFO';
  KnownMsgs[(BCM_FIRST + $0008)] := 'BCM_GETSPLITINFO';
  KnownMsgs[(BCM_FIRST + $0009)] := 'BCM_SETNOTE';
  KnownMsgs[(BCM_FIRST + $000A)] := 'BCM_GETNOTE';
  KnownMsgs[(BCM_FIRST + $000B)] := 'BCM_GETNOTELENGTH';
  KnownMsgs[(BCM_FIRST + $000C)] := 'BCM_SETSHIELD';

  KnownMsgs[$1700] := 'CBM_FIRST';
  KnownMsgs[(CBM_FIRST + 1)] := 'CB_SETMINVISIBLE';
  KnownMsgs[(CBM_FIRST + 2)] := 'CB_GETMINVISIBLE';
  KnownMsgs[(CBM_FIRST + 3)] := 'CB_SETCUEBANNER';
  KnownMsgs[(CBM_FIRST + 4)] := 'CB_GETCUEBANNER';

  KnownMsgs[$2000] := 'CCM_FIRST';
  KnownMsgs[(CCM_FIRST + $200)] := 'CCM_LAST';
  KnownMsgs[(CCM_FIRST + 1)] := 'CCM_SETBKCOLOR';
  KnownMsgs[(CCM_FIRST + 2)] := 'CCM_SETCOLORSCHEME';
  KnownMsgs[(CCM_FIRST + 3)] := 'CCM_GETCOLORSCHEME';
  KnownMsgs[(CCM_FIRST + 4)] := 'CCM_GETDROPTARGET';
  KnownMsgs[(CCM_FIRST + 5)] := 'CCM_SETUNICODEFORMAT';
  KnownMsgs[(CCM_FIRST + 6)] := 'CCM_GETUNICODEFORMAT';
  KnownMsgs[(CCM_FIRST + $7)] := 'CCM_SETVERSION';
  KnownMsgs[(CCM_FIRST + $8)] := 'CCM_GETVERSION';
  KnownMsgs[(CCM_FIRST + $9)] := 'CCM_SETNOTIFYWINDOW';
  KnownMsgs[(CCM_FIRST + $B)] := 'CCM_SETWINDOWTHEME';
  KnownMsgs[(CCM_FIRST + $C)] := 'CCM_DPISCALE';

  KnownMsgs[$8000] := 'WM_APP';
  KnownMsgs[$0400] := 'WM_USER';
  KnownMsgs[$000C] := 'WM_HELP';
end;

function MessageName(const AMsgId: Cardinal): String;
begin
  if AMsgId > $FFFF then
    Result := 'WM_USER+0x' + IntToHex(AMsgId, 0)
  else
  begin
    if Length(KnownMsgs) = 0 then
      RegisterNames;
    Result := KnownMsgs[Word(AMsgId)];
    if Length(Result) = 0 then
    begin
      if AMsgId < WM_USER then
        Result := 'δ֪��Ϣ:' + IntToStr(AMsgId)
      else if AMsgId < WM_APP then
        Result := 'WM_USER+0x' + IntToHex(AMsgId - WM_USER, 0)
      else if AMsgId < CM_BASE then
        Result := 'WM_APP+0x' + IntToHex(AMsgId - WM_APP, 0)
      else if AMsgId < CN_BASE then
        Result := 'CM_BASE+0x' + IntToHex(AMsgId - CM_BASE, 0)
      else
      begin
        if (AMsgId >= $0C000) and (AMsgId <= $FFFF) then
        begin
          SetLength(Result, MAX_PATH);
          SetLength(Result, GetAtomNameW(AMsgId, PWideChar(Result), MAX_PATH));
          if Length(Result) > 0 then
            Exit;
        end;
        Result := 'CN_BASE+0x' + IntToHex(AMsgId - CN_BASE, 0);
      end;
    end;
  end;
end;

end.
