'' FreeBASIC binding for mingw-w64-v4.0.1

#pragma once

#include once "_mingw_unicode.bi"
#include once "vfwmsgs.bi"

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

#define __ERRORS__
#define AMOVIEAPI
const VFW_FIRST_CODE = &h200
const MAX_ERROR_TEXT_LEN = 160
type AMGETERRORTEXTPROCA as function(byval as HRESULT, byval as zstring ptr, byval as DWORD) as WINBOOL
type AMGETERRORTEXTPROCW as function(byval as HRESULT, byval as wstring ptr, byval as DWORD) as WINBOOL

#ifdef UNICODE
	type AMGETERRORTEXTPROC as AMGETERRORTEXTPROCW
#else
	type AMGETERRORTEXTPROC as AMGETERRORTEXTPROCA
#endif

declare function AMGetErrorTextA(byval as HRESULT, byval as LPSTR, byval as DWORD) as DWORD
declare function AMGetErrorTextW(byval as HRESULT, byval as LPWSTR, byval as DWORD) as DWORD

#ifdef UNICODE
	#define AMGetErrorText AMGetErrorTextW
#else
	#define AMGetErrorText AMGetErrorTextA
#endif

end extern
