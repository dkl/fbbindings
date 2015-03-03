#pragma once

#include once "_mingw_unicode.bi"
#include once "ras.bi"

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
	szUserName as wstring * 256 + 1
	szPassword as wstring * 256 + 1
	szDomain as wstring * 15 + 1
end type

#define RASNOUSERA tagRASNOUSERA

type tagRASNOUSERA field = 4
	dwSize as DWORD
	dwFlags as DWORD
	dwTimeoutMs as DWORD
	szUserName as zstring * 256 + 1
	szPassword as zstring * 256 + 1
	szDomain as zstring * 15 + 1
end type

#ifdef UNICODE
	#define RASNOUSER RASNOUSERW
#else
	#define RASNOUSER RASNOUSERA
#endif

#define LPRASNOUSERW '' TODO: RASNOUSERW*
#define LPRASNOUSERA '' TODO: RASNOUSERA*
#define LPRASNOUSER '' TODO: RASNOUSER*
#define RASPBDFLAG_PositionDlg &h00000001
#define RASPBDFLAG_ForceCloseOnDial &h00000002
#define RASPBDFLAG_NoUser &h00000010
#define RASPBDFLAG_UpdateDefaults &h80000000
#define RASPBDLGW tagRASPBDLGW

type tagRASPBDLGW field = 4
	dwSize as DWORD
	hwndOwner as HWND
	dwFlags as DWORD
	xDlg as LONG
	yDlg as LONG
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
	xDlg as LONG
	yDlg as LONG
	dwCallbackId as ULONG_PTR
	pCallback as RASPBDLGFUNCA
	dwError as DWORD
	reserved as ULONG_PTR
	reserved2 as ULONG_PTR
end type

#ifdef UNICODE
	#define RASPBDLG RASPBDLGW
	#define RASPBDLGFUNC RASPBDLGFUNCW
#else
	#define RASPBDLG RASPBDLGA
	#define RASPBDLGFUNC RASPBDLGFUNCA
#endif

#define LPRASPBDLGW '' TODO: RASPBDLGW*
#define LPRASPBDLGA '' TODO: RASPBDLGA*
#define LPRASPBDLG '' TODO: RASPBDLG*
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
#define RASENTRYDLGW tagRASENTRYDLGW

type tagRASENTRYDLGW field = 4
	dwSize as DWORD
	hwndOwner as HWND
	dwFlags as DWORD
	xDlg as LONG
	yDlg as LONG
	szEntry as wstring * 256 + 1
	dwError as DWORD
	reserved as ULONG_PTR
	reserved2 as ULONG_PTR
end type

#define RASENTRYDLGA tagRASENTRYDLGA

type tagRASENTRYDLGA field = 4
	dwSize as DWORD
	hwndOwner as HWND
	dwFlags as DWORD
	xDlg as LONG
	yDlg as LONG
	szEntry as zstring * 256 + 1
	dwError as DWORD
	reserved as ULONG_PTR
	reserved2 as ULONG_PTR
end type

#ifdef UNICODE
	#define RASENTRYDLG RASENTRYDLGW
#else
	#define RASENTRYDLG RASENTRYDLGA
#endif

#define LPRASENTRYDLGW '' TODO: RASENTRYDLGW*
#define LPRASENTRYDLGA '' TODO: RASENTRYDLGA*
#define LPRASENTRYDLG '' TODO: RASENTRYDLG*
#define RASDDFLAG_PositionDlg &h00000001
#define RASDDFLAG_NoPrompt &h00000002
#define RASDDFLAG_LinkFailure &h80000000
#define RASDIALDLG tagRASDIALDLG

type tagRASDIALDLG field = 4
	dwSize as DWORD
	hwndOwner as HWND
	dwFlags as DWORD
	xDlg as LONG
	yDlg as LONG
	dwSubEntry as DWORD
	dwError as DWORD
	reserved as ULONG_PTR
	reserved2 as ULONG_PTR
end type

#define LPRASDIALDLG '' TODO: RASDIALDLG*

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

#ifdef UNICODE
	#define RasPhonebookDlg RasPhonebookDlgW
	#define RasEntryDlg RasEntryDlgW
	#define RasDialDlg RasDialDlgW
#else
	#define RasPhonebookDlg RasPhonebookDlgA
	#define RasEntryDlg RasEntryDlgA
	#define RasDialDlg RasDialDlgA
#endif

end extern
