#pragma once

#include once "crt/long.bi"
#include once "crt/stdio.bi"
#include once "crt/stdarg.bi"

'' The following symbols have been renamed:
''     #define NCURSES_BOOL => NCURSES_BOOL_
''     #define ERR => ERR_
''     typedef SCREEN => SCREEN_
''     typedef WINDOW => WINDOW_
''     procedure beep => beep_
''     procedure clear => clear_
''     procedure erase => erase_
''     procedure instr => instr_
''     #define wgetstr => wgetstr_
''     #define getnstr => getnstr_
''     #define getcurx => getcurx_
''     #define getcury => getcury_
''     #define getbegx => getbegx_
''     #define getbegy => getbegy_
''     #define getmaxx => getmaxx_
''     #define getmaxy => getmaxy_
''     #define getparx => getparx_
''     #define getpary => getpary_
''     #define wstandout => wstandout_
''     #define wstandend => wstandend_
''     #define wattron => wattron_
''     #define wattroff => wattroff_
''     #define scroll => scroll_
''     #define touchwin => touchwin_
''     #define touchline => touchline_
''     #define untouchwin => untouchwin_
''     #define box => box_
''     #define border => border_
''     #define hline => hline_
''     #define vline => vline_
''     #define winstr => winstr_
''     #define winchstr => winchstr_
''     #define winsstr => winsstr_
''     #define redrawwin => redrawwin_
''     #define waddstr => waddstr_
''     #define waddchstr => waddchstr_
''     #define COLOR_PAIR => COLOR_PAIR_
''     #define addch => addch_
''     #define addchnstr => addchnstr_
''     #define addchstr => addchstr_
''     #define addnstr => addnstr_
''     #define addstr => addstr_
''     #define attroff => attroff_
''     #define attron => attron_
''     #define attrset => attrset_
''     #define attr_get => attr_get_
''     #define attr_off => attr_off_
''     #define attr_on => attr_on_
''     #define attr_set => attr_set_
''     #define bkgd => bkgd_
''     #define bkgdset => bkgdset_
''     #define chgat => chgat_
''     #define clear => clear__
''     #define clrtobot => clrtobot_
''     #define clrtoeol => clrtoeol_
''     #define color_set => color_set_
''     #define delch => delch_
''     #define deleteln => deleteln_
''     #define echochar => echochar_
''     #define erase => erase__
''     #define getch => getch_
''     #define getstr => getstr_
''     #define inch => inch_
''     #define inchnstr => inchnstr_
''     #define inchstr => inchstr_
''     #define innstr => innstr_
''     #define insch => insch_
''     #define insdelln => insdelln_
''     #define insertln => insertln_
''     #define insnstr => insnstr_
''     #define insstr => insstr_
''     #define instr => instr__
''     #define move => move_
''     #define refresh => refresh_
''     #define scrl => scrl_
''     #define setscrreg => setscrreg_
''     #define standend => standend_
''     #define standout => standout_
''     #define timeout => timeout_
''     #define wdeleteln => wdeleteln_
''     #define winsertln => winsertln_
''     #define mvwaddch => mvwaddch_
''     #define mvwaddchnstr => mvwaddchnstr_
''     #define mvwaddchstr => mvwaddchstr_
''     #define mvwaddnstr => mvwaddnstr_
''     #define mvwaddstr => mvwaddstr_
''     #define mvwdelch => mvwdelch_
''     #define mvwchgat => mvwchgat_
''     #define mvwgetch => mvwgetch_
''     #define mvwgetnstr => mvwgetnstr_
''     #define mvwgetstr => mvwgetstr_
''     #define mvwhline => mvwhline_
''     #define mvwinch => mvwinch_
''     #define mvwinchnstr => mvwinchnstr_
''     #define mvwinchstr => mvwinchstr_
''     #define mvwinnstr => mvwinnstr_
''     #define mvwinsch => mvwinsch_
''     #define mvwinsnstr => mvwinsnstr_
''     #define mvwinsstr => mvwinsstr_
''     #define mvwinstr => mvwinstr_
''     #define mvwvline => mvwvline_
''     #define mvaddch => mvaddch_
''     #define mvaddchnstr => mvaddchnstr_
''     #define mvaddchstr => mvaddchstr_
''     #define mvaddnstr => mvaddnstr_
''     #define mvaddstr => mvaddstr_
''     #define mvchgat => mvchgat_
''     #define mvdelch => mvdelch_
''     #define mvgetch => mvgetch_
''     #define mvgetnstr => mvgetnstr_
''     #define mvgetstr => mvgetstr_
''     #define mvhline => mvhline_
''     #define mvinch => mvinch_
''     #define mvinchnstr => mvinchnstr_
''     #define mvinchstr => mvinchstr_
''     #define mvinnstr => mvinnstr_
''     #define mvinsch => mvinsch_
''     #define mvinsnstr => mvinsnstr_
''     #define mvinsstr => mvinsstr_
''     #define mvinstr => mvinstr_
''     #define mvvline => mvvline_
''     #define getbkgd => getbkgd_
''     #define slk_attr_off => slk_attr_off_
''     #define slk_attr_on => slk_attr_on_
''     #define vw_printw => vw_printw_
''     #define vw_scanw => vw_scanw_
''     #define is_cleared => is_cleared_
''     #define is_idcok => is_idcok_
''     #define is_idlok => is_idlok_
''     #define is_immedok => is_immedok_
''     #define is_keypad => is_keypad_
''     #define is_leaveok => is_leaveok_
''     #define is_nodelay => is_nodelay_
''     #define is_notimeout => is_notimeout_
''     #define is_pad => is_pad_
''     #define is_scrollok => is_scrollok_
''     #define is_subwin => is_subwin_
''     #define is_syncok => is_syncok_
''     #define wgetparent => wgetparent_
''     procedure getmouse => getmouse_
''     #define mouse_trafo => mouse_trafo_

extern "C"

type ldat as ldat_

#define __NCURSES_H
#define CURSES 1
#define CURSES_H 1
#define NCURSES_VERSION_MAJOR 5
#define NCURSES_VERSION_MINOR 9
#define NCURSES_VERSION_PATCH 20110404
#define NCURSES_MOUSE_VERSION 1
#define NCURSES_DLL_H_incl 1
#define NCURSES_ENABLE_STDBOOL_H 1
#define NCURSES_ATTR_T long
#define NCURSES_COLOR_T short
#define NCURSES_OPAQUE 0
#define NCURSES_REENTRANT 0
#define NCURSES_INTEROP_FUNCS 0
#define NCURSES_SIZE_T short
#define NCURSES_TPARM_VARARGS 1
#define NCURSES_CH_T chtype

type chtype as culong
type mmask_t as culong

#define TRUE 1
#define FALSE 0

type NCURSES_BOOL as ubyte

#define NCURSES_BOOL_ bool
#define WA_ATTRIBUTES A_ATTRIBUTES
#define WA_NORMAL A_NORMAL
#define WA_STANDOUT A_STANDOUT
#define WA_UNDERLINE A_UNDERLINE
#define WA_REVERSE A_REVERSE
#define WA_BLINK A_BLINK
#define WA_DIM A_DIM
#define WA_BOLD A_BOLD
#define WA_ALTCHARSET A_ALTCHARSET
#define WA_INVIS A_INVIS
#define WA_PROTECT A_PROTECT
#define WA_HORIZONTAL A_HORIZONTAL
#define WA_LEFT A_LEFT
#define WA_LOW A_LOW
#define WA_RIGHT A_RIGHT
#define WA_TOP A_TOP
#define WA_VERTICAL A_VERTICAL
#define COLOR_BLACK 0
#define COLOR_RED 1
#define COLOR_GREEN 2
#define COLOR_YELLOW 3
#define COLOR_BLUE 4
#define COLOR_MAGENTA 5
#define COLOR_CYAN 6
#define COLOR_WHITE 7

#define ACS_LEN 128
extern acs_map(0 to ACS_LEN-1) as chtype
#define NCURSES_ACS(c) (acs_map(cubyte(c)))

#define ACS_ULCORNER NCURSES_ACS(asc("l"))
#define ACS_LLCORNER NCURSES_ACS(asc("m"))
#define ACS_URCORNER NCURSES_ACS(asc("k"))
#define ACS_LRCORNER NCURSES_ACS(asc("j"))
#define ACS_LTEE NCURSES_ACS(asc("t"))
#define ACS_RTEE NCURSES_ACS(asc("u"))
#define ACS_BTEE NCURSES_ACS(asc("v"))
#define ACS_TTEE NCURSES_ACS(asc("w"))
#define ACS_HLINE NCURSES_ACS(asc("q"))
#define ACS_VLINE NCURSES_ACS(asc("x"))
#define ACS_PLUS NCURSES_ACS(asc("n"))
#define ACS_S1 NCURSES_ACS(asc("o"))
#define ACS_S9 NCURSES_ACS(asc("s"))
#define ACS_DIAMOND NCURSES_ACS(asc("`"))
#define ACS_CKBOARD NCURSES_ACS(asc("a"))
#define ACS_DEGREE NCURSES_ACS(asc("f"))
#define ACS_PLMINUS NCURSES_ACS(asc("g"))
#define ACS_BULLET NCURSES_ACS(asc("~"))
#define ACS_LARROW NCURSES_ACS(asc(","))
#define ACS_RARROW NCURSES_ACS(asc("+"))
#define ACS_DARROW NCURSES_ACS(asc("."))
#define ACS_UARROW NCURSES_ACS(asc("-"))
#define ACS_BOARD NCURSES_ACS(asc("h"))
#define ACS_LANTERN NCURSES_ACS(asc("i"))
#define ACS_BLOCK NCURSES_ACS(asc("0"))
#define ACS_S3 NCURSES_ACS(asc("p"))
#define ACS_S7 NCURSES_ACS(asc("r"))
#define ACS_LEQUAL NCURSES_ACS(asc("y"))
#define ACS_GEQUAL NCURSES_ACS(asc("z"))
#define ACS_PI NCURSES_ACS(asc("{"))
#define ACS_NEQUAL NCURSES_ACS(asc("|"))
#define ACS_STERLING NCURSES_ACS(asc("}"))
#define ACS_BSSB ACS_ULCORNER
#define ACS_SSBB ACS_LLCORNER
#define ACS_BBSS ACS_URCORNER
#define ACS_SBBS ACS_LRCORNER
#define ACS_SBSS ACS_RTEE
#define ACS_SSSB ACS_LTEE
#define ACS_SSBS ACS_BTEE
#define ACS_BSSS ACS_TTEE
#define ACS_BSBS ACS_HLINE
#define ACS_SBSB ACS_VLINE
#define ACS_SSSS ACS_PLUS
#define ERR_ (-1)
#define OK 0
#define _SUBWIN &h01
#define _ENDLINE &h02
#define _FULLWIN &h04
#define _SCROLLWIN &h08
#define _ISPAD &h10
#define _HASMOVED &h20
#define _WRAPPED &h40
#define _NOCHANGE (-1)
#define _NEWINDEX (-1)

type SCREEN_ as screen__
type WINDOW_ as _win_st
type attr_t as chtype

type pdat
	_pad_y as short
	_pad_x as short
	_pad_top as short
	_pad_left as short
	_pad_bottom as short
	_pad_right as short
end type

type _win_st
	_cury as short
	_curx as short
	_maxy as short
	_maxx as short
	_begy as short
	_begx as short
	_flags as short
	_attrs as attr_t
	_bkgd as chtype
	_notimeout as byte
	_clear as byte
	_leaveok as byte
	_scroll as byte
	_idlok as byte
	_idcok as byte
	_immed as byte
	_sync as byte
	_use_keypad as byte
	_delay as long
	_line as ldat ptr
	_regtop as short
	_regbottom as short
	_parx as long
	_pary as long
	_parent as WINDOW_ ptr
	_pad as pdat
	_yoffset as short
end type

type NCURSES_OUTC as function(byval as long) as long

declare function addch(byval as const chtype) as long
declare function addchnstr(byval as const chtype ptr, byval as long) as long
declare function addchstr(byval as const chtype ptr) as long
declare function addnstr(byval as const zstring ptr, byval as long) as long
declare function addstr(byval as const zstring ptr) as long
declare function attroff(byval as long) as long
declare function attron(byval as long) as long
declare function attrset(byval as long) as long
declare function attr_get(byval as attr_t ptr, byval as short ptr, byval as any ptr) as long
declare function attr_off(byval as attr_t, byval as any ptr) as long
declare function attr_on(byval as attr_t, byval as any ptr) as long
declare function attr_set(byval as attr_t, byval as short, byval as any ptr) as long
declare function baudrate() as long
declare function beep_ alias "beep"() as long
declare function bkgd(byval as chtype) as long
declare sub bkgdset(byval as chtype)
declare function border(byval as chtype, byval as chtype, byval as chtype, byval as chtype, byval as chtype, byval as chtype, byval as chtype, byval as chtype) as long
declare function box(byval as WINDOW_ ptr, byval as chtype, byval as chtype) as long
declare function can_change_color() as byte
declare function cbreak() as long
declare function chgat(byval as long, byval as attr_t, byval as short, byval as const any ptr) as long
declare function clear_ alias "clear"() as long
declare function clearok(byval as WINDOW_ ptr, byval as byte) as long
declare function clrtobot() as long
declare function clrtoeol() as long
declare function color_content(byval as short, byval as short ptr, byval as short ptr, byval as short ptr) as long
declare function color_set(byval as short, byval as any ptr) as long
declare function COLOR_PAIR(byval as long) as long
declare function copywin(byval as const WINDOW_ ptr, byval as WINDOW_ ptr, byval as long, byval as long, byval as long, byval as long, byval as long, byval as long, byval as long) as long
declare function curs_set(byval as long) as long
declare function def_prog_mode() as long
declare function def_shell_mode() as long
declare function delay_output(byval as long) as long
declare function delch() as long
declare sub delscreen(byval as SCREEN_ ptr)
declare function delwin(byval as WINDOW_ ptr) as long
declare function deleteln() as long
declare function derwin(byval as WINDOW_ ptr, byval as long, byval as long, byval as long, byval as long) as WINDOW_ ptr
declare function doupdate() as long
declare function dupwin(byval as WINDOW_ ptr) as WINDOW_ ptr
declare function echo() as long
declare function echochar(byval as const chtype) as long
declare function erase_ alias "erase"() as long
declare function endwin() as long
declare function erasechar() as byte
declare sub filter()
declare function flash() as long
declare function flushinp() as long
declare function getbkgd(byval as WINDOW_ ptr) as chtype
declare function getch() as long
declare function getnstr(byval as zstring ptr, byval as long) as long
declare function getstr(byval as zstring ptr) as long
declare function getwin(byval as FILE ptr) as WINDOW_ ptr
declare function halfdelay(byval as long) as long
declare function has_colors() as byte
declare function has_ic() as byte
declare function has_il() as byte
declare function hline(byval as chtype, byval as long) as long
declare sub idcok(byval as WINDOW_ ptr, byval as byte)
declare function idlok(byval as WINDOW_ ptr, byval as byte) as long
declare sub immedok(byval as WINDOW_ ptr, byval as byte)
declare function inch() as chtype
declare function inchnstr(byval as chtype ptr, byval as long) as long
declare function inchstr(byval as chtype ptr) as long
declare function initscr() as WINDOW_ ptr
declare function init_color(byval as short, byval as short, byval as short, byval as short) as long
declare function init_pair(byval as short, byval as short, byval as short) as long
declare function innstr(byval as zstring ptr, byval as long) as long
declare function insch(byval as chtype) as long
declare function insdelln(byval as long) as long
declare function insertln() as long
declare function insnstr(byval as const zstring ptr, byval as long) as long
declare function insstr(byval as const zstring ptr) as long
declare function instr_ alias "instr"(byval as zstring ptr) as long
declare function intrflush(byval as WINDOW_ ptr, byval as byte) as long
declare function isendwin() as byte
declare function is_linetouched(byval as WINDOW_ ptr, byval as long) as byte
declare function is_wintouched(byval as WINDOW_ ptr) as byte
declare function keyname(byval as long) as zstring ptr
declare function keypad(byval as WINDOW_ ptr, byval as byte) as long
declare function killchar() as byte
declare function leaveok(byval as WINDOW_ ptr, byval as byte) as long
declare function longname() as zstring ptr
declare function meta(byval as WINDOW_ ptr, byval as byte) as long
declare function move(byval as long, byval as long) as long
declare function mvaddch(byval as long, byval as long, byval as const chtype) as long
declare function mvaddchnstr(byval as long, byval as long, byval as const chtype ptr, byval as long) as long
declare function mvaddchstr(byval as long, byval as long, byval as const chtype ptr) as long
declare function mvaddnstr(byval as long, byval as long, byval as const zstring ptr, byval as long) as long
declare function mvaddstr(byval as long, byval as long, byval as const zstring ptr) as long
declare function mvchgat(byval as long, byval as long, byval as long, byval as attr_t, byval as short, byval as const any ptr) as long
declare function mvcur(byval as long, byval as long, byval as long, byval as long) as long
declare function mvdelch(byval as long, byval as long) as long
declare function mvderwin(byval as WINDOW_ ptr, byval as long, byval as long) as long
declare function mvgetch(byval as long, byval as long) as long
declare function mvgetnstr(byval as long, byval as long, byval as zstring ptr, byval as long) as long
declare function mvgetstr(byval as long, byval as long, byval as zstring ptr) as long
declare function mvhline(byval as long, byval as long, byval as chtype, byval as long) as long
declare function mvinch(byval as long, byval as long) as chtype
declare function mvinchnstr(byval as long, byval as long, byval as chtype ptr, byval as long) as long
declare function mvinchstr(byval as long, byval as long, byval as chtype ptr) as long
declare function mvinnstr(byval as long, byval as long, byval as zstring ptr, byval as long) as long
declare function mvinsch(byval as long, byval as long, byval as chtype) as long
declare function mvinsnstr(byval as long, byval as long, byval as const zstring ptr, byval as long) as long
declare function mvinsstr(byval as long, byval as long, byval as const zstring ptr) as long
declare function mvinstr(byval as long, byval as long, byval as zstring ptr) as long
declare function mvprintw(byval as long, byval as long, byval as const zstring ptr, ...) as long
declare function mvscanw(byval as long, byval as long, byval as zstring ptr, ...) as long
declare function mvvline(byval as long, byval as long, byval as chtype, byval as long) as long
declare function mvwaddch(byval as WINDOW_ ptr, byval as long, byval as long, byval as const chtype) as long
declare function mvwaddchnstr(byval as WINDOW_ ptr, byval as long, byval as long, byval as const chtype ptr, byval as long) as long
declare function mvwaddchstr(byval as WINDOW_ ptr, byval as long, byval as long, byval as const chtype ptr) as long
declare function mvwaddnstr(byval as WINDOW_ ptr, byval as long, byval as long, byval as const zstring ptr, byval as long) as long
declare function mvwaddstr(byval as WINDOW_ ptr, byval as long, byval as long, byval as const zstring ptr) as long
declare function mvwchgat(byval as WINDOW_ ptr, byval as long, byval as long, byval as long, byval as attr_t, byval as short, byval as const any ptr) as long
declare function mvwdelch(byval as WINDOW_ ptr, byval as long, byval as long) as long
declare function mvwgetch(byval as WINDOW_ ptr, byval as long, byval as long) as long
declare function mvwgetnstr(byval as WINDOW_ ptr, byval as long, byval as long, byval as zstring ptr, byval as long) as long
declare function mvwgetstr(byval as WINDOW_ ptr, byval as long, byval as long, byval as zstring ptr) as long
declare function mvwhline(byval as WINDOW_ ptr, byval as long, byval as long, byval as chtype, byval as long) as long
declare function mvwin(byval as WINDOW_ ptr, byval as long, byval as long) as long
declare function mvwinch(byval as WINDOW_ ptr, byval as long, byval as long) as chtype
declare function mvwinchnstr(byval as WINDOW_ ptr, byval as long, byval as long, byval as chtype ptr, byval as long) as long
declare function mvwinchstr(byval as WINDOW_ ptr, byval as long, byval as long, byval as chtype ptr) as long
declare function mvwinnstr(byval as WINDOW_ ptr, byval as long, byval as long, byval as zstring ptr, byval as long) as long
declare function mvwinsch(byval as WINDOW_ ptr, byval as long, byval as long, byval as chtype) as long
declare function mvwinsnstr(byval as WINDOW_ ptr, byval as long, byval as long, byval as const zstring ptr, byval as long) as long
declare function mvwinsstr(byval as WINDOW_ ptr, byval as long, byval as long, byval as const zstring ptr) as long
declare function mvwinstr(byval as WINDOW_ ptr, byval as long, byval as long, byval as zstring ptr) as long
declare function mvwprintw(byval as WINDOW_ ptr, byval as long, byval as long, byval as const zstring ptr, ...) as long
declare function mvwscanw(byval as WINDOW_ ptr, byval as long, byval as long, byval as zstring ptr, ...) as long
declare function mvwvline(byval as WINDOW_ ptr, byval as long, byval as long, byval as chtype, byval as long) as long
declare function napms(byval as long) as long
declare function newpad(byval as long, byval as long) as WINDOW_ ptr
declare function newterm(byval as zstring ptr, byval as FILE ptr, byval as FILE ptr) as SCREEN_ ptr
declare function newwin(byval as long, byval as long, byval as long, byval as long) as WINDOW_ ptr
declare function nl() as long
declare function nocbreak() as long
declare function nodelay(byval as WINDOW_ ptr, byval as byte) as long
declare function noecho() as long
declare function nonl() as long
declare sub noqiflush()
declare function noraw() as long
declare function notimeout(byval as WINDOW_ ptr, byval as byte) as long
declare function overlay(byval as const WINDOW_ ptr, byval as WINDOW_ ptr) as long
declare function overwrite(byval as const WINDOW_ ptr, byval as WINDOW_ ptr) as long
declare function pair_content(byval as short, byval as short ptr, byval as short ptr) as long
declare function PAIR_NUMBER(byval as long) as long
declare function pechochar(byval as WINDOW_ ptr, byval as const chtype) as long
declare function pnoutrefresh(byval as WINDOW_ ptr, byval as long, byval as long, byval as long, byval as long, byval as long, byval as long) as long
declare function prefresh(byval as WINDOW_ ptr, byval as long, byval as long, byval as long, byval as long, byval as long, byval as long) as long
declare function printw(byval as const zstring ptr, ...) as long
declare function putwin(byval as WINDOW_ ptr, byval as FILE ptr) as long
declare sub qiflush()
declare function raw() as long
declare function redrawwin(byval as WINDOW_ ptr) as long
declare function refresh() as long
declare function resetty() as long
declare function reset_prog_mode() as long
declare function reset_shell_mode() as long
declare function ripoffline(byval as long, byval as function(byval as WINDOW_ ptr, byval as long) as long) as long
declare function savetty() as long
declare function scanw(byval as zstring ptr, ...) as long
declare function scr_dump(byval as const zstring ptr) as long
declare function scr_init(byval as const zstring ptr) as long
declare function scrl(byval as long) as long
declare function scroll(byval as WINDOW_ ptr) as long
declare function scrollok(byval as WINDOW_ ptr, byval as byte) as long
declare function scr_restore(byval as const zstring ptr) as long
declare function scr_set(byval as const zstring ptr) as long
declare function setscrreg(byval as long, byval as long) as long
declare function set_term(byval as SCREEN_ ptr) as SCREEN_ ptr
declare function slk_attroff(byval as const chtype) as long
declare function slk_attr_off(byval as const attr_t, byval as any ptr) as long
declare function slk_attron(byval as const chtype) as long
declare function slk_attr_on(byval as attr_t, byval as any ptr) as long
declare function slk_attrset(byval as const chtype) as long
declare function slk_attr() as attr_t
declare function slk_attr_set(byval as const attr_t, byval as short, byval as any ptr) as long
declare function slk_clear() as long
declare function slk_color(byval as short) as long
declare function slk_init(byval as long) as long
declare function slk_label(byval as long) as zstring ptr
declare function slk_noutrefresh() as long
declare function slk_refresh() as long
declare function slk_restore() as long
declare function slk_set(byval as long, byval as const zstring ptr, byval as long) as long
declare function slk_touch() as long
declare function standout() as long
declare function standend() as long
declare function start_color() as long
declare function subpad(byval as WINDOW_ ptr, byval as long, byval as long, byval as long, byval as long) as WINDOW_ ptr
declare function subwin(byval as WINDOW_ ptr, byval as long, byval as long, byval as long, byval as long) as WINDOW_ ptr
declare function syncok(byval as WINDOW_ ptr, byval as byte) as long
declare function termattrs() as chtype
declare function termname() as zstring ptr
declare sub timeout(byval as long)
declare function touchline(byval as WINDOW_ ptr, byval as long, byval as long) as long
declare function touchwin(byval as WINDOW_ ptr) as long
declare function typeahead(byval as long) as long
declare function ungetch(byval as long) as long
declare function untouchwin(byval as WINDOW_ ptr) as long
declare sub use_env(byval as byte)
declare function vidattr(byval as chtype) as long
declare function vidputs(byval as chtype, byval as NCURSES_OUTC) as long
declare function vline(byval as chtype, byval as long) as long
declare function vwprintw(byval as WINDOW_ ptr, byval as const zstring ptr, byval as va_list) as long
declare function vw_printw(byval as WINDOW_ ptr, byval as const zstring ptr, byval as va_list) as long
declare function vwscanw(byval as WINDOW_ ptr, byval as zstring ptr, byval as va_list) as long
declare function vw_scanw(byval as WINDOW_ ptr, byval as zstring ptr, byval as va_list) as long
declare function waddch(byval as WINDOW_ ptr, byval as const chtype) as long
declare function waddchnstr(byval as WINDOW_ ptr, byval as const chtype ptr, byval as long) as long
declare function waddchstr(byval as WINDOW_ ptr, byval as const chtype ptr) as long
declare function waddnstr(byval as WINDOW_ ptr, byval as const zstring ptr, byval as long) as long
declare function waddstr(byval as WINDOW_ ptr, byval as const zstring ptr) as long
declare function wattron(byval as WINDOW_ ptr, byval as long) as long
declare function wattroff(byval as WINDOW_ ptr, byval as long) as long
declare function wattrset(byval as WINDOW_ ptr, byval as long) as long
declare function wattr_get(byval as WINDOW_ ptr, byval as attr_t ptr, byval as short ptr, byval as any ptr) as long
declare function wattr_on(byval as WINDOW_ ptr, byval as attr_t, byval as any ptr) as long
declare function wattr_off(byval as WINDOW_ ptr, byval as attr_t, byval as any ptr) as long
declare function wattr_set(byval as WINDOW_ ptr, byval as attr_t, byval as short, byval as any ptr) as long
declare function wbkgd(byval as WINDOW_ ptr, byval as chtype) as long
declare sub wbkgdset(byval as WINDOW_ ptr, byval as chtype)
declare function wborder(byval as WINDOW_ ptr, byval as chtype, byval as chtype, byval as chtype, byval as chtype, byval as chtype, byval as chtype, byval as chtype, byval as chtype) as long
declare function wchgat(byval as WINDOW_ ptr, byval as long, byval as attr_t, byval as short, byval as const any ptr) as long
declare function wclear(byval as WINDOW_ ptr) as long
declare function wclrtobot(byval as WINDOW_ ptr) as long
declare function wclrtoeol(byval as WINDOW_ ptr) as long
declare function wcolor_set(byval as WINDOW_ ptr, byval as short, byval as any ptr) as long
declare sub wcursyncup(byval as WINDOW_ ptr)
declare function wdelch(byval as WINDOW_ ptr) as long
declare function wdeleteln(byval as WINDOW_ ptr) as long
declare function wechochar(byval as WINDOW_ ptr, byval as const chtype) as long
declare function werase(byval as WINDOW_ ptr) as long
declare function wgetch(byval as WINDOW_ ptr) as long
declare function wgetnstr(byval as WINDOW_ ptr, byval as zstring ptr, byval as long) as long
declare function wgetstr(byval as WINDOW_ ptr, byval as zstring ptr) as long
declare function whline(byval as WINDOW_ ptr, byval as chtype, byval as long) as long
declare function winch(byval as WINDOW_ ptr) as chtype
declare function winchnstr(byval as WINDOW_ ptr, byval as chtype ptr, byval as long) as long
declare function winchstr(byval as WINDOW_ ptr, byval as chtype ptr) as long
declare function winnstr(byval as WINDOW_ ptr, byval as zstring ptr, byval as long) as long
declare function winsch(byval as WINDOW_ ptr, byval as chtype) as long
declare function winsdelln(byval as WINDOW_ ptr, byval as long) as long
declare function winsertln(byval as WINDOW_ ptr) as long
declare function winsnstr(byval as WINDOW_ ptr, byval as const zstring ptr, byval as long) as long
declare function winsstr(byval as WINDOW_ ptr, byval as const zstring ptr) as long
declare function winstr(byval as WINDOW_ ptr, byval as zstring ptr) as long
declare function wmove(byval as WINDOW_ ptr, byval as long, byval as long) as long
declare function wnoutrefresh(byval as WINDOW_ ptr) as long
declare function wprintw(byval as WINDOW_ ptr, byval as const zstring ptr, ...) as long
declare function wredrawln(byval as WINDOW_ ptr, byval as long, byval as long) as long
declare function wrefresh(byval as WINDOW_ ptr) as long
declare function wscanw(byval as WINDOW_ ptr, byval as zstring ptr, ...) as long
declare function wscrl(byval as WINDOW_ ptr, byval as long) as long
declare function wsetscrreg(byval as WINDOW_ ptr, byval as long, byval as long) as long
declare function wstandout(byval as WINDOW_ ptr) as long
declare function wstandend(byval as WINDOW_ ptr) as long
declare sub wsyncdown(byval as WINDOW_ ptr)
declare sub wsyncup(byval as WINDOW_ ptr)
declare sub wtimeout(byval as WINDOW_ ptr, byval as long)
declare function wtouchln(byval as WINDOW_ ptr, byval as long, byval as long, byval as long) as long
declare function wvline(byval as WINDOW_ ptr, byval as chtype, byval as long) as long
declare function tigetflag(byval as zstring ptr) as long
declare function tigetnum(byval as zstring ptr) as long
declare function tigetstr(byval as zstring ptr) as zstring ptr
declare function putp(byval as const zstring ptr) as long
declare function tparm(byval as zstring ptr, ...) as zstring ptr
declare function tiparm(byval as const zstring ptr, ...) as zstring ptr
declare function getattrs(byval as const WINDOW_ ptr) as long
declare function getcurx(byval as const WINDOW_ ptr) as long
declare function getcury(byval as const WINDOW_ ptr) as long
declare function getbegx(byval as const WINDOW_ ptr) as long
declare function getbegy(byval as const WINDOW_ ptr) as long
declare function getmaxx(byval as const WINDOW_ ptr) as long
declare function getmaxy(byval as const WINDOW_ ptr) as long
declare function getparx(byval as const WINDOW_ ptr) as long
declare function getpary(byval as const WINDOW_ ptr) as long

#define vid_attr(a, pair, opts) vidattr(a)
#define NCURSES_EXT_FUNCS 20110404

type NCURSES_WINDOW_CB as function(byval as WINDOW_ ptr, byval as any ptr) as long
type NCURSES_SCREEN_CB as function(byval as SCREEN_ ptr, byval as any ptr) as long

declare function is_term_resized(byval as long, byval as long) as byte
declare function keybound(byval as long, byval as long) as zstring ptr
declare function curses_version() as const zstring ptr
declare function assume_default_colors(byval as long, byval as long) as long
declare function define_key(byval as const zstring ptr, byval as long) as long
declare function get_escdelay() as long
declare function key_defined(byval as const zstring ptr) as long
declare function keyok(byval as long, byval as byte) as long
declare function resize_term(byval as long, byval as long) as long
declare function resizeterm(byval as long, byval as long) as long
declare function set_escdelay(byval as long) as long
declare function set_tabsize(byval as long) as long
declare function use_default_colors() as long
declare function use_extended_names(byval as byte) as long
declare function use_legacy_coding(byval as long) as long
declare function use_screen(byval as SCREEN_ ptr, byval as NCURSES_SCREEN_CB, byval as any ptr) as long
declare function use_window(byval as WINDOW_ ptr, byval as NCURSES_WINDOW_CB, byval as any ptr) as long
declare function wresize(byval as WINDOW_ ptr, byval as long, byval as long) as long
declare sub nofilter()
declare function wgetparent(byval as const WINDOW_ ptr) as WINDOW_ ptr
declare function is_cleared(byval as const WINDOW_ ptr) as byte
declare function is_idcok(byval as const WINDOW_ ptr) as byte
declare function is_idlok(byval as const WINDOW_ ptr) as byte
declare function is_immedok(byval as const WINDOW_ ptr) as byte
declare function is_keypad(byval as const WINDOW_ ptr) as byte
declare function is_leaveok(byval as const WINDOW_ ptr) as byte
declare function is_nodelay(byval as const WINDOW_ ptr) as byte
declare function is_notimeout(byval as const WINDOW_ ptr) as byte
declare function is_pad(byval as const WINDOW_ ptr) as byte
declare function is_scrollok(byval as const WINDOW_ ptr) as byte
declare function is_subwin(byval as const WINDOW_ ptr) as byte
declare function is_syncok(byval as const WINDOW_ ptr) as byte
declare function wgetscrreg(byval as const WINDOW_ ptr, byval as long ptr, byval as long ptr) as long

#define NCURSES_SP_FUNCS 0
#define NCURSES_SP_NAME(name) name
#define NCURSES_SP_OUTC NCURSES_OUTC
#define NCURSES_ATTR_SHIFT 8
#define NCURSES_BITS(mask, shift) ((mask) shl ((shift) + NCURSES_ATTR_SHIFT))
#define A_NORMAL (cast(culong, 1) - cast(culong, 1))
#define A_ATTRIBUTES NCURSES_BITS(not (cast(culong, 1) - cast(culong, 1)), 0)
#define A_CHARTEXT (NCURSES_BITS(cast(culong, 1), 0) - cast(culong, 1))
#define A_COLOR NCURSES_BITS((cast(culong, 1) shl 8) - cast(culong, 1), 0)
#define A_STANDOUT NCURSES_BITS(cast(culong, 1), 8)
#define A_UNDERLINE NCURSES_BITS(cast(culong, 1), 9)
#define A_REVERSE NCURSES_BITS(cast(culong, 1), 10)
#define A_BLINK NCURSES_BITS(cast(culong, 1), 11)
#define A_DIM NCURSES_BITS(cast(culong, 1), 12)
#define A_BOLD NCURSES_BITS(cast(culong, 1), 13)
#define A_ALTCHARSET NCURSES_BITS(cast(culong, 1), 14)
#define A_INVIS NCURSES_BITS(cast(culong, 1), 15)
#define A_PROTECT NCURSES_BITS(cast(culong, 1), 16)
#define A_HORIZONTAL NCURSES_BITS(cast(culong, 1), 17)
#define A_LEFT NCURSES_BITS(cast(culong, 1), 18)
#define A_LOW NCURSES_BITS(cast(culong, 1), 19)
#define A_RIGHT NCURSES_BITS(cast(culong, 1), 20)
#define A_TOP NCURSES_BITS(cast(culong, 1), 21)
#define A_VERTICAL NCURSES_BITS(cast(culong, 1), 22)

#define getyx(win,y,x) y = getcury(win) : x = getcurx(win)
#define getbegyx(win,y,x) y = getbegy(win) : x = getbegx(win)
#define getmaxyx(win,y,x) y = getmaxy(win) : x = getmaxx(win)
#define getparyx(win,y,x) y = getpary(win) : x = getparx(win)
#macro getsyx(y, x)
	if newscr then
		if is_leaveok(newscr) then
			(y) = -1
			(x) = -1
		else
			getyx(newscr, (y), (x))
		end if
	end if
#endmacro
#macro setsyx(y, x)
	if newscr then
		if (y) = -1 andalso (x) = -1 then
			leaveok(newscr, TRUE)
		else
			leaveok(newscr, FALSE)
			wmove(newscr, (y), (x))
		end if
	end if
#endmacro

#define wgetstr_(w, s) wgetnstr(w, s, -1)
#define getnstr_(s, n) wgetnstr(stdscr, s, n)
#define setterm(term) setupterm(term, 1, cptr(long ptr, 0))
#define fixterm() reset_prog_mode()
#define resetterm() reset_shell_mode()
#define saveterm() def_prog_mode()
#define crmode() cbreak()
#define nocrmode() nocbreak()
#define gettmode()
#define getattrs_(win) clng(iif((win), (win)->_attrs, A_NORMAL))
#define getcurx_(win) iif((win), (win)->_curx, ERR_)
#define getcury_(win) iif((win), (win)->_cury, ERR_)
#define getbegx_(win) iif((win), (win)->_begx, ERR_)
#define getbegy_(win) iif((win), (win)->_begy, ERR_)
#define getmaxx_(win) iif((win), (win)->_maxx + 1, ERR_)
#define getmaxy_(win) iif((win), (win)->_maxy + 1, ERR_)
#define getparx_(win) iif((win), (win)->_parx, ERR_)
#define getpary_(win) iif((win), (win)->_pary, ERR_)
#define wstandout_(win) wattrset(win, A_STANDOUT)
#define wstandend_(win) wattrset(win, A_NORMAL)
#define wattron_(win, at) wattr_on(win, NCURSES_CAST(attr_t, at), NULL)
#define wattroff_(win, at) wattr_off(win, NCURSES_CAST(attr_t, at), NULL)

'' TODO: #define wattrset(win,at) ((win) ? ((win)->_attrs = NCURSES_CAST(attr_t, at), OK) : ERR)

#define scroll_(win) wscrl(win, 1)
#define touchwin_(win) wtouchln((win), 0, getmaxy_(win), 1)
#define touchline_(win, s, c) wtouchln((win), s, c, 1)
#define untouchwin_(win) wtouchln((win), 0, getmaxy_(win), 0)
#define box_(win, v, h) wborder(win, v, v, h, h, 0, 0, 0, 0)
#define border_(ls, rs, ts, bs, tl, tr, bl, br) wborder(stdscr, ls, rs, ts, bs, tl, tr, bl, br)
#define hline_(ch, n) whline(stdscr, ch, n)
#define vline_(ch, n) wvline(stdscr, ch, n)
#define winstr_(w, s) winnstr(w, s, -1)
#define winchstr_(w, s) winchnstr(w, s, -1)
#define winsstr_(w, s) winsnstr(w, s, -1)
#define redrawwin_(win) wredrawln(win, 0, (win)->_maxy + 1)
#define waddstr_(win, str) waddnstr(win, str, -1)
#define waddchstr_(win, str) waddchnstr(win, str, -1)
#define COLOR_PAIR_(n) NCURSES_BITS(n, 0)
#define PAIR_NUMBER(a) clng((cast(culong,a) and A_COLOR) shr NCURSES_ATTR_SHIFT)
#define addch_(ch) waddch(stdscr, ch)
#define addchnstr_(str, n) waddchnstr(stdscr, str, n)
#define addchstr_(str) waddchstr_(stdscr, str)
#define addnstr_(str, n) waddnstr(stdscr, str, n)
#define addstr_(str) waddnstr(stdscr, str, -1)
#define attroff_(at) wattroff_(stdscr, at)
#define attron_(at) wattron_(stdscr, at)
#define attrset_(at) wattrset(stdscr, at)
#define attr_get_(ap, cp, o) wattr_get(stdscr, ap, cp, o)
#define attr_off_(a, o) wattr_off(stdscr, a, o)
#define attr_on_(a, o) wattr_on(stdscr, a, o)
#define attr_set_(a, c, o) wattr_set(stdscr, a, c, o)
#define bkgd_(ch) wbkgd(stdscr, ch)
#define bkgdset_(ch) wbkgdset(stdscr, ch)
#define chgat_(n, a, c, o) wchgat(stdscr, n, a, c, o)
#define clear__() wclear(stdscr)
#define clrtobot_() wclrtobot(stdscr)
#define clrtoeol_() wclrtoeol(stdscr)
#define color_set_(c, o) wcolor_set(stdscr, c, o)
#define delch_() wdelch(stdscr)
#define deleteln_() winsdelln(stdscr, -1)
#define echochar_(c) wechochar(stdscr, c)
#define erase__() werase(stdscr)
#define getch_() wgetch(stdscr)
#define getstr_(str) wgetstr_(stdscr, str)
#define inch_() winch(stdscr)
#define inchnstr_(s, n) winchnstr(stdscr, s, n)
#define inchstr_(s) winchstr_(stdscr, s)
#define innstr_(s, n) winnstr(stdscr, s, n)
#define insch_(c) winsch(stdscr, c)
#define insdelln_(n) winsdelln(stdscr, n)
#define insertln_() winsdelln(stdscr, 1)
#define insnstr_(s, n) winsnstr(stdscr, s, n)
#define insstr_(s) winsstr_(stdscr, s)
#define instr__(s) winstr_(stdscr, s)
#define move_(y, x) wmove(stdscr, y, x)
#define refresh_() wrefresh(stdscr)
#define scrl_(n) wscrl(stdscr, n)
#define setscrreg_(t, b) wsetscrreg(stdscr, t, b)
#define standend_() wstandend_(stdscr)
#define standout_() wstandout_(stdscr)
#define timeout_(delay) wtimeout(stdscr, delay)
#define wdeleteln_(win) winsdelln(win, -1)
#define winsertln_(win) winsdelln(win, 1)
#define mvwaddch_(win, y, x, ch) iif(wmove(win, y, x) = ERR_, ERR_, waddch(win, ch))
#define mvwaddchnstr_(win, y, x, str, n) iif(wmove(win, y, x) = ERR_, ERR_, waddchnstr(win, str, n))
#define mvwaddchstr_(win, y, x, str) iif(wmove(win, y, x) = ERR_, ERR_, waddchnstr(win, str, -1))
#define mvwaddnstr_(win, y, x, str, n) iif(wmove(win, y, x) = ERR_, ERR_, waddnstr(win, str, n))
#define mvwaddstr_(win, y, x, str) iif(wmove(win, y, x) = ERR_, ERR_, waddnstr(win, str, -1))
#define mvwdelch_(win, y, x) iif(wmove(win, y, x) = ERR_, ERR_, wdelch(win))
#define mvwchgat_(win, y, x, n, a, c, o) iif(wmove(win, y, x) = ERR_, ERR_, wchgat(win, n, a, c, o))
#define mvwgetch_(win, y, x) iif(wmove(win, y, x) = ERR_, ERR_, wgetch(win))
#define mvwgetnstr_(win, y, x, str, n) iif(wmove(win, y, x) = ERR_, ERR_, wgetnstr(win, str, n))
#define mvwgetstr_(win, y, x, str) iif(wmove(win, y, x) = ERR_, ERR_, wgetstr_(win, str))
#define mvwhline_(win, y, x, c, n) iif(wmove(win, y, x) = ERR_, ERR_, whline(win, c, n))
#define mvwinch_(win, y, x) iif(wmove(win, y, x) = ERR_, NCURSES_CAST(chtype, ERR_), winch(win))
#define mvwinchnstr_(win, y, x, s, n) iif(wmove(win, y, x) = ERR_, ERR_, winchnstr(win, s, n))
#define mvwinchstr_(win, y, x, s) iif(wmove(win, y, x) = ERR_, ERR_, winchstr_(win, s))
#define mvwinnstr_(win, y, x, s, n) iif(wmove(win, y, x) = ERR_, ERR_, winnstr(win, s, n))
#define mvwinsch_(win, y, x, c) iif(wmove(win, y, x) = ERR_, ERR_, winsch(win, c))
#define mvwinsnstr_(win, y, x, s, n) iif(wmove(win, y, x) = ERR_, ERR_, winsnstr(win, s, n))
#define mvwinsstr_(win, y, x, s) iif(wmove(win, y, x) = ERR_, ERR_, winsstr_(win, s))
#define mvwinstr_(win, y, x, s) iif(wmove(win, y, x) = ERR_, ERR_, winstr_(win, s))
#define mvwvline_(win, y, x, c, n) iif(wmove(win, y, x) = ERR_, ERR_, wvline(win, c, n))
#define mvaddch_(y, x, ch) mvwaddch_(stdscr, y, x, ch)
#define mvaddchnstr_(y, x, str, n) mvwaddchnstr_(stdscr, y, x, str, n)
#define mvaddchstr_(y, x, str) mvwaddchstr_(stdscr, y, x, str)
#define mvaddnstr_(y, x, str, n) mvwaddnstr_(stdscr, y, x, str, n)
#define mvaddstr_(y, x, str) mvwaddstr_(stdscr, y, x, str)
#define mvchgat_(y, x, n, a, c, o) mvwchgat_(stdscr, y, x, n, a, c, o)
#define mvdelch_(y, x) mvwdelch_(stdscr, y, x)
#define mvgetch_(y, x) mvwgetch_(stdscr, y, x)
#define mvgetnstr_(y, x, str, n) mvwgetnstr_(stdscr, y, x, str, n)
#define mvgetstr_(y, x, str) mvwgetstr_(stdscr, y, x, str)
#define mvhline_(y, x, c, n) mvwhline_(stdscr, y, x, c, n)
#define mvinch_(y, x) mvwinch_(stdscr, y, x)
#define mvinchnstr_(y, x, s, n) mvwinchnstr_(stdscr, y, x, s, n)
#define mvinchstr_(y, x, s) mvwinchstr_(stdscr, y, x, s)
#define mvinnstr_(y, x, s, n) mvwinnstr_(stdscr, y, x, s, n)
#define mvinsch_(y, x, c) mvwinsch_(stdscr, y, x, c)
#define mvinsnstr_(y, x, s, n) mvwinsnstr_(stdscr, y, x, s, n)
#define mvinsstr_(y, x, s) mvwinsstr_(stdscr, y, x, s)
#define mvinstr_(y, x, s) mvwinstr_(stdscr, y, x, s)
#define mvvline_(y, x, c, n) mvwvline_(stdscr, y, x, c, n)
#define getbkgd_(win) (win)->_bkgd
#define slk_attr_off_(a, v) iif((v), ERR_, slk_attroff(a))
#define slk_attr_on_(a, v) iif((v), ERR_, slk_attron(a))
#define wattr_set(win,a,p,opts) (win)->_attrs = (((a) and not A_COLOR) or cast(attr_t, COLOR_PAIR(p)))
#macro wattr_get(win,a,p,opts)
	if a then
		*(a) = (win)->_attrs
	end if
	if p then
		*(p) = cshort(PAIR_NUMBER((win)->_attrs))
	end if
#endmacro
#define vw_printw_ vwprintw
#define vw_scanw_ vwscanw
#define is_cleared_(win) iif((win), (win)->_clear, FALSE)
#define is_idcok_(win) iif((win), (win)->_idcok, FALSE)
#define is_idlok_(win) iif((win), (win)->_idlok, FALSE)
#define is_immedok_(win) iif((win), (win)->_immed, FALSE)
#define is_keypad_(win) iif((win), (win)->_use_keypad, FALSE)
#define is_leaveok_(win) iif((win), (win)->_leaveok, FALSE)
#define is_nodelay_(win) iif((win), -((win)->_delay = 0), FALSE)
#define is_notimeout_(win) iif((win), (win)->_notimeout, FALSE)
#define is_pad_(win) iif((win), -(((win)->_flags and _ISPAD) <> 0), FALSE)
#define is_scrollok_(win) iif((win), (win)->_scroll, FALSE)
#define is_subwin_(win) iif((win), -(((win)->_flags and _SUBWIN) <> 0), FALSE)
#define is_syncok_(win) iif((win), (win)->_sync, FALSE)
#define wgetparent_(win) iif((win), (win)->_parent, 0)

private function wgetscrreg(byval win as WINDOW_ ptr, byval t as short ptr, byval b as short ptr) as integer
	if win then
		*t = win->_regtop
		*b = win->_regbottom
		function = OK
	else
		function = ERR_
	end if
end function

extern curscr as WINDOW_ ptr
extern newscr as WINDOW_ ptr
extern stdscr as WINDOW_ ptr

'' TODO: extern char ttytype[];

extern COLORS as long
extern COLOR_PAIRS as long
extern COLS as long
extern ESCDELAY as long
extern LINES as long
extern TABSIZE as long

#define KEY_CODE_YES &o400
#define KEY_MIN &o401
#define KEY_BREAK &o401
#define KEY_SRESET &o530
#define KEY_RESET &o531
#define KEY_DOWN &o402
#define KEY_UP &o403
#define KEY_LEFT &o404
#define KEY_RIGHT &o405
#define KEY_HOME &o406
#define KEY_BACKSPACE &o407
#define KEY_F0 &o410
#define KEY_F(n) (KEY_F0 + (n))
#define KEY_DL &o510
#define KEY_IL &o511
#define KEY_DC &o512
#define KEY_IC &o513
#define KEY_EIC &o514
#define KEY_CLEAR &o515
#define KEY_EOS &o516
#define KEY_EOL &o517
#define KEY_SF &o520
#define KEY_SR &o521
#define KEY_NPAGE &o522
#define KEY_PPAGE &o523
#define KEY_STAB &o524
#define KEY_CTAB &o525
#define KEY_CATAB &o526
#define KEY_ENTER &o527
#define KEY_PRINT &o532
#define KEY_LL &o533
#define KEY_A1 &o534
#define KEY_A3 &o535
#define KEY_B2 &o536
#define KEY_C1 &o537
#define KEY_C3 &o540
#define KEY_BTAB &o541
#define KEY_BEG &o542
#define KEY_CANCEL &o543
#define KEY_CLOSE &o544
#define KEY_COMMAND &o545
#define KEY_COPY &o546
#define KEY_CREATE &o547
#define KEY_END &o550
#define KEY_EXIT &o551
#define KEY_FIND &o552
#define KEY_HELP &o553
#define KEY_MARK &o554
#define KEY_MESSAGE &o555
#define KEY_MOVE &o556
#define KEY_NEXT &o557
#define KEY_OPEN &o560
#define KEY_OPTIONS &o561
#define KEY_PREVIOUS &o562
#define KEY_REDO &o563
#define KEY_REFERENCE &o564
#define KEY_REFRESH &o565
#define KEY_REPLACE &o566
#define KEY_RESTART &o567
#define KEY_RESUME &o570
#define KEY_SAVE &o571
#define KEY_SBEG &o572
#define KEY_SCANCEL &o573
#define KEY_SCOMMAND &o574
#define KEY_SCOPY &o575
#define KEY_SCREATE &o576
#define KEY_SDC &o577
#define KEY_SDL &o600
#define KEY_SELECT &o601
#define KEY_SEND &o602
#define KEY_SEOL &o603
#define KEY_SEXIT &o604
#define KEY_SFIND &o605
#define KEY_SHELP &o606
#define KEY_SHOME &o607
#define KEY_SIC &o610
#define KEY_SLEFT &o611
#define KEY_SMESSAGE &o612
#define KEY_SMOVE &o613
#define KEY_SNEXT &o614
#define KEY_SOPTIONS &o615
#define KEY_SPREVIOUS &o616
#define KEY_SPRINT &o617
#define KEY_SREDO &o620
#define KEY_SREPLACE &o621
#define KEY_SRIGHT &o622
#define KEY_SRSUME &o623
#define KEY_SSAVE &o624
#define KEY_SSUSPEND &o625
#define KEY_SUNDO &o626
#define KEY_SUSPEND &o627
#define KEY_UNDO &o630
#define KEY_MOUSE &o631
#define KEY_RESIZE &o632
#define KEY_EVENT &o633
#define KEY_MAX &o777
#define NCURSES_MOUSE_MASK(b, m) ((m) shl (((b) - 1) * 6))
#define NCURSES_BUTTON_RELEASED cast(clong, &o01)
#define NCURSES_BUTTON_PRESSED cast(clong, &o02)
#define NCURSES_BUTTON_CLICKED cast(clong, &o04)
#define NCURSES_DOUBLE_CLICKED cast(clong, &o10)
#define NCURSES_TRIPLE_CLICKED cast(clong, &o20)
#define NCURSES_RESERVED_EVENT cast(clong, &o40)
#define BUTTON1_RELEASED NCURSES_MOUSE_MASK(1, NCURSES_BUTTON_RELEASED)
#define BUTTON1_PRESSED NCURSES_MOUSE_MASK(1, NCURSES_BUTTON_PRESSED)
#define BUTTON1_CLICKED NCURSES_MOUSE_MASK(1, NCURSES_BUTTON_CLICKED)
#define BUTTON1_DOUBLE_CLICKED NCURSES_MOUSE_MASK(1, NCURSES_DOUBLE_CLICKED)
#define BUTTON1_TRIPLE_CLICKED NCURSES_MOUSE_MASK(1, NCURSES_TRIPLE_CLICKED)
#define BUTTON2_RELEASED NCURSES_MOUSE_MASK(2, NCURSES_BUTTON_RELEASED)
#define BUTTON2_PRESSED NCURSES_MOUSE_MASK(2, NCURSES_BUTTON_PRESSED)
#define BUTTON2_CLICKED NCURSES_MOUSE_MASK(2, NCURSES_BUTTON_CLICKED)
#define BUTTON2_DOUBLE_CLICKED NCURSES_MOUSE_MASK(2, NCURSES_DOUBLE_CLICKED)
#define BUTTON2_TRIPLE_CLICKED NCURSES_MOUSE_MASK(2, NCURSES_TRIPLE_CLICKED)
#define BUTTON3_RELEASED NCURSES_MOUSE_MASK(3, NCURSES_BUTTON_RELEASED)
#define BUTTON3_PRESSED NCURSES_MOUSE_MASK(3, NCURSES_BUTTON_PRESSED)
#define BUTTON3_CLICKED NCURSES_MOUSE_MASK(3, NCURSES_BUTTON_CLICKED)
#define BUTTON3_DOUBLE_CLICKED NCURSES_MOUSE_MASK(3, NCURSES_DOUBLE_CLICKED)
#define BUTTON3_TRIPLE_CLICKED NCURSES_MOUSE_MASK(3, NCURSES_TRIPLE_CLICKED)
#define BUTTON4_RELEASED NCURSES_MOUSE_MASK(4, NCURSES_BUTTON_RELEASED)
#define BUTTON4_PRESSED NCURSES_MOUSE_MASK(4, NCURSES_BUTTON_PRESSED)
#define BUTTON4_CLICKED NCURSES_MOUSE_MASK(4, NCURSES_BUTTON_CLICKED)
#define BUTTON4_DOUBLE_CLICKED NCURSES_MOUSE_MASK(4, NCURSES_DOUBLE_CLICKED)
#define BUTTON4_TRIPLE_CLICKED NCURSES_MOUSE_MASK(4, NCURSES_TRIPLE_CLICKED)
#define BUTTON1_RESERVED_EVENT NCURSES_MOUSE_MASK(1, NCURSES_RESERVED_EVENT)
#define BUTTON2_RESERVED_EVENT NCURSES_MOUSE_MASK(2, NCURSES_RESERVED_EVENT)
#define BUTTON3_RESERVED_EVENT NCURSES_MOUSE_MASK(3, NCURSES_RESERVED_EVENT)
#define BUTTON4_RESERVED_EVENT NCURSES_MOUSE_MASK(4, NCURSES_RESERVED_EVENT)
#define BUTTON_CTRL NCURSES_MOUSE_MASK(5, cast(clong, &o001))
#define BUTTON_SHIFT NCURSES_MOUSE_MASK(5, cast(clong, &o002))
#define BUTTON_ALT NCURSES_MOUSE_MASK(5, cast(clong, &o004))
#define REPORT_MOUSE_POSITION NCURSES_MOUSE_MASK(5, cast(clong, &o010))
#define ALL_MOUSE_EVENTS (REPORT_MOUSE_POSITION - 1)
#define BUTTON_RELEASE(e, x) ((e) and NCURSES_MOUSE_MASK(x, &o01))
#define BUTTON_PRESS(e, x) ((e) and NCURSES_MOUSE_MASK(x, &o02))
#define BUTTON_CLICK(e, x) ((e) and NCURSES_MOUSE_MASK(x, &o04))
#define BUTTON_DOUBLE_CLICK(e, x) ((e) and NCURSES_MOUSE_MASK(x, &o10))
#define BUTTON_TRIPLE_CLICK(e, x) ((e) and NCURSES_MOUSE_MASK(x, &o20))
#define BUTTON_RESERVED_EVENT(e, x) ((e) and NCURSES_MOUSE_MASK(x, &o40))

type MEVENT
	id as short
	x as long
	y as long
	z as long
	bstate as mmask_t
end type

declare function has_mouse() as byte
declare function getmouse_ alias "getmouse"(byval as MEVENT ptr) as long
declare function ungetmouse(byval as MEVENT ptr) as long
declare function mousemask(byval as mmask_t, byval as mmask_t ptr) as mmask_t
declare function wenclose(byval as const WINDOW_ ptr, byval as long, byval as long) as byte
declare function mouseinterval(byval as long) as long
declare function wmouse_trafo(byval as const WINDOW_ ptr, byval as long ptr, byval as long ptr, byval as byte) as byte
declare function mouse_trafo(byval as long ptr, byval as long ptr, byval as byte) as byte

#define mouse_trafo_(y, x, to_screen) wmouse_trafo(stdscr, y, x, to_screen)

declare function mcprint(byval as zstring ptr, byval as long) as long
declare function has_key(byval as long) as long
declare sub _tracef(byval as const zstring ptr, ...)
declare sub _tracedump(byval as const zstring ptr, byval as WINDOW_ ptr)
declare function _traceattr(byval as attr_t) as zstring ptr
declare function _traceattr2(byval as long, byval as chtype) as zstring ptr
declare function _nc_tracebits() as zstring ptr
declare function _tracechar(byval as long) as zstring ptr
declare function _tracechtype(byval as chtype) as zstring ptr
declare function _tracechtype2(byval as long, byval as chtype) as zstring ptr

#define _tracech_t _tracechtype
#define _tracech_t2 _tracechtype2

declare function _tracemouse(byval as const MEVENT ptr) as zstring ptr
declare sub trace(byval as const ulong)

#define TRACE_DISABLE &h0000
#define TRACE_TIMES &h0001
#define TRACE_TPUTS &h0002
#define TRACE_UPDATE &h0004
#define TRACE_MOVE &h0008
#define TRACE_CHARPUT &h0010
#define TRACE_ORDINARY &h001F
#define TRACE_CALLS &h0020
#define TRACE_VIRTPUT &h0040
#define TRACE_IEVENT &h0080
#define TRACE_BITS &h0100
#define TRACE_ICALLS &h0200
#define TRACE_CCALLS &h0400
#define TRACE_DATABASE &h0800
#define TRACE_ATTRS &h1000
#define TRACE_SHIFT 13
#define TRACE_MAXIMUM ((1 shl TRACE_SHIFT) - 1)
#define NCURSES_UNCTRL_H_incl 1
#define NCURSES_VERSION "5.9"

declare function unctrl(byval as chtype) as zstring ptr

end extern
