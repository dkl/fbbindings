#pragma once

#include once "_mingw_unicode.bi"
#include once "sspi.bi"

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

#define __SECEXT_H__

type EXTENDED_NAME_FORMAT as long
enum
	NameUnknown = 0
	NameFullyQualifiedDN = 1
	NameSamCompatible = 2
	NameDisplay = 3
	NameUniqueId = 6
	NameCanonical = 7
	NameUserPrincipal = 8
	NameCanonicalEx = 9
	NameServicePrincipal = 10
	NameDnsDomain = 12
end enum

type PEXTENDED_NAME_FORMAT as EXTENDED_NAME_FORMAT ptr

#define GetUserNameEx __MINGW_NAME_AW(GetUserNameEx)
#define GetComputerObjectName __MINGW_NAME_AW(GetComputerObjectName)
#define TranslateName __MINGW_NAME_AW(TranslateName)

declare function GetUserNameExA(byval NameFormat as EXTENDED_NAME_FORMAT, byval lpNameBuffer as LPSTR, byval nSize as PULONG) as BOOLEAN
declare function GetUserNameExW(byval NameFormat as EXTENDED_NAME_FORMAT, byval lpNameBuffer as LPWSTR, byval nSize as PULONG) as BOOLEAN
declare function GetComputerObjectNameA(byval NameFormat as EXTENDED_NAME_FORMAT, byval lpNameBuffer as LPSTR, byval nSize as PULONG) as BOOLEAN
declare function GetComputerObjectNameW(byval NameFormat as EXTENDED_NAME_FORMAT, byval lpNameBuffer as LPWSTR, byval nSize as PULONG) as BOOLEAN
declare function TranslateNameA(byval lpAccountName as LPCSTR, byval AccountNameFormat as EXTENDED_NAME_FORMAT, byval DesiredNameFormat as EXTENDED_NAME_FORMAT, byval lpTranslatedName as LPSTR, byval nSize as PULONG) as BOOLEAN
declare function TranslateNameW(byval lpAccountName as LPCWSTR, byval AccountNameFormat as EXTENDED_NAME_FORMAT, byval DesiredNameFormat as EXTENDED_NAME_FORMAT, byval lpTranslatedName as LPWSTR, byval nSize as PULONG) as BOOLEAN

end extern
