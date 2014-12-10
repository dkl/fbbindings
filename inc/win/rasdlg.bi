#pragma once

#include once "crt/wchar.bi"
#include once "_mingw_unicode.bi"
#include once "ras.bi"

'' The following symbols have been renamed:
''     #define RASENTRYDLGW => RASENTRYDLGW_
''     #define RASENTRYDLGA => RASENTRYDLGA_
''     #define RasEntryDlg => RasEntryDlg_
''     #define RasDialDlg => RasDialDlg_

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

#define _RASDLG_H_

type RASPBDLGFUNCW as sub(byval as ULONG_PTR, byval as DWORD, byval as LPWSTR, byval as LPVOID)
type RASPBDLGFUNCA as sub(byval as ULONG_PTR, byval as DWORD, byval as LPSTR, byval as LPVOID)

#define RASPBDEVENT_AddEntry 1
#define RASPBDEVENT_EditEntry 2
#define RASPBDEVENT_RemoveEntry 3
#define RASPBDEVENT_DialEntry 4
#define RASPBDEVENT_EditGlobals 5
#define RASPBDEVENT_NoUser 6
#define RASPBDEVENT_NoUserEdit 7
#define RASNOUSER_SmartCard &h00000001
#define RASNOUSERW tagRASNOUSERW

type tagRASNOUSERW field = 4
	dwSize as DWORD
	dwFlags as DWORD
	dwTimeoutMs as DWORD
	szUserName(0 to (256 + 1) - 1) as WCHAR
	szPassword(0 to (256 + 1) - 1) as WCHAR
	szDomain(0 to (15 + 1) - 1) as WCHAR
end type

#define RASNOUSERA tagRASNOUSERA

type tagRASNOUSERA field = 4
	dwSize as DWORD
	dwFlags as DWORD
	dwTimeoutMs as DWORD
	szUserName(0 to (256 + 1) - 1) as CHAR
	szPassword(0 to (256 + 1) - 1) as CHAR
	szDomain(0 to (15 + 1) - 1) as CHAR
end type

#define RASNOUSER __MINGW_NAME_AW(RASNOUSER)

'' TODO: #define LPRASNOUSERW RASNOUSERW*
'' TODO: #define LPRASNOUSERA RASNOUSERA*
'' TODO: #define LPRASNOUSER RASNOUSER*

#define RASPBDFLAG_PositionDlg &h00000001
#define RASPBDFLAG_ForceCloseOnDial &h00000002
#define RASPBDFLAG_NoUser &h00000010
#define RASPBDFLAG_UpdateDefaults &h80000000
#define RASPBDLGW tagRASPBDLGW

type tagRASPBDLGW field = 4
	dwSize as DWORD
	hwndOwner as HWND
	dwFlags as DWORD
	xDlg as LONG_
	yDlg as LONG_
	dwCallbackId as ULONG_PTR
	pCallback as RASPBDLGFUNCW
	dwError as DWORD
	reserved as ULONG_PTR
	reserved2 as ULONG_PTR
end type

#define RASPBDLGA tagRASPBDLGA

type tagRASPBDLGA field = 4
	dwSize as DWORD
	hwndOwner as HWND
	dwFlags as DWORD
	xDlg as LONG_
	yDlg as LONG_
	dwCallbackId as ULONG_PTR
	pCallback as RASPBDLGFUNCA
	dwError as DWORD
	reserved as ULONG_PTR
	reserved2 as ULONG_PTR
end type

#define RASPBDLG __MINGW_NAME_AW(RASPBDLG)
#define RASPBDLGFUNC __MINGW_NAME_AW(RASPBDLGFUNC)

'' TODO: #define LPRASPBDLGW RASPBDLGW*
'' TODO: #define LPRASPBDLGA RASPBDLGA*
'' TODO: #define LPRASPBDLG RASPBDLG*

#define RASEDFLAG_PositionDlg &h00000001
#define RASEDFLAG_NewEntry &h00000002
#define RASEDFLAG_CloneEntry &h00000004
#define RASEDFLAG_NoRename &h00000008
#define RASEDFLAG_ShellOwned &h40000000
#define RASEDFLAG_NewPhoneEntry &h00000010
#define RASEDFLAG_NewTunnelEntry &h00000020
#define RASEDFLAG_NewDirectEntry &h00000040
#define RASEDFLAG_NewBroadbandEntry &h00000080
#define RASEDFLAG_InternetEntry &h00000100
#define RASEDFLAG_NAT &h00000200
#define RASENTRYDLGW_ tagRASENTRYDLGW

type tagRASENTRYDLGW field = 4
	dwSize as DWORD
	hwndOwner as HWND
	dwFlags as DWORD
	xDlg as LONG_
	yDlg as LONG_
	szEntry(0 to (256 + 1) - 1) as WCHAR
	dwError as DWORD
	reserved as ULONG_PTR
	reserved2 as ULONG_PTR
end type

#define RASENTRYDLGA_ tagRASENTRYDLGA

type tagRASENTRYDLGA field = 4
	dwSize as DWORD
	hwndOwner as HWND
	dwFlags as DWORD
	xDlg as LONG_
	yDlg as LONG_
	szEntry(0 to (256 + 1) - 1) as CHAR
	dwError as DWORD
	reserved as ULONG_PTR
	reserved2 as ULONG_PTR
end type

#define RASENTRYDLG __MINGW_NAME_AW(RASENTRYDLG)

'' TODO: #define LPRASENTRYDLGW RASENTRYDLGW*
'' TODO: #define LPRASENTRYDLGA RASENTRYDLGA*
'' TODO: #define LPRASENTRYDLG RASENTRYDLG*

#define RASDDFLAG_PositionDlg &h00000001
#define RASDDFLAG_NoPrompt &h00000002
#define RASDDFLAG_LinkFailure &h80000000
#define RASDIALDLG tagRASDIALDLG

type tagRASDIALDLG field = 4
	dwSize as DWORD
	hwndOwner as HWND
	dwFlags as DWORD
	xDlg as LONG_
	yDlg as LONG_
	dwSubEntry as DWORD
	dwError as DWORD
	reserved as ULONG_PTR
	reserved2 as ULONG_PTR
end type

'' TODO: #define LPRASDIALDLG RASDIALDLG*

type RasCustomDialDlgFn as function(byval hInstDll as HINSTANCE, byval dwFlags as DWORD, byval lpszPhonebook as LPWSTR, byval lpszEntry as LPWSTR, byval lpszPhoneNumber as LPWSTR, byval lpInfo as tagRASDIALDLG ptr, byval pvInfo as PVOID) as WINBOOL

#ifdef UNICODE
	type RasCustomEntryDlgFn as function(byval hInstDll as HINSTANCE, byval lpszPhonebook as LPWSTR, byval lpszEntry as LPWSTR, byval lpInfo as tagRASENTRYDLGW ptr, byval dwFlags as DWORD) as WINBOOL
#else
	type RasCustomEntryDlgFn as function(byval hInstDll as HINSTANCE, byval lpszPhonebook as LPWSTR, byval lpszEntry as LPWSTR, byval lpInfo as tagRASENTRYDLGA ptr, byval dwFlags as DWORD) as WINBOOL
#endif

declare function RasPhonebookDlgA(byval lpszPhonebook as LPSTR, byval lpszEntry as LPSTR, byval lpInfo as tagRASPBDLGA ptr) as WINBOOL
declare function RasPhonebookDlgW(byval lpszPhonebook as LPWSTR, byval lpszEntry as LPWSTR, byval lpInfo as tagRASPBDLGW ptr) as WINBOOL
declare function RasEntryDlgA(byval lpszPhonebook as LPSTR, byval lpszEntry as LPSTR, byval lpInfo as tagRASENTRYDLGA ptr) as WINBOOL
declare function RasEntryDlgW(byval lpszPhonebook as LPWSTR, byval lpszEntry as LPWSTR, byval lpInfo as tagRASENTRYDLGW ptr) as WINBOOL
declare function RasDialDlgA(byval lpszPhonebook as LPSTR, byval lpszEntry as LPSTR, byval lpszPhoneNumber as LPSTR, byval lpInfo as tagRASDIALDLG ptr) as WINBOOL
declare function RasDialDlgW(byval lpszPhonebook as LPWSTR, byval lpszEntry as LPWSTR, byval lpszPhoneNumber as LPWSTR, byval lpInfo as tagRASDIALDLG ptr) as WINBOOL

#define RasPhonebookDlg __MINGW_NAME_AW(RasPhonebookDlg)
#define RasEntryDlg_ __MINGW_NAME_AW(RasEntryDlg)
#define RasDialDlg_ __MINGW_NAME_AW(RasDialDlg)

end extern
