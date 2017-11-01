(*
This Source Code Form is subject to the terms of the Mozilla Public
License, v. 2.0. If a copy of the MPL was not distributed with this
file, You can obtain one at http://mozilla.org/MPL/2.0/.

Copyright (c) Alexey Torgashin
*)
unit proc_py_const;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

const
  SEL_NORMAL = 0;
  SEL_COLUMN = 1;

  CARET_SET_ONE = 0;
  CARET_ADD = 1;
  CARET_DELETE_ALL = 2;
  CARET_SET_INDEX = 100;

  MARKERS_GET = 0;
  MARKERS_ADD = 1;
  MARKERS_DELETE_ALL = 2;
  MARKERS_DELETE_LAST = 3;
  MARKERS_DELETE_BY_TAG = 4;

  APP_DIR_EXE = 0;
  APP_DIR_SETTINGS = 1;
  APP_DIR_DATA = 2;
  APP_DIR_PY = 3;
  APP_FILE_SESSION = 4;
  APP_DIR_INSTALLED_ADDON = 5;
  APP_FILE_RECENTS = 6;

  BOOKMARK_GET = 0;
  BOOKMARK_SET = 1;
  BOOKMARK_CLEAR = 2;
  BOOKMARK_CLEAR_ALL = 3;
  BOOKMARK_SETUP = 4;
  BOOKMARK_GET_LIST = 5;
  BOOKMARK_CLEAR_HINTS = 6;

  TAB_SPLIT_NO = 0;
  TAB_SPLIT_HORZ = 1;
  TAB_SPLIT_VERT = 2;

  MENU_LIST = 0;
  MENU_LIST_ALT = 1;

  MENU_CLEAR         = 0;
  MENU_ENUM          = 1;
  MENU_ADD           = 2;
  MENU_SET_CAPTION   = 4;
  MENU_SET_VISIBLE   = 5;
  MENU_SET_ENABLED   = 6;
  MENU_SET_CHECKED   = 7;
  MENU_SET_RADIOITEM = 8;
  MENU_SET_HOTKEY    = 9;
  MENU_CREATE        = 10;
  MENU_SHOW          = 12;
  MENU_GET_PROP      = 14;

  LOG_CLEAR         = 0;
  LOG_ADD           = 1;
  LOG_SET_PANEL     = 2;
  LOG_SET_REGEX     = 3;
  LOG_SET_LINE_ID   = 4;
  LOG_SET_COL_ID    = 5;
  LOG_SET_NAME_ID   = 6;
  LOG_SET_FILENAME  = 7;
  LOG_SET_ZEROBASE  = 8;
  LOG_GET_LINEINDEX = 10;
  LOG_SET_LINEINDEX = 11;
  LOG_GET_LINES_LIST = 12;
  LOG_CONSOLE_CLEAR = 20;
  LOG_CONSOLE_ADD   = 21;
  LOG_CONSOLE_GET_COMBO_LINES = 24;
  LOG_CONSOLE_GET_MEMO_LINES  = 25;

  EDSTATE_WORDWRAP    = 1;
  EDSTATE_TAB_TITLE   = 2;
  EDSTATE_MODIFIED    = 3;

  PROP_GUTTER_NUM     = 1;
  PROP_GUTTER_FOLD    = 2;
  PROP_GUTTER_BM      = 3;
  PROP_EOL            = 4;
  PROP_WRAP           = 5;
  PROP_RO             = 6;
  PROP_TAB_SPACES     = 7;
  PROP_TAB_SIZE       = 8;
  PROP_MARGIN         = 9;
  PROP_MARGIN_STRING  = 10;
  PROP_INSERT         = 11;
  PROP_MODIFIED       = 12;
  PROP_RULER          = 13;
  PROP_LINE_STATE     = 14;
  PROP_COLOR          = 15;
  PROP_LINE_TOP       = 16;
  PROP_ENC            = 17;
  PROP_TAB_TITLE      = 18;
  PROP_TAB_COLOR      = 19;
  PROP_LEXER_FILE     = 20;
  PROP_LEXER_POS      = 21;
  PROP_LEXER_CARET    = 22;
  PROP_INDEX_GROUP    = 23;
  PROP_INDEX_TAB      = 24;
  PROP_TAG            = 25;
  PROP_CARET_SHAPE     = 26;
  PROP_CARET_SHAPE_OVR = 27;
  PROP_CARET_SHAPE_RO  = 28;
  PROP_CARET_VIRTUAL   = 29;
  PROP_UNPRINTED_SHOW        = 30;
  PROP_UNPRINTED_SPACES      = 31;
  PROP_UNPRINTED_ENDS        = 32;
  PROP_UNPRINTED_END_DETAILS = 33;
  PROP_TAB_ICON            = 34;
  PROP_TAB_COLLECT_MARKERS = 35;
  PROP_MACRO_REC = 36;
  PROP_MARKED_RANGE = 38;
  PROP_LINE_NUMBERS = 39;
  PROP_VISIBLE_LINES = 40;
  PROP_VISIBLE_COLUMNS = 41;
  PROP_LINE_BOTTOM = 42;
  PROP_PICTURE = 43;
  PROP_MINIMAP = 44;
  PROP_MICROMAP = 45;
  PROP_LINK_AT_POS = 46;
  PROP_MODIFIED_VERSION = 47;
  PROP_TAB_ID = 48;
  PROP_COLUMN_LEFT = 49;
  PROP_COORDS = 50;
  PROP_ONE_LINE = 51;
  PROP_SCROLL_VERT = 52;
  PROP_SCROLL_HORZ = 53;

  APP_PROC_SET_CLIP_ALT = -1;
  APP_PROC_GET_CLIP = 0;
  APP_PROC_SET_CLIP = 1;
  APP_PROC_GET_COMMAND = 2;
  APP_PROC_SAVE_SESSION = 3;
  APP_PROC_LOAD_SESSION = 4;
  APP_PROC_SET_SESSION = 5;
  APP_PROC_GET_COMMAND_INITIAL = 9;
  APP_PROC_SET_EVENTS = 10;
  APP_PROC_GET_LAST_PLUGIN = 11;
  APP_PROC_GET_GROUPING = 12;
  APP_PROC_SET_GROUPING = 13;
  APP_PROC_EXEC_PYTHON = 14;
  APP_PROC_EXEC_PLUGIN = 15;
  APP_PROC_SET_SUBCOMMANDS = 16;
  APP_PROC_GET_ESCAPE = 17;
  APP_PROC_SET_ESCAPE = 18;
  APP_PROC_GET_COMMAND_PLUGIN = 19;
  APP_PROC_GET_FIND_OPTIONS = 22;
  APP_PROC_SET_FIND_OPTIONS = 23;

  APP_PROC_SIDEPANEL_ACTIVATE = 25;
  APP_PROC_SIDEPANEL_ENUM = 26;
  APP_PROC_SIDEPANEL_GET_CONTROL = 27;
  APP_PROC_SIDEPANEL_REMOVE = 29;
  APP_PROC_SIDEPANEL_ADD_DIALOG  = 30;

  APP_PROC_SPLITTER_GET = 38;
  APP_PROC_SPLITTER_SET = 39;

  APP_PROC_GET_LANG = 40;
  APP_PROC_GET_HOTKEY = 41;
  APP_PROC_SET_HOTKEY = 42;
  APP_PROC_GET_KEYSTATE = 43;
  APP_PROC_GET_FIND_STRINGS = 44;
  APP_PROC_GET_GUI_HEIGHT = 45;
  APP_PROC_THEME_UI_GET = 46;
  APP_PROC_THEME_UI_SET = 47;
  APP_PROC_THEME_SYNTAX_GET = 48;
  APP_PROC_THEME_SYNTAX_SET = 49;
  APP_PROC_GET_SYSTEM_PPI = 50;
  APP_PROC_PROGRESSBAR = 51;
  APP_PROC_GET_TAB_IMAGELIST = 52;

  APP_PROC_HOTKEY_INT_TO_STR = 60;
  APP_PROC_HOTKEY_STR_TO_INT = 61;

  APP_PROC_BOTTOMPANEL_ACTIVATE = 81;
  APP_PROC_BOTTOMPANEL_ENUM = 82;
  APP_PROC_BOTTOMPANEL_GET_CONTROL = 83;
  APP_PROC_BOTTOMPANEL_REMOVE = 84;
  APP_PROC_BOTTOMPANEL_ADD_DIALOG  = 85;

  APP_PROC_SHOW_STATUSBAR_GET = 100;
  APP_PROC_SHOW_STATUSBAR_SET = 101;
  APP_PROC_SHOW_TOOLBAR_GET = 102;
  APP_PROC_SHOW_TOOLBAR_SET = 103;
  APP_PROC_SHOW_SIDEPANEL_GET = 104;
  APP_PROC_SHOW_SIDEPANEL_SET = 105;
  APP_PROC_SHOW_BOTTOMPANEL_GET = 106;
  APP_PROC_SHOW_BOTTOMPANEL_SET = 107;
  APP_PROC_SHOW_TABS_GET = 108;
  APP_PROC_SHOW_TABS_SET = 109;
  APP_PROC_SHOW_SIDEBAR_GET = 110;
  APP_PROC_SHOW_SIDEBAR_SET = 111;

  APP_PROC_COORD_WINDOW_GET = 140;
  APP_PROC_COORD_WINDOW_SET = 141;
  APP_PROC_COORD_DESKTOP = 142;
  APP_PROC_COORD_MONITOR = 143;
  APP_PROC_COORD_MONITOR0 = 144;
  APP_PROC_COORD_MONITOR1 = 145;
  APP_PROC_COORD_MONITOR2 = 146;
  APP_PROC_COORD_MONITOR3 = 147;

  APP_PROC_ENUM_FONTS     = 160;

  TREE_ITEM_ENUM             = 1;
  TREE_ITEM_ADD              = 2;
  TREE_ITEM_DELETE           = 3;
  TREE_ITEM_SET_TEXT         = 4;
  TREE_ITEM_SET_ICON         = 5;
  TREE_ITEM_SELECT           = 6;
  TREE_ITEM_FOLD             = 7;
  TREE_ITEM_FOLD_DEEP        = 8;
  TREE_ITEM_UNFOLD           = 9;
  TREE_ITEM_UNFOLD_DEEP      = 10;
  TREE_ITEM_GET_SELECTED     = 11;
  TREE_ITEM_GET_SYNTAX_RANGE = 14;
  TREE_ITEM_FOLD_LEVEL       = 15;
  TREE_ITEM_SHOW             = 16;
  TREE_ITEM_GET_PROPS        = 17;
  TREE_GET_IMAGELIST         = 25;
  TREE_PROP_SHOW_ROOT        = 30;
  TREE_LOCK                  = 31;
  TREE_UNLOCK                = 32;
  TREE_THEME                 = 33;

  LISTBOX_GET_COUNT    = 0;
  LISTBOX_ADD          = 1;
  LISTBOX_DELETE       = 2;
  LISTBOX_DELETE_ALL   = 3;
  LISTBOX_GET_ITEM     = 4;
  LISTBOX_SET_ITEM     = 5;
  LISTBOX_GET_SEL      = 10;
  LISTBOX_SET_SEL      = 11;
  LISTBOX_GET_TOP      = 14;
  LISTBOX_SET_TOP      = 15;
  LISTBOX_GET_ITEM_H   = 16;
  LISTBOX_SET_ITEM_H   = 17;
  LISTBOX_GET_DRAWN    = 18;
  LISTBOX_SET_DRAWN    = 19;
  LISTBOX_THEME        = 20;

  LEXER_GET_LEXERS     = 0;
  LEXER_GET_PROP       = 1;
  LEXER_DETECT         = 2;

  GROUPS_ONE    = 1;
  GROUPS_2VERT  = 2;
  GROUPS_2HORZ  = 3;
  GROUPS_3VERT  = 4;
  GROUPS_3HORZ  = 5;
  GROUPS_1P2VERT = 6;
  GROUPS_1P2HORZ = 7;
  GROUPS_4VERT  = 8;
  GROUPS_4HORZ  = 9;
  GROUPS_4GRID  = 10;
  GROUPS_6GRID  = 11;

  CONVERT_CHAR_TO_COL = 0;
  CONVERT_COL_TO_CHAR = 1;
  CONVERT_LINE_TABS_TO_SPACES = 2;

  TOKEN_AT_POS = 0;
  TOKEN_INDEX = 1;

  CANVAS_SET_FONT      = 1;
  CANVAS_SET_PEN       = 2;
  CANVAS_SET_BRUSH     = 3;
  CANVAS_SET_ANTIALIAS = 4;
  CANVAS_SET_TESTPANEL = 9;
  //#CANVAS_GET_FONT      = 11
  //#CANVAS_GET_PEN       = 12
  //#CANVAS_GET_BRUSH     = 13
  CANVAS_GET_TEXT_SIZE = 15;
  CANVAS_TEXT          = 20;
  CANVAS_LINE          = 21;
  CANVAS_PIXEL         = 24;
  CANVAS_RECT          = 30;
  CANVAS_RECT_FRAME    = 31;
  CANVAS_RECT_FILL     = 32;
  CANVAS_RECT_ROUND    = 33;
  CANVAS_POLYGON       = 35;
  CANVAS_ELLIPSE       = 40;

  FONT_B = 1;
  FONT_I = 2;
  FONT_U = 4;
  FONT_S = 8;

  GAP_GET_LIST    = 0;
  GAP_MAKE_BITMAP = 1;
  GAP_ADD         = 2;
  GAP_DELETE      = 3;
  GAP_DELETE_ALL  = 4;

  FOLDING_GET_LIST           = 0;
  FOLDING_FOLD               = 1;
  FOLDING_UNFOLD             = 2;
  FOLDING_ADD                = 3;
  FOLDING_DELETE             = 4;
  FOLDING_DELETE_ALL         = 5;
  FOLDING_FIND               = 6;
  FOLDING_CHECK_RANGE_INSIDE = 10;
  FOLDING_CHECK_RANGES_SAME  = 11;

  PyMenuId_Top = 'top';
  PyMenuId_TopEdit = 'top-edit';
  PyMenuId_TopSel = 'top-sel';
  PyMenuId_TopSearch = 'top-sr';
  PyMenuId_TopFile = 'top-file';
  PyMenuId_TopView = 'top-view';
  PyMenuId_TopOptions = 'top-op';
  PyMenuId_TopHelp = 'top-help';
  PyMenuId_Text = 'text';

  PyMenuCmd_Recents = 'recents';
  PyMenuCmd_ThemesUI = 'themes-ui';
  PyMenuCmd_ThemesSyntax = 'themes-syntax';
  PyMenuCmd_Langs = 'langs';
  PyMenuCmd_Plugins = 'plugins';
  PyMenuCmd_Lexers = 'lexers';
  PyMenuCmd_Enc = 'enc';

  TIMER_START     = 0;
  TIMER_START_ONE = 1;
  TIMER_STOP      = 2;
  TIMER_DELETE    = 3;

  COMMANDS_USUAL   = 1;
  COMMANDS_PLUGINS = 2;
  COMMANDS_LEXERS  = 4;
  COMMANDS_CONFIG  = 8;

  TOOLBAR_ENUM           = 0;
  TOOLBAR_SET_BUTTON     = 4;
  TOOLBAR_ADD_BUTTON     = 5;
  TOOLBAR_DELETE_ALL     = 6;
  TOOLBAR_DELETE_BUTTON  = 7;
  TOOLBAR_GET_CHECKED    = 10;
  TOOLBAR_SET_CHECKED    = 11;
  TOOLBAR_GET_IMAGELIST  = 12;
  TOOLBAR_GET_WRAP       = 14;
  TOOLBAR_SET_WRAP       = 15;
  TOOLBAR_GET_VERTICAL   = 16;
  TOOLBAR_SET_VERTICAL   = 17;
  TOOLBAR_THEME          = 20;

  DLG_CREATE         = 0;
  DLG_FREE           = 1;
  DLG_SHOW_MODAL     = 5;
  DLG_SHOW_NONMODAL  = 6;
  DLG_HIDE           = 7;
  DLG_FOCUS          = 8;
  DLG_SCALE          = 9;
  DLG_PROP_GET       = 10;
  DLG_PROP_SET       = 11;
  DLG_DOCK           = 12;
  DLG_UNDOCK         = 13;
  DLG_CTL_COUNT      = 20;
  DLG_CTL_ADD        = 21;
  DLG_CTL_PROP_GET   = 22;
  DLG_CTL_PROP_SET   = 23;
  DLG_CTL_DELETE     = 24;
  DLG_CTL_DELETE_ALL = 25;
  DLG_CTL_FOCUS      = 30;
  DLG_CTL_FIND       = 31;
  DLG_CTL_HANDLE     = 32;
  DLG_COORD_LOCAL_TO_SCREEN = 40;
  DLG_COORD_SCREEN_TO_LOCAL = 41;

  SPLITTER_SIDE    = 0;
  SPLITTER_BOTTOM  = 1;
  SPLITTER_G1      = 5;
  SPLITTER_G2      = 6;
  SPLITTER_G3      = 7;

  IMAGELIST_CREATE     = 0;
  IMAGELIST_COUNT      = 1;
  IMAGELIST_GET_SIZE   = 2;
  IMAGELIST_SET_SIZE   = 3;
  IMAGELIST_ADD        = 5;
  IMAGELIST_DELETE     = 6;
  IMAGELIST_DELETE_ALL = 7;
  IMAGELIST_PAINT      = 10;

  BTN_GET_CHECKED    = 0;
  BTN_SET_CHECKED    = 1;
  BTN_GET_IMAGELIST  = 2;
  BTN_SET_IMAGELIST  = 3;
  BTN_GET_IMAGEINDEX = 4;
  BTN_SET_IMAGEINDEX = 5;
  BTN_GET_KIND       = 6;
  BTN_SET_KIND       = 7;
  BTN_GET_BOLD       = 8;
  BTN_SET_BOLD       = 9;

  APP_IMAGE_CREATE      = 0;
  APP_IMAGE_GET_SIZE    = 1;
  APP_IMAGE_LOAD        = 2;
  APP_IMAGE_PAINT       = 5;
  APP_IMAGE_PAINT_SIZED = 6;

  DIM_ENUM       = 0;
  DIM_ADD        = 1;
  DIM_DELETE     = 3;
  DIM_DELETE_ALL = 4;


implementation

end.

