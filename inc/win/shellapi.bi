#pragma once

#include once "winapifamily.bi"
#include once "_mingw_unicode.bi"
#include once "specstrings.bi"

#ifdef __FB_64BIT__
	extern "C"
#elseif (not defined(__FB_64BIT__)) and (_WIN32_WINNT = &h0602)
	extern "Windows"
#endif

#if _WIN32_WINNT = &h0602
	type NET_ADDRESS_INFO_ as NET_ADDRESS_INFO__
#endif

#ifdef __FB_64BIT__
	type HDROP__
		unused as long
	end type
#elseif (not defined(__FB_64BIT__)) and ((_WIN32_WINNT = &h0400) or (_WIN32_WINNT = &h0502))
	extern "Windows"
#endif

#define _INC_SHELLAPI

#ifndef __FB_64BIT__
	type HDROP__ field = 1
		unused as long
	end type
#endif

type HDROP as HDROP__ ptr

#ifdef UNICODE
	#define DragQueryFile DragQueryFileW
	#define ShellExecute ShellExecuteW
	#define FindExecutable FindExecutableW
	#define ShellAbout ShellAboutW
	#define ExtractAssociatedIcon ExtractAssociatedIconW
	#define ExtractAssociatedIconEx ExtractAssociatedIconExW
	#define ExtractIcon ExtractIconW
#else
	#define DragQueryFile DragQueryFileA
	#define ShellExecute ShellExecuteA
	#define FindExecutable FindExecutableA
	#define ShellAbout ShellAboutA
	#define ExtractAssociatedIcon ExtractAssociatedIconA
	#define ExtractAssociatedIconEx ExtractAssociatedIconExA
	#define ExtractIcon ExtractIconA
#endif

declare function DragQueryFileA(byval hDrop as HDROP, byval iFile as UINT, byval lpszFile as LPSTR, byval cch as UINT) as UINT
declare function DragQueryFileW(byval hDrop as HDROP, byval iFile as UINT, byval lpszFile as LPWSTR, byval cch as UINT) as UINT
declare function DragQueryPoint(byval hDrop as HDROP, byval ppt as POINT_ ptr) as WINBOOL
declare sub DragFinish(byval hDrop as HDROP)
declare sub DragAcceptFiles(byval hWnd as HWND, byval fAccept as WINBOOL)
declare function ShellExecuteA(byval hwnd as HWND, byval lpOperation as LPCSTR, byval lpFile as LPCSTR, byval lpParameters as LPCSTR, byval lpDirectory as LPCSTR, byval nShowCmd as INT_) as HINSTANCE
declare function ShellExecuteW(byval hwnd as HWND, byval lpOperation as LPCWSTR, byval lpFile as LPCWSTR, byval lpParameters as LPCWSTR, byval lpDirectory as LPCWSTR, byval nShowCmd as INT_) as HINSTANCE
declare function FindExecutableA(byval lpFile as LPCSTR, byval lpDirectory as LPCSTR, byval lpResult as LPSTR) as HINSTANCE
declare function FindExecutableW(byval lpFile as LPCWSTR, byval lpDirectory as LPCWSTR, byval lpResult as LPWSTR) as HINSTANCE
declare function CommandLineToArgvW(byval lpCmdLine as LPCWSTR, byval pNumArgs as long ptr) as LPWSTR ptr
declare function ShellAboutA(byval hWnd as HWND, byval szApp as LPCSTR, byval szOtherStuff as LPCSTR, byval hIcon as HICON) as INT_
declare function ShellAboutW(byval hWnd as HWND, byval szApp as LPCWSTR, byval szOtherStuff as LPCWSTR, byval hIcon as HICON) as INT_
declare function DuplicateIcon(byval hInst as HINSTANCE, byval hIcon as HICON) as HICON
declare function ExtractAssociatedIconA(byval hInst as HINSTANCE, byval pszIconPath as LPSTR, byval piIcon as WORD ptr) as HICON
declare function ExtractAssociatedIconW(byval hInst as HINSTANCE, byval pszIconPath as LPWSTR, byval piIcon as WORD ptr) as HICON
declare function ExtractAssociatedIconExA(byval hInst as HINSTANCE, byval pszIconPath as LPSTR, byval piIconIndex as WORD ptr, byval piIconId as WORD ptr) as HICON
declare function ExtractAssociatedIconExW(byval hInst as HINSTANCE, byval pszIconPath as LPWSTR, byval piIconIndex as WORD ptr, byval piIconId as WORD ptr) as HICON
declare function ExtractIconA(byval hInst as HINSTANCE, byval pszExeFileName as LPCSTR, byval nIconIndex as UINT) as HICON
declare function ExtractIconW(byval hInst as HINSTANCE, byval pszExeFileName as LPCWSTR, byval nIconIndex as UINT) as HICON

#ifdef __FB_64BIT__
	type _DRAGINFOA
		uSize as UINT
		pt as POINT_
		fNC as WINBOOL
		lpFileList as LPSTR
		grfKeyState as DWORD
	end type
#else
	type _DRAGINFOA field = 1
		uSize as UINT
		pt as POINT_
		fNC as WINBOOL
		lpFileList as LPSTR
		grfKeyState as DWORD
	end type
#endif

type DRAGINFOA as _DRAGINFOA
type LPDRAGINFOA as _DRAGINFOA ptr

#ifdef __FB_64BIT__
	type _DRAGINFOW
		uSize as UINT
		pt as POINT_
		fNC as WINBOOL
		lpFileList as LPWSTR
		grfKeyState as DWORD
	end type
#else
	type _DRAGINFOW field = 1
		uSize as UINT
		pt as POINT_
		fNC as WINBOOL
		lpFileList as LPWSTR
		grfKeyState as DWORD
	end type
#endif

type DRAGINFOW as _DRAGINFOW
type LPDRAGINFOW as _DRAGINFOW ptr

#ifdef UNICODE
	type DRAGINFO as DRAGINFOW
	type LPDRAGINFO as LPDRAGINFOW
#else
	type DRAGINFO as DRAGINFOA
	type LPDRAGINFO as LPDRAGINFOA
#endif

#define ABM_NEW &h00000000
#define ABM_REMOVE &h00000001
#define ABM_QUERYPOS &h00000002
#define ABM_SETPOS &h00000003
#define ABM_GETSTATE &h00000004
#define ABM_GETTASKBARPOS &h00000005
#define ABM_ACTIVATE &h00000006
#define ABM_GETAUTOHIDEBAR &h00000007
#define ABM_SETAUTOHIDEBAR &h00000008
#define ABM_WINDOWPOSCHANGED &h0000009
#define ABM_SETSTATE &h0000000a

#if _WIN32_WINNT = &h0602
	#define ABM_GETAUTOHIDEBAREX &h0000000b
	#define ABM_SETAUTOHIDEBAREX &h0000000c
#endif

#define ABN_STATECHANGE &h0000000
#define ABN_POSCHANGED &h0000001
#define ABN_FULLSCREENAPP &h0000002
#define ABN_WINDOWARRANGE &h0000003
#define ABS_AUTOHIDE &h0000001
#define ABS_ALWAYSONTOP &h0000002
#define ABE_LEFT 0
#define ABE_TOP 1
#define ABE_RIGHT 2
#define ABE_BOTTOM 3

#ifdef __FB_64BIT__
	type _AppBarData
		cbSize as DWORD
		hWnd as HWND
		uCallbackMessage as UINT
		uEdge as UINT
		rc as RECT
		lParam as LPARAM
	end type
#else
	type _AppBarData field = 1
		cbSize as DWORD
		hWnd as HWND
		uCallbackMessage as UINT
		uEdge as UINT
		rc as RECT
		lParam as LPARAM
	end type
#endif

type APPBARDATA as _AppBarData
type PAPPBARDATA as _AppBarData ptr

declare function SHAppBarMessage(byval dwMessage as DWORD, byval pData as PAPPBARDATA) as UINT_PTR
declare function DoEnvironmentSubstA(byval pszSrc as LPSTR, byval cchSrc as UINT) as DWORD
declare function DoEnvironmentSubstW(byval pszSrc as LPWSTR, byval cchSrc as UINT) as DWORD
declare function ExtractIconExA(byval lpszFile as LPCSTR, byval nIconIndex as long, byval phiconLarge as HICON ptr, byval phiconSmall as HICON ptr, byval nIcons as UINT) as UINT
declare function ExtractIconExW(byval lpszFile as LPCWSTR, byval nIconIndex as long, byval phiconLarge as HICON ptr, byval phiconSmall as HICON ptr, byval nIcons as UINT) as UINT

#ifdef UNICODE
	#define DoEnvironmentSubst DoEnvironmentSubstW
	#define ExtractIconEx ExtractIconExW
#else
	#define DoEnvironmentSubst DoEnvironmentSubstA
	#define ExtractIconEx ExtractIconExA
#endif

#define EIRESID(x) ((-1) * clng((x)))
#define FO_MOVE &h1
#define FO_COPY &h2
#define FO_DELETE &h3
#define FO_RENAME &h4
#define FOF_MULTIDESTFILES &h1
#define FOF_CONFIRMMOUSE &h2
#define FOF_SILENT &h4
#define FOF_RENAMEONCOLLISION &h8
#define FOF_NOCONFIRMATION &h10
#define FOF_WANTMAPPINGHANDLE &h20
#define FOF_ALLOWUNDO &h40
#define FOF_FILESONLY &h80
#define FOF_SIMPLEPROGRESS &h100
#define FOF_NOCONFIRMMKDIR &h200
#define FOF_NOERRORUI &h400
#define FOF_NOCOPYSECURITYATTRIBS &h800
#define FOF_NORECURSION &h1000
#define FOF_NO_CONNECTED_ELEMENTS &h2000
#define FOF_WANTNUKEWARNING &h4000
#define FOF_NORECURSEREPARSE &h8000
#define FOF_NO_UI (((FOF_SILENT or FOF_NOCONFIRMATION) or FOF_NOERRORUI) or FOF_NOCONFIRMMKDIR)

type FILEOP_FLAGS as WORD

#define PO_DELETE &h0013
#define PO_RENAME &h0014
#define PO_PORTCHANGE &h0020
#define PO_REN_PORT &h0034

type PRINTEROP_FLAGS as WORD

#ifdef __FB_64BIT__
	type _SHFILEOPSTRUCTA
		hwnd as HWND
		wFunc as UINT
		pFrom as LPCSTR
		pTo as LPCSTR
		fFlags as FILEOP_FLAGS
		fAnyOperationsAborted as WINBOOL
		hNameMappings as LPVOID
		lpszProgressTitle as PCSTR
	end type
#else
	type _SHFILEOPSTRUCTA field = 1
		hwnd as HWND
		wFunc as UINT
		pFrom as LPCSTR
		pTo as LPCSTR
		fFlags as FILEOP_FLAGS
		fAnyOperationsAborted as WINBOOL
		hNameMappings as LPVOID
		lpszProgressTitle as PCSTR
	end type
#endif

type SHFILEOPSTRUCTA as _SHFILEOPSTRUCTA
type LPSHFILEOPSTRUCTA as _SHFILEOPSTRUCTA ptr

#ifdef __FB_64BIT__
	type _SHFILEOPSTRUCTW
		hwnd as HWND
		wFunc as UINT
		pFrom as LPCWSTR
		pTo as LPCWSTR
		fFlags as FILEOP_FLAGS
		fAnyOperationsAborted as WINBOOL
		hNameMappings as LPVOID
		lpszProgressTitle as PCWSTR
	end type
#else
	type _SHFILEOPSTRUCTW field = 1
		hwnd as HWND
		wFunc as UINT
		pFrom as LPCWSTR
		pTo as LPCWSTR
		fFlags as FILEOP_FLAGS
		fAnyOperationsAborted as WINBOOL
		hNameMappings as LPVOID
		lpszProgressTitle as PCWSTR
	end type
#endif

type SHFILEOPSTRUCTW as _SHFILEOPSTRUCTW
type LPSHFILEOPSTRUCTW as _SHFILEOPSTRUCTW ptr

#ifdef UNICODE
	type SHFILEOPSTRUCT as SHFILEOPSTRUCTW
	type LPSHFILEOPSTRUCT as LPSHFILEOPSTRUCTW
#else
	type SHFILEOPSTRUCT as SHFILEOPSTRUCTA
	type LPSHFILEOPSTRUCT as LPSHFILEOPSTRUCTA
#endif

declare function SHFileOperationA(byval lpFileOp as LPSHFILEOPSTRUCTA) as long
declare function SHFileOperationW(byval lpFileOp as LPSHFILEOPSTRUCTW) as long

#ifdef UNICODE
	#define SHFileOperation SHFileOperationW
#else
	#define SHFileOperation SHFileOperationA
#endif

declare sub SHFreeNameMappings(byval hNameMappings as HANDLE)

#ifdef __FB_64BIT__
	type _SHNAMEMAPPINGA
		pszOldPath as LPSTR
		pszNewPath as LPSTR
		cchOldPath as long
		cchNewPath as long
	end type
#else
	type _SHNAMEMAPPINGA field = 1
		pszOldPath as LPSTR
		pszNewPath as LPSTR
		cchOldPath as long
		cchNewPath as long
	end type
#endif

type SHNAMEMAPPINGA as _SHNAMEMAPPINGA
type LPSHNAMEMAPPINGA as _SHNAMEMAPPINGA ptr

#ifdef __FB_64BIT__
	type _SHNAMEMAPPINGW
		pszOldPath as LPWSTR
		pszNewPath as LPWSTR
		cchOldPath as long
		cchNewPath as long
	end type
#else
	type _SHNAMEMAPPINGW field = 1
		pszOldPath as LPWSTR
		pszNewPath as LPWSTR
		cchOldPath as long
		cchNewPath as long
	end type
#endif

type SHNAMEMAPPINGW as _SHNAMEMAPPINGW
type LPSHNAMEMAPPINGW as _SHNAMEMAPPINGW ptr

#ifdef UNICODE
	type SHNAMEMAPPING as SHNAMEMAPPINGW
	type LPSHNAMEMAPPING as LPSHNAMEMAPPINGW
#else
	type SHNAMEMAPPING as SHNAMEMAPPINGA
	type LPSHNAMEMAPPING as LPSHNAMEMAPPINGA
#endif

#define SE_ERR_FNF 2
#define SE_ERR_PNF 3
#define SE_ERR_ACCESSDENIED 5
#define SE_ERR_OOM 8
#define SE_ERR_DLLNOTFOUND 32
#define SE_ERR_SHARE 26
#define SE_ERR_ASSOCINCOMPLETE 27
#define SE_ERR_DDETIMEOUT 28
#define SE_ERR_DDEFAIL 29
#define SE_ERR_DDEBUSY 30
#define SE_ERR_NOASSOC 31
#define SEE_MASK_DEFAULT &h0
#define SEE_MASK_CLASSNAME &h1
#define SEE_MASK_CLASSKEY &h3
#define SEE_MASK_IDLIST &h4
#define SEE_MASK_INVOKEIDLIST &hc

#if (_WIN32_WINNT = &h0400) or (_WIN32_WINNT = &h0502)
	#define SEE_MASK_ICON &h10
#endif

#define SEE_MASK_HOTKEY &h20
#define SEE_MASK_NOCLOSEPROCESS &h40
#define SEE_MASK_CONNECTNETDRV &h80
#define SEE_MASK_NOASYNC &h100
#define SEE_MASK_FLAG_DDEWAIT SEE_MASK_NOASYNC
#define SEE_MASK_DOENVSUBST &h200
#define SEE_MASK_FLAG_NO_UI &h400
#define SEE_MASK_UNICODE &h4000
#define SEE_MASK_NO_CONSOLE &h8000
#define SEE_MASK_ASYNCOK &h100000
#define SEE_MASK_HMONITOR &h200000
#define SEE_MASK_NOZONECHECKS &h800000
#define SEE_MASK_NOQUERYCLASSSTORE &h1000000
#define SEE_MASK_WAITFORINPUTIDLE &h2000000
#define SEE_MASK_FLAG_LOG_USAGE &h4000000

#if _WIN32_WINNT = &h0602
	#define SEE_MASK_FLAG_HINST_IS_SITE &h8000000
#endif

#ifdef __FB_64BIT__
	type _SHELLEXECUTEINFOA
		cbSize as DWORD
		fMask as ULONG
		hwnd as HWND
		lpVerb as LPCSTR
		lpFile as LPCSTR
		lpParameters as LPCSTR
		lpDirectory as LPCSTR
		nShow as long
		hInstApp as HINSTANCE
		lpIDList as any ptr
		lpClass as LPCSTR
		hkeyClass as HKEY
		dwHotKey as DWORD

		union
			hIcon as HANDLE
			hMonitor as HANDLE
		end union

		hProcess as HANDLE
	end type
#else
	type _SHELLEXECUTEINFOA field = 1
		cbSize as DWORD
		fMask as ULONG
		hwnd as HWND
		lpVerb as LPCSTR
		lpFile as LPCSTR
		lpParameters as LPCSTR
		lpDirectory as LPCSTR
		nShow as long
		hInstApp as HINSTANCE
		lpIDList as any ptr
		lpClass as LPCSTR
		hkeyClass as HKEY
		dwHotKey as DWORD

		union field = 1
			hIcon as HANDLE
			hMonitor as HANDLE
		end union

		hProcess as HANDLE
	end type
#endif

type SHELLEXECUTEINFOA as _SHELLEXECUTEINFOA
type LPSHELLEXECUTEINFOA as _SHELLEXECUTEINFOA ptr

#ifdef __FB_64BIT__
	type _SHELLEXECUTEINFOW
		cbSize as DWORD
		fMask as ULONG
		hwnd as HWND
		lpVerb as LPCWSTR
		lpFile as LPCWSTR
		lpParameters as LPCWSTR
		lpDirectory as LPCWSTR
		nShow as long
		hInstApp as HINSTANCE
		lpIDList as any ptr
		lpClass as LPCWSTR
		hkeyClass as HKEY
		dwHotKey as DWORD

		union
			hIcon as HANDLE
			hMonitor as HANDLE
		end union

		hProcess as HANDLE
	end type
#else
	type _SHELLEXECUTEINFOW field = 1
		cbSize as DWORD
		fMask as ULONG
		hwnd as HWND
		lpVerb as LPCWSTR
		lpFile as LPCWSTR
		lpParameters as LPCWSTR
		lpDirectory as LPCWSTR
		nShow as long
		hInstApp as HINSTANCE
		lpIDList as any ptr
		lpClass as LPCWSTR
		hkeyClass as HKEY
		dwHotKey as DWORD

		union field = 1
			hIcon as HANDLE
			hMonitor as HANDLE
		end union

		hProcess as HANDLE
	end type
#endif

type SHELLEXECUTEINFOW as _SHELLEXECUTEINFOW
type LPSHELLEXECUTEINFOW as _SHELLEXECUTEINFOW ptr

#ifdef UNICODE
	type SHELLEXECUTEINFO as SHELLEXECUTEINFOW
	type LPSHELLEXECUTEINFO as LPSHELLEXECUTEINFOW
#else
	type SHELLEXECUTEINFO as SHELLEXECUTEINFOA
	type LPSHELLEXECUTEINFO as LPSHELLEXECUTEINFOA
#endif

declare function ShellExecuteExA(byval pExecInfo as SHELLEXECUTEINFOA ptr) as WINBOOL
declare function ShellExecuteExW(byval pExecInfo as SHELLEXECUTEINFOW ptr) as WINBOOL

#ifdef UNICODE
	#define ShellExecuteEx ShellExecuteExW
#else
	#define ShellExecuteEx ShellExecuteExA
#endif

#ifdef __FB_64BIT__
	type _SHCREATEPROCESSINFOW
		cbSize as DWORD
		fMask as ULONG
		hwnd as HWND
		pszFile as LPCWSTR
		pszParameters as LPCWSTR
		pszCurrentDirectory as LPCWSTR
		hUserToken as HANDLE
		lpProcessAttributes as LPSECURITY_ATTRIBUTES
		lpThreadAttributes as LPSECURITY_ATTRIBUTES
		bInheritHandles as WINBOOL
		dwCreationFlags as DWORD
		lpStartupInfo as LPSTARTUPINFOW
		lpProcessInformation as LPPROCESS_INFORMATION
	end type
#else
	type _SHCREATEPROCESSINFOW field = 1
		cbSize as DWORD
		fMask as ULONG
		hwnd as HWND
		pszFile as LPCWSTR
		pszParameters as LPCWSTR
		pszCurrentDirectory as LPCWSTR
		hUserToken as HANDLE
		lpProcessAttributes as LPSECURITY_ATTRIBUTES
		lpThreadAttributes as LPSECURITY_ATTRIBUTES
		bInheritHandles as WINBOOL
		dwCreationFlags as DWORD
		lpStartupInfo as LPSTARTUPINFOW
		lpProcessInformation as LPPROCESS_INFORMATION
	end type
#endif

type SHCREATEPROCESSINFOW as _SHCREATEPROCESSINFOW
type PSHCREATEPROCESSINFOW as _SHCREATEPROCESSINFOW ptr

declare function SHCreateProcessAsUserW(byval pscpi as PSHCREATEPROCESSINFOW) as WINBOOL

#if _WIN32_WINNT = &h0602
	declare function SHEvaluateSystemCommandTemplate(byval pszCmdTemplate as PCWSTR, byval ppszApplication as PWSTR ptr, byval ppszCommandLine as PWSTR ptr, byval ppszParameters as PWSTR ptr) as HRESULT

	type ASSOCCLASS as long
	enum
		ASSOCCLASS_SHELL_KEY = 0
		ASSOCCLASS_PROGID_KEY
		ASSOCCLASS_PROGID_STR
		ASSOCCLASS_CLSID_KEY
		ASSOCCLASS_CLSID_STR
		ASSOCCLASS_APP_KEY
		ASSOCCLASS_APP_STR
		ASSOCCLASS_SYSTEM_STR
		ASSOCCLASS_FOLDER
		ASSOCCLASS_STAR
		ASSOCCLASS_FIXED_PROGID_STR
		ASSOCCLASS_PROTOCOL_STR
	end enum
#endif

#if defined(__FB_64BIT__) and (_WIN32_WINNT = &h0602)
	type ASSOCIATIONELEMENT
		ac as ASSOCCLASS
		hkClass as HKEY
		pszClass as PCWSTR
	end type
#elseif (not defined(__FB_64BIT__)) and (_WIN32_WINNT = &h0602)
	type ASSOCIATIONELEMENT field = 1
		ac as ASSOCCLASS
		hkClass as HKEY
		pszClass as PCWSTR
	end type
#endif

#if _WIN32_WINNT = &h0602
	declare function AssocCreateForClasses(byval rgClasses as const ASSOCIATIONELEMENT ptr, byval cClasses as ULONG, byval riid as const IID const ptr, byval ppv as any ptr ptr) as HRESULT
#endif

#ifdef __FB_64BIT__
	type _SHQUERYRBINFO
		cbSize as DWORD
		i64Size as longint
		i64NumItems as longint
	end type
#else
	type _SHQUERYRBINFO field = 1
		cbSize as DWORD
		i64Size as longint
		i64NumItems as longint
	end type
#endif

type SHQUERYRBINFO as _SHQUERYRBINFO
type LPSHQUERYRBINFO as _SHQUERYRBINFO ptr

#define SHERB_NOCONFIRMATION &h00000001
#define SHERB_NOPROGRESSUI &h00000002
#define SHERB_NOSOUND &h00000004

declare function SHQueryRecycleBinA(byval pszRootPath as LPCSTR, byval pSHQueryRBInfo as LPSHQUERYRBINFO) as HRESULT
declare function SHQueryRecycleBinW(byval pszRootPath as LPCWSTR, byval pSHQueryRBInfo as LPSHQUERYRBINFO) as HRESULT

#ifdef UNICODE
	#define SHQueryRecycleBin SHQueryRecycleBinW
#else
	#define SHQueryRecycleBin SHQueryRecycleBinA
#endif

declare function SHEmptyRecycleBinA(byval hwnd as HWND, byval pszRootPath as LPCSTR, byval dwFlags as DWORD) as HRESULT
declare function SHEmptyRecycleBinW(byval hwnd as HWND, byval pszRootPath as LPCWSTR, byval dwFlags as DWORD) as HRESULT

#ifdef UNICODE
	#define SHEmptyRecycleBin SHEmptyRecycleBinW
#elseif (not defined(UNICODE)) and ((defined(__FB_64BIT__) and (_WIN32_WINNT = &h0602)) or (not defined(__FB_64BIT__)))
	#define SHEmptyRecycleBin SHEmptyRecycleBinA
#endif

#if _WIN32_WINNT = &h0602
	type QUERY_USER_NOTIFICATION_STATE as long
	enum
		QUNS_NOT_PRESENT = 1
		QUNS_BUSY = 2
		QUNS_RUNNING_D3D_FULL_SCREEN = 3
		QUNS_PRESENTATION_MODE = 4
		QUNS_ACCEPTS_NOTIFICATIONS = 5
		QUNS_QUIET_TIME = 6
		QUNS_APP = 7
	end enum

	declare function SHQueryUserNotificationState(byval pquns as QUERY_USER_NOTIFICATION_STATE ptr) as HRESULT
	declare function SHGetPropertyStoreForWindow(byval hwnd as HWND, byval riid as const IID const ptr, byval ppv as any ptr ptr) as HRESULT
#elseif defined(__FB_64BIT__) and ((not defined(UNICODE)) and ((_WIN32_WINNT = &h0400) or (_WIN32_WINNT = &h0502)))
	#define SHEmptyRecycleBin SHEmptyRecycleBinA
#endif

#ifdef __FB_64BIT__
	type _NOTIFYICONDATAA
		cbSize as DWORD
		hWnd as HWND
		uID as UINT
		uFlags as UINT
		uCallbackMessage as UINT
		hIcon as HICON
		szTip(0 to 127) as CHAR
		dwState as DWORD
		dwStateMask as DWORD
		szInfo(0 to 255) as CHAR

		union
			uTimeout as UINT
			uVersion as UINT
		end union

		szInfoTitle(0 to 63) as CHAR
		dwInfoFlags as DWORD
		guidItem as GUID

		#if defined(__FB_64BIT__) and (_WIN32_WINNT = &h0602)
			hBalloonIcon as HICON
		#endif
	end type
#else
	type _NOTIFYICONDATAA field = 1
		cbSize as DWORD
		hWnd as HWND
		uID as UINT
		uFlags as UINT
		uCallbackMessage as UINT
		hIcon as HICON
		szTip(0 to 127) as CHAR
		dwState as DWORD
		dwStateMask as DWORD
		szInfo(0 to 255) as CHAR

		union field = 1
			uTimeout as UINT
			uVersion as UINT
		end union

		szInfoTitle(0 to 63) as CHAR
		dwInfoFlags as DWORD
		guidItem as GUID

		#if (not defined(__FB_64BIT__)) and (_WIN32_WINNT = &h0602)
			hBalloonIcon as HICON
		#endif
	end type
#endif

type NOTIFYICONDATAA as _NOTIFYICONDATAA
type PNOTIFYICONDATAA as _NOTIFYICONDATAA ptr

#ifdef __FB_64BIT__
	type _NOTIFYICONDATAW
		cbSize as DWORD
		hWnd as HWND
		uID as UINT
		uFlags as UINT
		uCallbackMessage as UINT
		hIcon as HICON
		szTip(0 to 127) as WCHAR
		dwState as DWORD
		dwStateMask as DWORD
		szInfo(0 to 255) as WCHAR

		union
			uTimeout as UINT
			uVersion as UINT
		end union

		szInfoTitle(0 to 63) as WCHAR
		dwInfoFlags as DWORD
		guidItem as GUID

		#if defined(__FB_64BIT__) and (_WIN32_WINNT = &h0602)
			hBalloonIcon as HICON
		#endif
	end type
#else
	type _NOTIFYICONDATAW field = 1
		cbSize as DWORD
		hWnd as HWND
		uID as UINT
		uFlags as UINT
		uCallbackMessage as UINT
		hIcon as HICON
		szTip(0 to 127) as WCHAR
		dwState as DWORD
		dwStateMask as DWORD
		szInfo(0 to 255) as WCHAR

		union field = 1
			uTimeout as UINT
			uVersion as UINT
		end union

		szInfoTitle(0 to 63) as WCHAR
		dwInfoFlags as DWORD
		guidItem as GUID

		#if (not defined(__FB_64BIT__)) and (_WIN32_WINNT = &h0602)
			hBalloonIcon as HICON
		#endif
	end type
#endif

type NOTIFYICONDATAW as _NOTIFYICONDATAW
type PNOTIFYICONDATAW as _NOTIFYICONDATAW ptr

#ifdef UNICODE
	type NOTIFYICONDATA as NOTIFYICONDATAW
	type PNOTIFYICONDATA as PNOTIFYICONDATAW
#else
	type NOTIFYICONDATA as NOTIFYICONDATAA
	type PNOTIFYICONDATA as PNOTIFYICONDATAA
#endif

#define NOTIFYICONDATAA_V1_SIZE FIELD_OFFSET(NOTIFYICONDATAA, szTip[64])
#define NOTIFYICONDATAW_V1_SIZE FIELD_OFFSET(NOTIFYICONDATAW, szTip[64])
#define NOTIFYICONDATAA_V2_SIZE FIELD_OFFSET(NOTIFYICONDATAA, guidItem)
#define NOTIFYICONDATAW_V2_SIZE FIELD_OFFSET(NOTIFYICONDATAW, guidItem)
#define NOTIFYICONDATAA_V3_SIZE FIELD_OFFSET(NOTIFYICONDATAA, hBalloonIcon)
#define NOTIFYICONDATAW_V3_SIZE FIELD_OFFSET(NOTIFYICONDATAW, hBalloonIcon)

#ifdef UNICODE
	#define NOTIFYICONDATA_V1_SIZE NOTIFYICONDATAW_V1_SIZE
	#define NOTIFYICONDATA_V2_SIZE NOTIFYICONDATAW_V2_SIZE
	#define NOTIFYICONDATA_V3_SIZE NOTIFYICONDATAW_V3_SIZE
#else
	#define NOTIFYICONDATA_V1_SIZE NOTIFYICONDATAA_V1_SIZE
	#define NOTIFYICONDATA_V2_SIZE NOTIFYICONDATAA_V2_SIZE
	#define NOTIFYICONDATA_V3_SIZE NOTIFYICONDATAA_V3_SIZE
#endif

#define NIN_SELECT (WM_USER + 0)
#define NINF_KEY &h1
#define NIN_KEYSELECT (NIN_SELECT or NINF_KEY)
#define NIN_BALLOONSHOW (WM_USER + 2)
#define NIN_BALLOONHIDE (WM_USER + 3)
#define NIN_BALLOONTIMEOUT (WM_USER + 4)
#define NIN_BALLOONUSERCLICK (WM_USER + 5)

#if _WIN32_WINNT = &h0602
	#define NIN_POPUPOPEN (WM_USER + 6)
	#define NIN_POPUPCLOSE (WM_USER + 7)
#endif

#define NIM_ADD &h00000000
#define NIM_MODIFY &h00000001
#define NIM_DELETE &h00000002
#define NIM_SETFOCUS &h00000003
#define NIM_SETVERSION &h00000004
#define NOTIFYICON_VERSION 3

#if _WIN32_WINNT = &h0602
	#define NOTIFYICON_VERSION_4 4
#endif

#define NIF_MESSAGE &h00000001
#define NIF_ICON &h00000002
#define NIF_TIP &h00000004
#define NIF_STATE &h00000008
#define NIF_INFO &h00000010

#if (_WIN32_WINNT = &h0502) or (_WIN32_WINNT = &h0602)
	#define NIF_GUID &h00000020
#endif

#if _WIN32_WINNT = &h0602
	#define NIF_REALTIME &h00000040
	#define NIF_SHOWTIP &h00000080
#endif

#define NIS_HIDDEN &h00000001
#define NIS_SHAREDICON &h00000002
#define NIIF_NONE &h00000000
#define NIIF_INFO &h00000001
#define NIIF_WARNING &h00000002
#define NIIF_ERROR &h00000003
#define NIIF_USER &h00000004
#define NIIF_ICON_MASK &h0000000f
#define NIIF_NOSOUND &h00000010

#if _WIN32_WINNT = &h0602
	#define NIIF_LARGE_ICON &h00000020
	#define NIIF_RESPECT_QUIET_TIME &h00000080
#endif

#ifdef __FB_64BIT__
	type _NOTIFYICONIDENTIFIER
		cbSize as DWORD
		hWnd as HWND
		uID as UINT
		guidItem as GUID
	end type
#else
	type _NOTIFYICONIDENTIFIER field = 1
		cbSize as DWORD
		hWnd as HWND
		uID as UINT
		guidItem as GUID
	end type
#endif

type NOTIFYICONIDENTIFIER as _NOTIFYICONIDENTIFIER
type PNOTIFYICONIDENTIFIER as _NOTIFYICONIDENTIFIER ptr

declare function Shell_NotifyIconA(byval dwMessage as DWORD, byval lpData as PNOTIFYICONDATAA) as WINBOOL
declare function Shell_NotifyIconW(byval dwMessage as DWORD, byval lpData as PNOTIFYICONDATAW) as WINBOOL

#ifdef UNICODE
	#define Shell_NotifyIcon Shell_NotifyIconW
#elseif (not defined(UNICODE)) and (_WIN32_WINNT = &h0602)
	#define Shell_NotifyIcon Shell_NotifyIconA
#endif

#if _WIN32_WINNT = &h0602
	declare function Shell_NotifyIconGetRect(byval identifier as const NOTIFYICONIDENTIFIER ptr, byval iconLocation as RECT ptr) as HRESULT
#elseif (not defined(UNICODE)) and ((_WIN32_WINNT = &h0400) or (_WIN32_WINNT = &h0502))
	#define Shell_NotifyIcon Shell_NotifyIconA
#endif

#define SHFILEINFO_DEFINED

#ifdef __FB_64BIT__
	type _SHFILEINFOA
		hIcon as HICON
		iIcon as long
		dwAttributes as DWORD
		szDisplayName(0 to 259) as CHAR
		szTypeName(0 to 79) as CHAR
	end type
#else
	type _SHFILEINFOA field = 1
		hIcon as HICON
		iIcon as long
		dwAttributes as DWORD
		szDisplayName(0 to 259) as CHAR
		szTypeName(0 to 79) as CHAR
	end type
#endif

type SHFILEINFOA as _SHFILEINFOA

#ifdef __FB_64BIT__
	type _SHFILEINFOW
		hIcon as HICON
		iIcon as long
		dwAttributes as DWORD
		szDisplayName(0 to 259) as WCHAR
		szTypeName(0 to 79) as WCHAR
	end type
#else
	type _SHFILEINFOW field = 1
		hIcon as HICON
		iIcon as long
		dwAttributes as DWORD
		szDisplayName(0 to 259) as WCHAR
		szTypeName(0 to 79) as WCHAR
	end type
#endif

type SHFILEINFOW as _SHFILEINFOW

#ifdef UNICODE
	type SHFILEINFO as SHFILEINFOW
#else
	type SHFILEINFO as SHFILEINFOA
#endif

#define SHGFI_ICON &h000000100
#define SHGFI_DISPLAYNAME &h000000200
#define SHGFI_TYPENAME &h000000400
#define SHGFI_ATTRIBUTES &h000000800
#define SHGFI_ICONLOCATION &h000001000
#define SHGFI_EXETYPE &h000002000
#define SHGFI_SYSICONINDEX &h000004000
#define SHGFI_LINKOVERLAY &h000008000
#define SHGFI_SELECTED &h000010000
#define SHGFI_ATTR_SPECIFIED &h000020000
#define SHGFI_LARGEICON &h000000000
#define SHGFI_SMALLICON &h000000001
#define SHGFI_OPENICON &h000000002
#define SHGFI_SHELLICONSIZE &h000000004
#define SHGFI_PIDL &h000000008
#define SHGFI_USEFILEATTRIBUTES &h000000010
#define SHGFI_ADDOVERLAYS &h000000020
#define SHGFI_OVERLAYINDEX &h000000040

declare function SHGetFileInfoA(byval pszPath as LPCSTR, byval dwFileAttributes as DWORD, byval psfi as SHFILEINFOA ptr, byval cbFileInfo as UINT, byval uFlags as UINT) as DWORD_PTR
declare function SHGetFileInfoW(byval pszPath as LPCWSTR, byval dwFileAttributes as DWORD, byval psfi as SHFILEINFOW ptr, byval cbFileInfo as UINT, byval uFlags as UINT) as DWORD_PTR

#ifdef UNICODE
	#define SHGetFileInfo SHGetFileInfoW
#elseif (not defined(UNICODE)) and (_WIN32_WINNT = &h0602)
	#define SHGetFileInfo SHGetFileInfoA
#endif

#if defined(__FB_64BIT__) and (_WIN32_WINNT = &h0602)
	type _SHSTOCKICONINFO
		cbSize as DWORD
		hIcon as HICON
		iSysImageIndex as long
		iIcon as long
		szPath(0 to 259) as WCHAR
	end type
#elseif (not defined(__FB_64BIT__)) and (_WIN32_WINNT = &h0602)
	type _SHSTOCKICONINFO field = 1
		cbSize as DWORD
		hIcon as HICON
		iSysImageIndex as long
		iIcon as long
		szPath(0 to 259) as WCHAR
	end type
#endif

#if _WIN32_WINNT = &h0602
	type SHSTOCKICONINFO as _SHSTOCKICONINFO

	#define SHGSI_ICONLOCATION 0
	#define SHGSI_ICON SHGFI_ICON
	#define SHGSI_SYSICONINDEX SHGFI_SYSICONINDEX
	#define SHGSI_LINKOVERLAY SHGFI_LINKOVERLAY
	#define SHGSI_SELECTED SHGFI_SELECTED
	#define SHGSI_LARGEICON SHGFI_LARGEICON
	#define SHGSI_SMALLICON SHGFI_SMALLICON
	#define SHGSI_SHELLICONSIZE SHGFI_SHELLICONSIZE

	type SHSTOCKICONID as long
	enum
		SIID_DOCNOASSOC = 0
		SIID_DOCASSOC = 1
		SIID_APPLICATION = 2
		SIID_FOLDER = 3
		SIID_FOLDEROPEN = 4
		SIID_DRIVE525 = 5
		SIID_DRIVE35 = 6
		SIID_DRIVEREMOVE = 7
		SIID_DRIVEFIXED = 8
		SIID_DRIVENET = 9
		SIID_DRIVENETDISABLED = 10
		SIID_DRIVECD = 11
		SIID_DRIVERAM = 12
		SIID_WORLD = 13
		SIID_SERVER = 15
		SIID_PRINTER = 16
		SIID_MYNETWORK = 17
		SIID_FIND = 22
		SIID_HELP = 23
		SIID_SHARE = 28
		SIID_LINK = 29
		SIID_SLOWFILE = 30
		SIID_RECYCLER = 31
		SIID_RECYCLERFULL = 32
		SIID_MEDIACDAUDIO = 40
		SIID_LOCK = 47
		SIID_AUTOLIST = 49
		SIID_PRINTERNET = 50
		SIID_SERVERSHARE = 51
		SIID_PRINTERFAX = 52
		SIID_PRINTERFAXNET = 53
		SIID_PRINTERFILE = 54
		SIID_STACK = 55
		SIID_MEDIASVCD = 56
		SIID_STUFFEDFOLDER = 57
		SIID_DRIVEUNKNOWN = 58
		SIID_DRIVEDVD = 59
		SIID_MEDIADVD = 60
		SIID_MEDIADVDRAM = 61
		SIID_MEDIADVDRW = 62
		SIID_MEDIADVDR = 63
		SIID_MEDIADVDROM = 64
		SIID_MEDIACDAUDIOPLUS = 65
		SIID_MEDIACDRW = 66
		SIID_MEDIACDR = 67
		SIID_MEDIACDBURN = 68
		SIID_MEDIABLANKCD = 69
		SIID_MEDIACDROM = 70
		SIID_AUDIOFILES = 71
		SIID_IMAGEFILES = 72
		SIID_VIDEOFILES = 73
		SIID_MIXEDFILES = 74
		SIID_FOLDERBACK = 75
		SIID_FOLDERFRONT = 76
		SIID_SHIELD = 77
		SIID_WARNING = 78
		SIID_INFO = 79
		SIID_ERROR = 80
		SIID_KEY = 81
		SIID_SOFTWARE = 82
		SIID_RENAME = 83
		SIID_DELETE = 84
		SIID_MEDIAAUDIODVD = 85
		SIID_MEDIAMOVIEDVD = 86
		SIID_MEDIAENHANCEDCD = 87
		SIID_MEDIAENHANCEDDVD = 88
		SIID_MEDIAHDDVD = 89
		SIID_MEDIABLURAY = 90
		SIID_MEDIAVCD = 91
		SIID_MEDIADVDPLUSR = 92
		SIID_MEDIADVDPLUSRW = 93
		SIID_DESKTOPPC = 94
		SIID_MOBILEPC = 95
		SIID_USERS = 96
		SIID_MEDIASMARTMEDIA = 97
		SIID_MEDIACOMPACTFLASH = 98
		SIID_DEVICECELLPHONE = 99
		SIID_DEVICECAMERA = 100
		SIID_DEVICEVIDEOCAMERA = 101
		SIID_DEVICEAUDIOPLAYER = 102
		SIID_NETWORKCONNECT = 103
		SIID_INTERNET = 104
		SIID_ZIPFILE = 105
		SIID_SETTINGS = 106
		SIID_DRIVEHDDVD = 132
		SIID_DRIVEBD = 133
		SIID_MEDIAHDDVDROM = 134
		SIID_MEDIAHDDVDR = 135
		SIID_MEDIAHDDVDRAM = 136
		SIID_MEDIABDROM = 137
		SIID_MEDIABDR = 138
		SIID_MEDIABDRE = 139
		SIID_CLUSTEREDDRIVE = 140
		SIID_MAX_ICONS = 175
	end enum

	#define SIID_INVALID cast(SHSTOCKICONID, -1)

	declare function SHGetStockIconInfo(byval siid as SHSTOCKICONID, byval uFlags as UINT, byval psii as SHSTOCKICONINFO ptr) as HRESULT
#elseif (not defined(UNICODE)) and ((_WIN32_WINNT = &h0400) or (_WIN32_WINNT = &h0502))
	#define SHGetFileInfo SHGetFileInfoA
#endif

#define SHGetDiskFreeSpace SHGetDiskFreeSpaceEx

declare function SHGetDiskFreeSpaceExA(byval pszDirectoryName as LPCSTR, byval pulFreeBytesAvailableToCaller as ULARGE_INTEGER ptr, byval pulTotalNumberOfBytes as ULARGE_INTEGER ptr, byval pulTotalNumberOfFreeBytes as ULARGE_INTEGER ptr) as WINBOOL
declare function SHGetDiskFreeSpaceExW(byval pszDirectoryName as LPCWSTR, byval pulFreeBytesAvailableToCaller as ULARGE_INTEGER ptr, byval pulTotalNumberOfBytes as ULARGE_INTEGER ptr, byval pulTotalNumberOfFreeBytes as ULARGE_INTEGER ptr) as WINBOOL
declare function SHGetNewLinkInfoA(byval pszLinkTo as LPCSTR, byval pszDir as LPCSTR, byval pszName as LPSTR, byval pfMustCopy as WINBOOL ptr, byval uFlags as UINT) as WINBOOL
declare function SHGetNewLinkInfoW(byval pszLinkTo as LPCWSTR, byval pszDir as LPCWSTR, byval pszName as LPWSTR, byval pfMustCopy as WINBOOL ptr, byval uFlags as UINT) as WINBOOL

#ifdef UNICODE
	#define SHGetDiskFreeSpaceEx SHGetDiskFreeSpaceExW
	#define SHGetNewLinkInfo SHGetNewLinkInfoW
#else
	#define SHGetDiskFreeSpaceEx SHGetDiskFreeSpaceExA
	#define SHGetNewLinkInfo SHGetNewLinkInfoA
#endif

#define SHGNLI_PIDL &h000000001
#define SHGNLI_PREFIXNAME &h000000002
#define SHGNLI_NOUNIQUE &h000000004
#define SHGNLI_NOLNK &h000000008

#if (_WIN32_WINNT = &h0502) or (_WIN32_WINNT = &h0602)
	#define SHGNLI_NOLOCNAME &h000000010
#endif

#if _WIN32_WINNT = &h0602
	#define SHGNLI_USEURLEXT &h000000020
#endif

#define PRINTACTION_OPEN 0
#define PRINTACTION_PROPERTIES 1
#define PRINTACTION_NETINSTALL 2
#define PRINTACTION_NETINSTALLLINK 3
#define PRINTACTION_TESTPAGE 4
#define PRINTACTION_OPENNETPRN 5
#define PRINTACTION_DOCUMENTDEFAULTS 6
#define PRINTACTION_SERVERPROPERTIES 7

declare function SHInvokePrinterCommandA(byval hwnd as HWND, byval uAction as UINT, byval lpBuf1 as LPCSTR, byval lpBuf2 as LPCSTR, byval fModal as WINBOOL) as WINBOOL
declare function SHInvokePrinterCommandW(byval hwnd as HWND, byval uAction as UINT, byval lpBuf1 as LPCWSTR, byval lpBuf2 as LPCWSTR, byval fModal as WINBOOL) as WINBOOL

#ifdef UNICODE
	#define SHInvokePrinterCommand SHInvokePrinterCommandW
#elseif (not defined(UNICODE)) and (_WIN32_WINNT = &h0602)
	#define SHInvokePrinterCommand SHInvokePrinterCommandA
#endif

#if defined(__FB_64BIT__) and (_WIN32_WINNT = &h0602)
	type _OPEN_PRINTER_PROPS_INFOA
		dwSize as DWORD
		pszSheetName as LPSTR
		uSheetIndex as UINT
		dwFlags as DWORD
		bModal as WINBOOL
	end type
#elseif (not defined(__FB_64BIT__)) and (_WIN32_WINNT = &h0602)
	type _OPEN_PRINTER_PROPS_INFOA field = 1
		dwSize as DWORD
		pszSheetName as LPSTR
		uSheetIndex as UINT
		dwFlags as DWORD
		bModal as WINBOOL
	end type
#endif

#if _WIN32_WINNT = &h0602
	type OPEN_PRINTER_PROPS_INFOA as _OPEN_PRINTER_PROPS_INFOA
	type POPEN_PRINTER_PROPS_INFOA as _OPEN_PRINTER_PROPS_INFOA ptr
#endif

#if defined(__FB_64BIT__) and (_WIN32_WINNT = &h0602)
	type _OPEN_PRINTER_PROPS_INFOW
		dwSize as DWORD
		pszSheetName as LPWSTR
		uSheetIndex as UINT
		dwFlags as DWORD
		bModal as WINBOOL
	end type
#elseif (not defined(__FB_64BIT__)) and (_WIN32_WINNT = &h0602)
	type _OPEN_PRINTER_PROPS_INFOW field = 1
		dwSize as DWORD
		pszSheetName as LPWSTR
		uSheetIndex as UINT
		dwFlags as DWORD
		bModal as WINBOOL
	end type
#endif

#if _WIN32_WINNT = &h0602
	type OPEN_PRINTER_PROPS_INFOW as _OPEN_PRINTER_PROPS_INFOW
	type POPEN_PRINTER_PROPS_INFOW as _OPEN_PRINTER_PROPS_INFOW ptr
#endif

#if defined(UNICODE) and (_WIN32_WINNT = &h0602)
	type OPEN_PRINTER_PROPS_INFO as OPEN_PRINTER_PROPS_INFOW
	type POPEN_PRINTER_PROPS_INFO as POPEN_PRINTER_PROPS_INFOW
#elseif (not defined(UNICODE)) and (_WIN32_WINNT = &h0602)
	type OPEN_PRINTER_PROPS_INFO as OPEN_PRINTER_PROPS_INFOA
	type POPEN_PRINTER_PROPS_INFO as POPEN_PRINTER_PROPS_INFOA
#endif

#if _WIN32_WINNT = &h0602
	#define PRINT_PROP_FORCE_NAME &h01
#elseif (not defined(UNICODE)) and ((_WIN32_WINNT = &h0400) or (_WIN32_WINNT = &h0502))
	#define SHInvokePrinterCommand SHInvokePrinterCommandA
#endif

declare function SHLoadNonloadedIconOverlayIdentifiers() as HRESULT
declare function SHIsFileAvailableOffline(byval pwszPath as PCWSTR, byval pdwStatus as DWORD ptr) as HRESULT

#define OFFLINE_STATUS_LOCAL &h0001
#define OFFLINE_STATUS_REMOTE &h0002
#define OFFLINE_STATUS_INCOMPLETE &h0004

declare function SHSetLocalizedName(byval pszPath as PCWSTR, byval pszResModule as PCWSTR, byval idsRes as long) as HRESULT

#if _WIN32_WINNT = &h0602
	declare function SHRemoveLocalizedName(byval pszPath as PCWSTR) as HRESULT
	declare function SHGetLocalizedName(byval pszPath as PCWSTR, byval pszResModule as PWSTR, byval cch as UINT, byval pidsRes as long ptr) as HRESULT
#endif

declare function ShellMessageBoxA cdecl(byval hAppInst as HINSTANCE, byval hWnd as HWND, byval lpcText as LPCSTR, byval lpcTitle as LPCSTR, byval fuStyle as UINT, ...) as long
declare function ShellMessageBoxW cdecl(byval hAppInst as HINSTANCE, byval hWnd as HWND, byval lpcText as LPCWSTR, byval lpcTitle as LPCWSTR, byval fuStyle as UINT, ...) as long

#ifdef UNICODE
	#define ShellMessageBox ShellMessageBoxW
#else
	#define ShellMessageBox ShellMessageBoxA
#endif

declare function IsLFNDriveA(byval pszPath as LPCSTR) as WINBOOL
declare function IsLFNDriveW(byval pszPath as LPCWSTR) as WINBOOL

#ifdef UNICODE
	#define IsLFNDrive IsLFNDriveW
#elseif (not defined(UNICODE)) and ((_WIN32_WINNT = &h0502) or (_WIN32_WINNT = &h0602))
	#define IsLFNDrive IsLFNDriveA
#endif

#if (_WIN32_WINNT = &h0502) or (_WIN32_WINNT = &h0602)
	declare function SHEnumerateUnreadMailAccountsA(byval hKeyUser as HKEY, byval dwIndex as DWORD, byval pszMailAddress as LPSTR, byval cchMailAddress as long) as HRESULT
	declare function SHEnumerateUnreadMailAccountsW(byval hKeyUser as HKEY, byval dwIndex as DWORD, byval pszMailAddress as LPWSTR, byval cchMailAddress as long) as HRESULT
	declare function SHGetUnreadMailCountA(byval hKeyUser as HKEY, byval pszMailAddress as LPCSTR, byval pdwCount as DWORD ptr, byval pFileTime as FILETIME ptr, byval pszShellExecuteCommand as LPSTR, byval cchShellExecuteCommand as long) as HRESULT
	declare function SHGetUnreadMailCountW(byval hKeyUser as HKEY, byval pszMailAddress as LPCWSTR, byval pdwCount as DWORD ptr, byval pFileTime as FILETIME ptr, byval pszShellExecuteCommand as LPWSTR, byval cchShellExecuteCommand as long) as HRESULT
	declare function SHSetUnreadMailCountA(byval pszMailAddress as LPCSTR, byval dwCount as DWORD, byval pszShellExecuteCommand as LPCSTR) as HRESULT
	declare function SHSetUnreadMailCountW(byval pszMailAddress as LPCWSTR, byval dwCount as DWORD, byval pszShellExecuteCommand as LPCWSTR) as HRESULT
#endif

#if defined(UNICODE) and ((_WIN32_WINNT = &h0502) or (_WIN32_WINNT = &h0602))
	#define SHEnumerateUnreadMailAccounts SHEnumerateUnreadMailAccountsW
	#define SHGetUnreadMailCount SHGetUnreadMailCountW
	#define SHSetUnreadMailCount SHSetUnreadMailCountW
#elseif (not defined(UNICODE)) and ((_WIN32_WINNT = &h0502) or (_WIN32_WINNT = &h0602))
	#define SHEnumerateUnreadMailAccounts SHEnumerateUnreadMailAccountsA
	#define SHGetUnreadMailCount SHGetUnreadMailCountA
	#define SHSetUnreadMailCount SHSetUnreadMailCountA
#endif

#if (_WIN32_WINNT = &h0502) or (_WIN32_WINNT = &h0602)
	declare function SHTestTokenMembership(byval hToken as HANDLE, byval ulRID as ULONG) as WINBOOL
	declare function SHGetImageList(byval iImageList as long, byval riid as const IID const ptr, byval ppvObj as any ptr ptr) as HRESULT

	#define SHIL_LARGE 0
	#define SHIL_SMALL 1
	#define SHIL_EXTRALARGE 2
	#define SHIL_SYSSMALL 3
#endif

#if _WIN32_WINNT = &h0502
	#define SHIL_LAST SHIL_SYSSMALL
#elseif _WIN32_WINNT = &h0602
	#define SHIL_JUMBO 4
	#define SHIL_LAST SHIL_JUMBO
#endif

#if (_WIN32_WINNT = &h0502) or (_WIN32_WINNT = &h0602)
	type PFNCANSHAREFOLDERW as function(byval pszPath as PCWSTR) as HRESULT
	type PFNSHOWSHAREFOLDERUIW as function(byval hwndParent as HWND, byval pszPath as PCWSTR) as HRESULT
#endif

#if (not defined(__FB_64BIT__)) and (_WIN32_WINNT = &h0602)
	declare function InitNetworkAddressControl() as WINBOOL
#endif

#if _WIN32_WINNT = &h0602
	#define WC_NETADDRESS wstr("msctls_netaddress")
#endif

#if defined(__FB_64BIT__) and (_WIN32_WINNT = &h0602)
	declare function InitNetworkAddressControl() as WINBOOL
#endif

#if _WIN32_WINNT = &h0602
	#define NCM_GETADDRESS (WM_USER + 1)
	#define NetAddr_GetAddress(hwnd, pv) cast(HRESULT, SNDMSG(hwnd, NCM_GETADDRESS, 0, cast(LPARAM, pv)))

	type tagNC_ADDRESS
		pAddrInfo as NET_ADDRESS_INFO_ ptr
		PortNumber as USHORT
		PrefixLength as UBYTE
	end type

	type NC_ADDRESS as tagNC_ADDRESS
	type PNC_ADDRESS as tagNC_ADDRESS ptr

	#define NCM_SETALLOWTYPE (WM_USER + 2)
	#define NetAddr_SetAllowType(hwnd, addrMask) cast(HRESULT, SNDMSG(hwnd, NCM_SETALLOWTYPE, cast(WPARAM, addrMask), 0))
	#define NCM_GETALLOWTYPE (WM_USER + 3)
	#define NetAddr_GetAllowType(hwnd) cast(DWORD, SNDMSG(hwnd, NCM_GETALLOWTYPE, 0, 0))
	#define NCM_DISPLAYERRORTIP (WM_USER + 4)
	#define NetAddr_DisplayErrorTip(hwnd) cast(HRESULT, SNDMSG(hwnd, NCM_DISPLAYERRORTIP, 0, 0))

	declare function SHGetDriveMedia(byval pszDrive as PCWSTR, byval pdwMediaContent as DWORD ptr) as HRESULT
#elseif (not defined(UNICODE)) and (_WIN32_WINNT = &h0400)
	#define IsLFNDrive IsLFNDriveA
#endif

end extern
