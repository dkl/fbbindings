#pragma once

#include once "crt/wchar.bi"
#include once "_mingw_unicode.bi"
#include once "dplay.bi"

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

type IDirectPlayLobbyVtbl as IDirectPlayLobbyVtbl_
type IDirectPlayLobby2Vtbl as IDirectPlayLobby2Vtbl_
type IDirectPlayLobby3Vtbl as IDirectPlayLobby3Vtbl_

#define __WINE_DPLOBBY_H

extern CLSID_DirectPlayLobby as const GUID
extern IID_IDirectPlayLobby as const GUID

type LPDIRECTPLAYLOBBY as IDirectPlayLobby ptr

extern IID_IDirectPlayLobbyA as const GUID

type IDirectPlayLobbyA as IDirectPlayLobby
type LPDIRECTPLAYLOBBYA as IDirectPlayLobby ptr

extern IID_IDirectPlayLobby2 as const GUID

type LPDIRECTPLAYLOBBY2 as IDirectPlayLobby2 ptr

extern IID_IDirectPlayLobby2A as const GUID

type IDirectPlayLobby2A as IDirectPlayLobby2
type LPDIRECTPLAYLOBBY2A as IDirectPlayLobby2 ptr

extern IID_IDirectPlayLobby3 as const GUID

type LPDIRECTPLAYLOBBY3 as IDirectPlayLobby3 ptr

extern IID_IDirectPlayLobby3A as const GUID

type IDirectPlayLobby3A as IDirectPlayLobby3
type LPDIRECTPLAYLOBBY3A as IDirectPlayLobby3 ptr

extern DPLPROPERTY_MessagesSupported as const GUID
extern DPLPROPERTY_LobbyGuid as const GUID
extern DPLPROPERTY_PlayerGuid as const GUID
extern DPLPROPERTY_PlayerScore as const GUID

type tagDPLDATA_PLAYERGUID
	guidPlayer as GUID
	dwPlayerFlags as DWORD
end type

type DPLDATA_PLAYERGUID as tagDPLDATA_PLAYERGUID
type LPDPLDATA_PLAYERGUID as tagDPLDATA_PLAYERGUID ptr

type tagDPLDATA_PLAYERSCORE
	dwScoreCount as DWORD
	Score(0 to 0) as LONG_
end type

type DPLDATA_PLAYERSCORE as tagDPLDATA_PLAYERSCORE
type LPDPLDATA_PLAYERSCORE as tagDPLDATA_PLAYERSCORE ptr

#define DPLMSG_SYSTEM &h00000001
#define DPLMSG_STANDARD &h00000002
#define DPLAD_SYSTEM DPLMSG_SYSTEM
#define DPLSYS_CONNECTIONSETTINGSREAD &h00000001
#define DPLSYS_DPLAYCONNECTFAILED &h00000002
#define DPLSYS_DPLAYCONNECTSUCCEEDED &h00000003
#define DPLSYS_APPTERMINATED &h00000004
#define DPLSYS_SETPROPERTY &h00000005
#define DPLSYS_SETPROPERTYRESPONSE &h00000006
#define DPLSYS_GETPROPERTY &h00000007
#define DPLSYS_GETPROPERTYRESPONSE &h00000008
#define DPLSYS_NEWSESSIONHOST &h00000009
#define DPLSYS_NEWCONNECTIONSETTINGS &h0000000A

type tagDPLMSG_GENERIC
	dwType as DWORD
end type

type DPLMSG_GENERIC as tagDPLMSG_GENERIC
type LPDPLMSG_GENERIC as tagDPLMSG_GENERIC ptr

type tagDPLMSG_SYSTEMMESSAGE
	dwType as DWORD
	guidInstance as GUID
end type

type DPLMSG_SYSTEMMESSAGE as tagDPLMSG_SYSTEMMESSAGE
type LPDPLMSG_SYSTEMMESSAGE as tagDPLMSG_SYSTEMMESSAGE ptr

type tagDPLMSG_SETPROPERTY
	dwType as DWORD
	dwRequestID as DWORD
	guidPlayer as GUID
	guidPropertyTag as GUID
	dwDataSize as DWORD
	dwPropertyData(0 to 0) as DWORD
end type

type DPLMSG_SETPROPERTY as tagDPLMSG_SETPROPERTY
type LPDPLMSG_SETPROPERTY as tagDPLMSG_SETPROPERTY ptr

#define DPL_NOCONFIRMATION 0

type tagDPLMSG_SETPROPERTYRESPONSE
	dwType as DWORD
	dwRequestID as DWORD
	guidPlayer as GUID
	guidPropertyTag as GUID
	hr as HRESULT
end type

type DPLMSG_SETPROPERTYRESPONSE as tagDPLMSG_SETPROPERTYRESPONSE
type LPDPLMSG_SETPROPERTYRESPONSE as tagDPLMSG_SETPROPERTYRESPONSE ptr

type tagDPLMSG_GETPROPERTY
	dwType as DWORD
	dwRequestID as DWORD
	guidPlayer as GUID
	guidPropertyTag as GUID
end type

type DPLMSG_GETPROPERTY as tagDPLMSG_GETPROPERTY
type LPDPLMSG_GETPROPERTY as tagDPLMSG_GETPROPERTY ptr

type tagDPLMSG_GETPROPERTYRESPONSE
	dwType as DWORD
	dwRequestID as DWORD
	guidPlayer as GUID
	guidPropertyTag as GUID
	hr as HRESULT
	dwDataSize as DWORD
	dwPropertyData(0 to 0) as DWORD
end type

type DPLMSG_GETPROPERTYRESPONSE as tagDPLMSG_GETPROPERTYRESPONSE
type LPDPLMSG_GETPROPERTYRESPONSE as tagDPLMSG_GETPROPERTYRESPONSE ptr

type tagDPLMSG_NEWSESSIONHOST
	dwType as DWORD
	guidInstance as GUID
end type

type DPLMSG_NEWSESSIONHOST as tagDPLMSG_NEWSESSIONHOST
type LPDPLMSG_NEWSESSIONHOST as tagDPLMSG_NEWSESSIONHOST ptr

extern DPAID_TotalSize as const GUID
extern DPAID_ServiceProvider as const GUID
extern DPAID_LobbyProvider as const GUID
extern DPAID_Phone as const GUID
extern DPAID_PhoneW as const GUID
extern DPAID_Modem as const GUID
extern DPAID_ModemW as const GUID
extern DPAID_INet as const GUID
extern DPAID_INetW as const GUID
extern DPAID_INetPort as const GUID
extern DPAID_ComPort as const GUID

type tagDPADDRESS
	guidDataType as GUID
	dwDataSize as DWORD
end type

type DPADDRESS as tagDPADDRESS
type LPDPADDRESS as tagDPADDRESS ptr

#define DPCPA_NOFLOW 0
#define DPCPA_XONXOFFFLOW 1
#define DPCPA_RTSFLOW 2
#define DPCPA_DTRFLOW 3
#define DPCPA_RTSDTRFLOW 4

type tagDPCOMPORTADDRESS
	dwComPort as DWORD
	dwBaudRate as DWORD
	dwStopBits as DWORD
	dwParity as DWORD
	dwFlowControl as DWORD
end type

type DPCOMPORTADDRESS as tagDPCOMPORTADDRESS
type LPDPCOMPORTADDRESS as tagDPCOMPORTADDRESS ptr

type tagDPLAPPINFO
	dwSize as DWORD
	guidApplication as GUID

	union
		lpszAppNameA as LPSTR
		lpszAppName as LPWSTR
	end union
end type

type DPLAPPINFO as tagDPLAPPINFO
type LPDPLAPPINFO as tagDPLAPPINFO ptr
type LPCDPLAPPINFO as const DPLAPPINFO ptr

type DPCOMPOUNDADDRESSELEMENT
	guidDataType as GUID
	dwDataSize as DWORD
	lpData as LPVOID
end type

type LPDPCOMPOUNDADDRESSELEMENT as DPCOMPOUNDADDRESSELEMENT ptr
type LPCDPCOMPOUNDADDRESSELEMENT as const DPCOMPOUNDADDRESSELEMENT ptr

type tagDPAPPLICATIONDESC
	dwSize as DWORD
	dwFlags as DWORD

	union
		lpszApplicationNameA as LPSTR
		lpszApplicationName as LPWSTR
	end union

	guidApplication as GUID

	union
		lpszFilenameA as LPSTR
		lpszFilename as LPWSTR
	end union

	union
		lpszCommandLineA as LPSTR
		lpszCommandLine as LPWSTR
	end union

	union
		lpszPathA as LPSTR
		lpszPath as LPWSTR
	end union

	union
		lpszCurrentDirectoryA as LPSTR
		lpszCurrentDirectory as LPWSTR
	end union

	lpszDescriptionA as LPSTR
	lpszDescriptionW as LPWSTR
end type

type DPAPPLICATIONDESC as tagDPAPPLICATIONDESC
type LPDPAPPLICATIONDESC as tagDPAPPLICATIONDESC ptr

declare function DirectPlayLobbyCreateW(byval as LPGUID, byval as LPDIRECTPLAYLOBBY ptr, byval as IUnknown ptr, byval as LPVOID, byval as DWORD) as HRESULT
declare function DirectPlayLobbyCreateA(byval as LPGUID, byval as LPDIRECTPLAYLOBBYA ptr, byval as IUnknown ptr, byval as LPVOID, byval as DWORD) as HRESULT

#define DirectPlayLobbyCreate __MINGW_NAME_AW(DirectPlayLobbyCreate)

type LPDPENUMADDRESSCALLBACK as function(byval guidDataType as const GUID const ptr, byval dwDataSize as DWORD, byval lpData as LPCVOID, byval lpContext as LPVOID) as WINBOOL
type LPDPLENUMADDRESSTYPESCALLBACK as function(byval guidDataType as const GUID const ptr, byval lpContext as LPVOID, byval dwFlags as DWORD) as WINBOOL
type LPDPLENUMLOCALAPPLICATIONSCALLBACK as function(byval lpAppInfo as LPCDPLAPPINFO, byval lpContext as LPVOID, byval dwFlags as DWORD) as WINBOOL

type IDirectPlayLobby
	lpVtbl as IDirectPlayLobbyVtbl ptr
end type

type IDirectPlayLobbyVtbl_
	QueryInterface as function(byval This as IDirectPlayLobby ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IDirectPlayLobby ptr) as ULONG_
	Release as function(byval This as IDirectPlayLobby ptr) as ULONG_
	Connect as function(byval This as IDirectPlayLobby ptr, byval as DWORD, byval as LPDIRECTPLAY2 ptr, byval as IUnknown ptr) as HRESULT
	CreateAddress as function(byval This as IDirectPlayLobby ptr, byval as const GUID const ptr, byval as const GUID const ptr, byval as LPCVOID, byval as DWORD, byval as LPVOID, byval as LPDWORD) as HRESULT
	EnumAddress as function(byval This as IDirectPlayLobby ptr, byval as LPDPENUMADDRESSCALLBACK, byval as LPCVOID, byval as DWORD, byval as LPVOID) as HRESULT
	EnumAddressTypes as function(byval This as IDirectPlayLobby ptr, byval as LPDPLENUMADDRESSTYPESCALLBACK, byval as const GUID const ptr, byval as LPVOID, byval as DWORD) as HRESULT
	EnumLocalApplications as function(byval This as IDirectPlayLobby ptr, byval as LPDPLENUMLOCALAPPLICATIONSCALLBACK, byval as LPVOID, byval as DWORD) as HRESULT
	GetConnectionSettings as function(byval This as IDirectPlayLobby ptr, byval as DWORD, byval as LPVOID, byval as LPDWORD) as HRESULT
	ReceiveLobbyMessage as function(byval This as IDirectPlayLobby ptr, byval as DWORD, byval as DWORD, byval as LPDWORD, byval as LPVOID, byval as LPDWORD) as HRESULT
	RunApplication as function(byval This as IDirectPlayLobby ptr, byval as DWORD, byval as LPDWORD, byval as LPDPLCONNECTION, byval as HANDLE) as HRESULT
	SendLobbyMessage as function(byval This as IDirectPlayLobby ptr, byval as DWORD, byval as DWORD, byval as LPVOID, byval as DWORD) as HRESULT
	SetConnectionSettings as function(byval This as IDirectPlayLobby ptr, byval as DWORD, byval as DWORD, byval as LPDPLCONNECTION) as HRESULT
	SetLobbyMessageEvent as function(byval This as IDirectPlayLobby ptr, byval as DWORD, byval as DWORD, byval as HANDLE) as HRESULT
end type

type IDirectPlayLobby2
	lpVtbl as IDirectPlayLobby2Vtbl ptr
end type

type IDirectPlayLobby2Vtbl_
	QueryInterface as function(byval This as IDirectPlayLobby2 ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IDirectPlayLobby2 ptr) as ULONG_
	Release as function(byval This as IDirectPlayLobby2 ptr) as ULONG_
	Connect as function(byval This as IDirectPlayLobby2 ptr, byval as DWORD, byval as LPDIRECTPLAY2 ptr, byval as IUnknown ptr) as HRESULT
	CreateAddress as function(byval This as IDirectPlayLobby2 ptr, byval as const GUID const ptr, byval as const GUID const ptr, byval as LPCVOID, byval as DWORD, byval as LPVOID, byval as LPDWORD) as HRESULT
	EnumAddress as function(byval This as IDirectPlayLobby2 ptr, byval as LPDPENUMADDRESSCALLBACK, byval as LPCVOID, byval as DWORD, byval as LPVOID) as HRESULT
	EnumAddressTypes as function(byval This as IDirectPlayLobby2 ptr, byval as LPDPLENUMADDRESSTYPESCALLBACK, byval as const GUID const ptr, byval as LPVOID, byval as DWORD) as HRESULT
	EnumLocalApplications as function(byval This as IDirectPlayLobby2 ptr, byval as LPDPLENUMLOCALAPPLICATIONSCALLBACK, byval as LPVOID, byval as DWORD) as HRESULT
	GetConnectionSettings as function(byval This as IDirectPlayLobby2 ptr, byval as DWORD, byval as LPVOID, byval as LPDWORD) as HRESULT
	ReceiveLobbyMessage as function(byval This as IDirectPlayLobby2 ptr, byval as DWORD, byval as DWORD, byval as LPDWORD, byval as LPVOID, byval as LPDWORD) as HRESULT
	RunApplication as function(byval This as IDirectPlayLobby2 ptr, byval as DWORD, byval as LPDWORD, byval as LPDPLCONNECTION, byval as HANDLE) as HRESULT
	SendLobbyMessage as function(byval This as IDirectPlayLobby2 ptr, byval as DWORD, byval as DWORD, byval as LPVOID, byval as DWORD) as HRESULT
	SetConnectionSettings as function(byval This as IDirectPlayLobby2 ptr, byval as DWORD, byval as DWORD, byval as LPDPLCONNECTION) as HRESULT
	SetLobbyMessageEvent as function(byval This as IDirectPlayLobby2 ptr, byval as DWORD, byval as DWORD, byval as HANDLE) as HRESULT
	CreateCompoundAddress as function(byval This as IDirectPlayLobby2 ptr, byval as LPCDPCOMPOUNDADDRESSELEMENT, byval as DWORD, byval as LPVOID, byval as LPDWORD) as HRESULT
end type

type IDirectPlayLobby3
	lpVtbl as IDirectPlayLobby3Vtbl ptr
end type

type IDirectPlayLobby3Vtbl_
	QueryInterface as function(byval This as IDirectPlayLobby3 ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IDirectPlayLobby3 ptr) as ULONG_
	Release as function(byval This as IDirectPlayLobby3 ptr) as ULONG_
	Connect as function(byval This as IDirectPlayLobby3 ptr, byval as DWORD, byval as LPDIRECTPLAY2 ptr, byval as IUnknown ptr) as HRESULT
	CreateAddress as function(byval This as IDirectPlayLobby3 ptr, byval as const GUID const ptr, byval as const GUID const ptr, byval as LPCVOID, byval as DWORD, byval as LPVOID, byval as LPDWORD) as HRESULT
	EnumAddress as function(byval This as IDirectPlayLobby3 ptr, byval as LPDPENUMADDRESSCALLBACK, byval as LPCVOID, byval as DWORD, byval as LPVOID) as HRESULT
	EnumAddressTypes as function(byval This as IDirectPlayLobby3 ptr, byval as LPDPLENUMADDRESSTYPESCALLBACK, byval as const GUID const ptr, byval as LPVOID, byval as DWORD) as HRESULT
	EnumLocalApplications as function(byval This as IDirectPlayLobby3 ptr, byval as LPDPLENUMLOCALAPPLICATIONSCALLBACK, byval as LPVOID, byval as DWORD) as HRESULT
	GetConnectionSettings as function(byval This as IDirectPlayLobby3 ptr, byval as DWORD, byval as LPVOID, byval as LPDWORD) as HRESULT
	ReceiveLobbyMessage as function(byval This as IDirectPlayLobby3 ptr, byval as DWORD, byval as DWORD, byval as LPDWORD, byval as LPVOID, byval as LPDWORD) as HRESULT
	RunApplication as function(byval This as IDirectPlayLobby3 ptr, byval as DWORD, byval as LPDWORD, byval as LPDPLCONNECTION, byval as HANDLE) as HRESULT
	SendLobbyMessage as function(byval This as IDirectPlayLobby3 ptr, byval as DWORD, byval as DWORD, byval as LPVOID, byval as DWORD) as HRESULT
	SetConnectionSettings as function(byval This as IDirectPlayLobby3 ptr, byval as DWORD, byval as DWORD, byval as LPDPLCONNECTION) as HRESULT
	SetLobbyMessageEvent as function(byval This as IDirectPlayLobby3 ptr, byval as DWORD, byval as DWORD, byval as HANDLE) as HRESULT
	CreateCompoundAddress as function(byval This as IDirectPlayLobby3 ptr, byval as LPCDPCOMPOUNDADDRESSELEMENT, byval as DWORD, byval as LPVOID, byval as LPDWORD) as HRESULT
	ConnectEx as function(byval This as IDirectPlayLobby3 ptr, byval as DWORD, byval as const IID const ptr, byval as LPVOID ptr, byval as IUnknown ptr) as HRESULT
	RegisterApplication as function(byval This as IDirectPlayLobby3 ptr, byval as DWORD, byval as LPDPAPPLICATIONDESC) as HRESULT
	UnregisterApplication as function(byval This as IDirectPlayLobby3 ptr, byval as DWORD, byval as const GUID const ptr) as HRESULT
	WaitForConnectionSettings as function(byval This as IDirectPlayLobby3 ptr, byval as DWORD) as HRESULT
end type

#define IDirectPlayLobby_QueryInterface(p, a, b) (p)->lpVtbl->QueryInterface(p, a, b)
#define IDirectPlayLobby_AddRef(p) (p)->lpVtbl->AddRef(p)
#define IDirectPlayLobby_Release(p) (p)->lpVtbl->Release(p)
#define IDirectPlayLobby_Connect(p, a, b, c) (p)->lpVtbl->Connect(p, a, b, c)
#define IDirectPlayLobby_CreateAddress(p, a, b, c, d, e, f) (p)->lpVtbl->CreateAddress(p, a, b, c, d, e, f)
#define IDirectPlayLobby_EnumAddress(p, a, b, c, d) (p)->lpVtbl->EnumAddress(p, a, b, c, d)
#define IDirectPlayLobby_EnumAddressTypes(p, a, b, c, d) (p)->lpVtbl->EnumAddressTypes(p, a, b, c, d)
#define IDirectPlayLobby_EnumLocalApplications(p, a, b, c) (p)->lpVtbl->EnumLocalApplications(p, a, b, c)
#define IDirectPlayLobby_GetConnectionSettings(p, a, b, c) (p)->lpVtbl->GetConnectionSettings(p, a, b, c)
#define IDirectPlayLobby_ReceiveLobbyMessage(p, a, b, c, d, e) (p)->lpVtbl->ReceiveLobbyMessage(p, a, b, c, d, e)
#define IDirectPlayLobby_RunApplication(p, a, b, c, d) (p)->lpVtbl->RunApplication(p, a, b, c, d)
#define IDirectPlayLobby_SendLobbyMessage(p, a, b, c, d) (p)->lpVtbl->SendLobbyMessage(p, a, b, c, d)
#define IDirectPlayLobby_SetConnectionSettings(p, a, b, c) (p)->lpVtbl->SetConnectionSettings(p, a, b, c)
#define IDirectPlayLobby_SetLobbyMessageEvent(p, a, b, c) (p)->lpVtbl->SetLobbyMessageEvent(p, a, b, c)
#define IDirectPlayLobby_CreateCompoundAddress(p, a, b, c, d) (p)->lpVtbl->CreateCompoundAddress(p, a, b, c, d)
#define IDirectPlayLobby_ConnectEx(p, a, b, c, d) (p)->lpVtbl->ConnectEx(p, a, b, c, d)
#define IDirectPlayLobby_RegisterApplication(p, a, b) (p)->lpVtbl->RegisterApplication(p, a, b)
#define IDirectPlayLobby_UnregisterApplication(p, a, b) (p)->lpVtbl->UnregisterApplication(p, a, b)
#define IDirectPlayLobby_WaitForConnectionSettings(p, a) (p)->lpVtbl->WaitForConnectionSettings(p, a)
#define DPLWAIT_CANCEL &h00000001

end extern