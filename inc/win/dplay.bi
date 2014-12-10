#pragma once

#include once "crt/wchar.bi"
#include once "ole2.bi"

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

type IDirectPlayVtbl as IDirectPlayVtbl_
type IDirectPlay2Vtbl as IDirectPlay2Vtbl_
type IDirectPlay3Vtbl as IDirectPlay3Vtbl_
type IDirectPlay4Vtbl as IDirectPlay4Vtbl_

#define __WINE_DPLAY_H

'' TODO: #define VOL volatile

type LPVOIDV as any ptr

extern CLSID_DirectPlay as const GUID
extern IID_IDirectPlay as const GUID

type LPDIRECTPLAY as IDirectPlay ptr

extern IID_IDirectPlay2 as const GUID

type LPDIRECTPLAY2 as IDirectPlay2 ptr

extern IID_IDirectPlay2A as const GUID

type IDirectPlay2A as IDirectPlay2
type LPDIRECTPLAY2A as IDirectPlay2 ptr

extern IID_IDirectPlay3 as const GUID

type LPDIRECTPLAY3 as IDirectPlay3 ptr

extern IID_IDirectPlay3A as const GUID

type IDirectPlay3A as IDirectPlay3
type LPDIRECTPLAY3A as IDirectPlay3 ptr

extern IID_IDirectPlay4 as const GUID

type LPDIRECTPLAY4 as IDirectPlay4 ptr

extern IID_IDirectPlay4A as const GUID

type IDirectPlay4A as IDirectPlay4
type LPDIRECTPLAY4A as IDirectPlay4 ptr

extern DPSPGUID_IPX as const GUID
extern DPSPGUID_TCPIP as const GUID
extern DPSPGUID_SERIAL as const GUID
extern DPSPGUID_MODEM as const GUID

#define _FACDP &h877
#define MAKE_DPHRESULT(code) MAKE_HRESULT(1, _FACDP, code)
#define DP_OK S_OK
#define DPERR_ALREADYINITIALIZED MAKE_DPHRESULT(5)
#define DPERR_ACCESSDENIED MAKE_DPHRESULT(10)
#define DPERR_ACTIVEPLAYERS MAKE_DPHRESULT(20)
#define DPERR_BUFFERTOOSMALL MAKE_DPHRESULT(30)
#define DPERR_CANTADDPLAYER MAKE_DPHRESULT(40)
#define DPERR_CANTCREATEGROUP MAKE_DPHRESULT(50)
#define DPERR_CANTCREATEPLAYER MAKE_DPHRESULT(60)
#define DPERR_CANTCREATESESSION MAKE_DPHRESULT(70)
#define DPERR_CAPSNOTAVAILABLEYET MAKE_DPHRESULT(80)
#define DPERR_EXCEPTION MAKE_DPHRESULT(90)
#define DPERR_GENERIC E_FAIL
#define DPERR_INVALIDFLAGS MAKE_DPHRESULT(120)
#define DPERR_INVALIDOBJECT MAKE_DPHRESULT(130)
#define DPERR_INVALIDPARAM E_INVALIDARG
#define DPERR_INVALIDPARAMS DPERR_INVALIDPARAM
#define DPERR_INVALIDPLAYER MAKE_DPHRESULT(150)
#define DPERR_INVALIDGROUP MAKE_DPHRESULT(155)
#define DPERR_NOCAPS MAKE_DPHRESULT(160)
#define DPERR_NOCONNECTION MAKE_DPHRESULT(170)
#define DPERR_NOMEMORY E_OUTOFMEMORY
#define DPERR_OUTOFMEMORY DPERR_NOMEMORY
#define DPERR_NOMESSAGES MAKE_DPHRESULT(190)
#define DPERR_NONAMESERVERFOUND MAKE_DPHRESULT(200)
#define DPERR_NOPLAYERS MAKE_DPHRESULT(210)
#define DPERR_NOSESSIONS MAKE_DPHRESULT(220)
#define DPERR_PENDING E_PENDING
#define DPERR_SENDTOOBIG MAKE_DPHRESULT(230)
#define DPERR_TIMEOUT MAKE_DPHRESULT(240)
#define DPERR_UNAVAILABLE MAKE_DPHRESULT(250)
#define DPERR_UNSUPPORTED E_NOTIMPL
#define DPERR_BUSY MAKE_DPHRESULT(270)
#define DPERR_USERCANCEL MAKE_DPHRESULT(280)
#define DPERR_NOINTERFACE E_NOINTERFACE
#define DPERR_CANNOTCREATESERVER MAKE_DPHRESULT(290)
#define DPERR_PLAYERLOST MAKE_DPHRESULT(300)
#define DPERR_SESSIONLOST MAKE_DPHRESULT(310)
#define DPERR_UNINITIALIZED MAKE_DPHRESULT(320)
#define DPERR_NONEWPLAYERS MAKE_DPHRESULT(330)
#define DPERR_INVALIDPASSWORD MAKE_DPHRESULT(340)
#define DPERR_CONNECTING MAKE_DPHRESULT(350)
#define DPERR_CONNECTIONLOST MAKE_DPHRESULT(360)
#define DPERR_UNKNOWNMESSAGE MAKE_DPHRESULT(370)
#define DPERR_CANCELFAILED MAKE_DPHRESULT(380)
#define DPERR_INVALIDPRIORITY MAKE_DPHRESULT(390)
#define DPERR_NOTHANDLED MAKE_DPHRESULT(400)
#define DPERR_CANCELLED MAKE_DPHRESULT(410)
#define DPERR_ABORTED MAKE_DPHRESULT(420)
#define DPERR_BUFFERTOOLARGE MAKE_DPHRESULT(1000)
#define DPERR_CANTCREATEPROCESS MAKE_DPHRESULT(1010)
#define DPERR_APPNOTSTARTED MAKE_DPHRESULT(1020)
#define DPERR_INVALIDINTERFACE MAKE_DPHRESULT(1030)
#define DPERR_NOSERVICEPROVIDER MAKE_DPHRESULT(1040)
#define DPERR_UNKNOWNAPPLICATION MAKE_DPHRESULT(1050)
#define DPERR_NOTLOBBIED MAKE_DPHRESULT(1070)
#define DPERR_SERVICEPROVIDERLOADED MAKE_DPHRESULT(1080)
#define DPERR_ALREADYREGISTERED MAKE_DPHRESULT(1090)
#define DPERR_NOTREGISTERED MAKE_DPHRESULT(1100)
#define DPERR_AUTHENTICATIONFAILED MAKE_DPHRESULT(2000)
#define DPERR_CANTLOADSSPI MAKE_DPHRESULT(2010)
#define DPERR_ENCRYPTIONFAILED MAKE_DPHRESULT(2020)
#define DPERR_SIGNFAILED MAKE_DPHRESULT(2030)
#define DPERR_CANTLOADSECURITYPACKAGE MAKE_DPHRESULT(2040)
#define DPERR_ENCRYPTIONNOTSUPPORTED MAKE_DPHRESULT(2050)
#define DPERR_CANTLOADCAPI MAKE_DPHRESULT(2060)
#define DPERR_NOTLOGGEDIN MAKE_DPHRESULT(2070)
#define DPERR_LOGONDENIED MAKE_DPHRESULT(2080)

type DPID as DWORD
type LPDPID as DWORD ptr

#define DPID_SYSMSG 0
#define DPID_ALLPLAYERS 0
#define DPID_SERVERPLAYER 1
#define DPID_UNKNOWN &hFFFFFFFF

type tagDPCAPS
	dwSize as DWORD
	dwFlags as DWORD
	dwMaxBufferSize as DWORD
	dwMaxQueueSize as DWORD
	dwMaxPlayers as DWORD
	dwHundredBaud as DWORD
	dwLatency as DWORD
	dwMaxLocalPlayers as DWORD
	dwHeaderLength as DWORD
	dwTimeout as DWORD
end type

type DPCAPS as tagDPCAPS
type LPDPCAPS as tagDPCAPS ptr

type tagDPNAME
	dwSize as DWORD
	dwFlags as DWORD

	union
		lpszShortName as LPWSTR
		lpszShortNameA as LPSTR
	end union

	union
		lpszLongName as LPWSTR
		lpszLongNameA as LPSTR
	end union
end type

type DPNAME as tagDPNAME
type LPDPNAME as tagDPNAME ptr

#define DPLONGNAMELEN 52
#define DPSHORTNAMELEN 20
#define DPSESSIONNAMELEN 32
#define DPPASSWORDLEN 16
#define DPUSERRESERVED 16

type tagDPSESSIONDESC
	dwSize as DWORD
	guidSession as GUID
	dwSession as DWORD
	dwMaxPlayers as DWORD
	dwCurrentPlayers as DWORD
	dwFlags as DWORD
	szSessionName as zstring * 32
	szUserField as zstring * 16
	dwReserved1 as DWORD
	szPassword as zstring * 16
	dwReserved2 as DWORD
	dwUser1 as DWORD
	dwUser2 as DWORD
	dwUser3 as DWORD
	dwUser4 as DWORD
end type

type DPSESSIONDESC as tagDPSESSIONDESC
type LPDPSESSIONDESC as tagDPSESSIONDESC ptr

type tagDPSESSIONDESC2
	dwSize as DWORD
	dwFlags as DWORD
	guidInstance as GUID
	guidApplication as GUID
	dwMaxPlayers as DWORD
	dwCurrentPlayers as DWORD

	union
		lpszSessionName as LPWSTR
		lpszSessionNameA as LPSTR
	end union

	union
		lpszPassword as LPWSTR
		lpszPasswordA as LPSTR
	end union

	dwReserved1 as DWORD
	dwReserved2 as DWORD
	dwUser1 as DWORD
	dwUser2 as DWORD
	dwUser3 as DWORD
	dwUser4 as DWORD
end type

type DPSESSIONDESC2 as tagDPSESSIONDESC2
type LPDPSESSIONDESC2 as tagDPSESSIONDESC2 ptr
type LPCDPSESSIONDESC2 as const DPSESSIONDESC2 ptr

#define DPOPEN_JOIN &h00000001
#define DPOPEN_CREATE &h00000002
#define DPOPEN_RETURNSTATUS DPENUMSESSIONS_RETURNSTATUS
#define DPSESSION_NEWPLAYERSDISABLED &h00000001
#define DPSESSION_MIGRATEHOST &h00000004
#define DPSESSION_NOMESSAGEID &h00000008
#define DPSESSION_JOINDISABLED &h00000020
#define DPSESSION_KEEPALIVE &h00000040
#define DPSESSION_NODATAMESSAGES &h00000080
#define DPSESSION_SECURESERVER &h00000100
#define DPSESSION_PRIVATE &h00000200
#define DPSESSION_PASSWORDREQUIRED &h00000400
#define DPSESSION_MULTICASTSERVER &h00000800
#define DPSESSION_CLIENTSERVER &h00001000
#define DPSESSION_DIRECTPLAYPROTOCOL &h00002000
#define DPSESSION_NOPRESERVEORDER &h00004000
#define DPSESSION_OPTIMIZELATENCY &h00008000

type tagDPLCONNECTION
	dwSize as DWORD
	dwFlags as DWORD
	lpSessionDesc as LPDPSESSIONDESC2
	lpPlayerName as LPDPNAME
	guidSP as GUID
	lpAddress as LPVOID
	dwAddressSize as DWORD
end type

type DPLCONNECTION as tagDPLCONNECTION
type LPDPLCONNECTION as tagDPLCONNECTION ptr

#define DPLCONNECTION_CREATESESSION DPOPEN_CREATE
#define DPLCONNECTION_JOINSESSION DPOPEN_JOIN

type tagDPCHAT
	dwSize as DWORD
	dwFlags as DWORD

	union
		lpszMessage as LPWSTR
		lpszMessageA as LPSTR
	end union
end type

type DPCHAT as tagDPCHAT
type LPDPCHAT as tagDPCHAT ptr

type SGBUFFER
	len as UINT
	pData as PUCHAR
end type

type PSGBUFFER as SGBUFFER ptr
type LPSGBUFFER as SGBUFFER ptr

type tagDPSECURITYDESC
	dwSize as DWORD
	dwFlags as DWORD

	union
		lpszSSPIProvider as LPWSTR
		lpszSSPIProviderA as LPSTR
	end union

	union
		lpszCAPIProvider as LPWSTR
		lpszCAPIProviderA as LPSTR
	end union

	dwCAPIProviderType as DWORD
	dwEncryptionAlgorithm as DWORD
end type

type DPSECURITYDESC as tagDPSECURITYDESC
type LPDPSECURITYDESC as tagDPSECURITYDESC ptr
type LPCDPSECURITYDESC as const DPSECURITYDESC ptr

type tagDPCREDENTIALS
	dwSize as DWORD
	dwFlags as DWORD

	union
		lpszUsername as LPWSTR
		lpszUsernameA as LPSTR
	end union

	union
		lpszPassword as LPWSTR
		lpszPasswordA as LPSTR
	end union

	union
		lpszDomain as LPWSTR
		lpszDomainA as LPSTR
	end union
end type

type DPCREDENTIALS as tagDPCREDENTIALS
type LPDPCREDENTIALS as tagDPCREDENTIALS ptr
type LPCDPCREDENTIALS as const DPCREDENTIALS ptr
type LPDPENUMDPCALLBACKW as function(byval lpguidSP as LPGUID, byval lpSPName as LPWSTR, byval dwMajorVersion as DWORD, byval dwMinorVersion as DWORD, byval lpContext as LPVOID) as WINBOOL
type LPDPENUMDPCALLBACKA as function(byval lpguidSP as LPGUID, byval lpSPName as LPSTR, byval dwMajorVersion as DWORD, byval dwMinorVersion as DWORD, byval lpContext as LPVOID) as WINBOOL
type LPCDPNAME as const DPNAME ptr
type LPDPENUMCONNECTIONSCALLBACK as function(byval lpguidSP as LPCGUID, byval lpConnection as LPVOID, byval dwConnectionSize as DWORD, byval lpName as LPCDPNAME, byval dwFlags as DWORD, byval lpContext as LPVOID) as WINBOOL
type LPDPENUMSESSIONSCALLBACK as function(byval lpDPSessionDesc as LPDPSESSIONDESC, byval lpContext as LPVOID, byval lpdwTimeOut as LPDWORD, byval dwFlags as DWORD) as WINBOOL

declare function DirectPlayEnumerateA(byval as LPDPENUMDPCALLBACKA, byval as LPVOID) as HRESULT
declare function DirectPlayEnumerateW(byval as LPDPENUMDPCALLBACKW, byval as LPVOID) as HRESULT
declare function DirectPlayCreate(byval lpGUID as LPGUID, byval lplpDP as LPDIRECTPLAY ptr, byval pUnk as IUnknown ptr) as HRESULT

type LPDPENUMPLAYERSCALLBACK as function(byval dpId as DPID, byval lpFriendlyName as LPSTR, byval lpFormalName as LPSTR, byval dwFlags as DWORD, byval lpContext as LPVOID) as WINBOOL
type LPDPENUMPLAYERSCALLBACK2 as function(byval dpId as DPID, byval dwPlayerType as DWORD, byval lpName as LPCDPNAME, byval dwFlags as DWORD, byval lpContext as LPVOID) as WINBOOL
type LPDPENUMSESSIONSCALLBACK2 as function(byval lpThisSD as LPCDPSESSIONDESC2, byval lpdwTimeOut as LPDWORD, byval dwFlags as DWORD, byval lpContext as LPVOID) as WINBOOL

#define DPESC_TIMEDOUT &h00000001

type IDirectPlay
	lpVtbl as IDirectPlayVtbl ptr
end type

type IDirectPlayVtbl_
	QueryInterface as function(byval This as IDirectPlay ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IDirectPlay ptr) as ULONG_
	Release as function(byval This as IDirectPlay ptr) as ULONG_
	AddPlayerToGroup as function(byval This as IDirectPlay ptr, byval idGroup as DPID, byval idPlayer as DPID) as HRESULT
	Close as function(byval This as IDirectPlay ptr) as HRESULT
	CreatePlayer as function(byval This as IDirectPlay ptr, byval lpidPlayer as LPDPID, byval lpPlayerName as LPSTR, byval as LPSTR, byval as LPHANDLE) as HRESULT
	CreateGroup as function(byval This as IDirectPlay ptr, byval lpidGroup as LPDPID, byval lpGroupName as LPSTR, byval as LPSTR) as HRESULT
	DeletePlayerFromGroup as function(byval This as IDirectPlay ptr, byval idGroup as DPID, byval idPlayer as DPID) as HRESULT
	DestroyPlayer as function(byval This as IDirectPlay ptr, byval idPlayer as DPID) as HRESULT
	DestroyGroup as function(byval This as IDirectPlay ptr, byval idGroup as DPID) as HRESULT
	EnableNewPlayers as function(byval This as IDirectPlay ptr, byval as WINBOOL) as HRESULT
	EnumGroupPlayers as function(byval This as IDirectPlay ptr, byval idGroup as DPID, byval lpEnumPlayersCallback as LPDPENUMPLAYERSCALLBACK, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumGroups as function(byval This as IDirectPlay ptr, byval as DWORD, byval lpEnumPlayersCallback as LPDPENUMPLAYERSCALLBACK, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumPlayers as function(byval This as IDirectPlay ptr, byval as DWORD, byval lpEnumPlayersCallback as LPDPENUMPLAYERSCALLBACK, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumSessions as function(byval This as IDirectPlay ptr, byval lpsd as LPDPSESSIONDESC, byval dwTimeout as DWORD, byval lpEnumSessionsCallback as LPDPENUMSESSIONSCALLBACK, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	GetCaps as function(byval This as IDirectPlay ptr, byval lpDPCaps as LPDPCAPS) as HRESULT
	GetMessageCount as function(byval This as IDirectPlay ptr, byval idPlayer as DPID, byval lpdwCount as LPDWORD) as HRESULT
	GetPlayerCaps as function(byval This as IDirectPlay ptr, byval idPlayer as DPID, byval lpPlayerCaps as LPDPCAPS) as HRESULT
	GetPlayerName as function(byval This as IDirectPlay ptr, byval idPlayer as DPID, byval as LPSTR, byval as LPDWORD, byval as LPSTR, byval as LPDWORD) as HRESULT
	Initialize as function(byval This as IDirectPlay ptr, byval lpGUID as LPGUID) as HRESULT
	Open as function(byval This as IDirectPlay ptr, byval lpsd as LPDPSESSIONDESC) as HRESULT
	Receive as function(byval This as IDirectPlay ptr, byval lpidFrom as LPDPID, byval lpidTo as LPDPID, byval dwFlags as DWORD, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	SaveSession as function(byval This as IDirectPlay ptr, byval as LPSTR) as HRESULT
	Send as function(byval This as IDirectPlay ptr, byval idFrom as DPID, byval idTo as DPID, byval dwFlags as DWORD, byval lpData as LPVOID, byval dwDataSize as DWORD) as HRESULT
	SetPlayerName as function(byval This as IDirectPlay ptr, byval idPlayer as DPID, byval lpPlayerName as LPSTR, byval as LPSTR) as HRESULT
end type

#define IDirectPlay_QueryInterface(p, a, b) (p)->lpVtbl->QueryInterface(p, a, b)
#define IDirectPlay_AddRef(p) (p)->lpVtbl->AddRef(p)
#define IDirectPlay_Release(p) (p)->lpVtbl->Release(p)
#define IDirectPlay_AddPlayerToGroup(p, a, b) (p)->lpVtbl->AddPlayerToGroup(p, a, b)
#define IDirectPlay_Close(p) (p)->lpVtbl->Close(p)
#define IDirectPlay_CreatePlayer(p, a, b, c, d) (p)->lpVtbl->CreatePlayer(p, a, b, c, d)
#define IDirectPlay_CreateGroup(p, a, b, c) (p)->lpVtbl->CreateGroup(p, a, b, c)
#define IDirectPlay_DeletePlayerFromGroup(p, a, b) (p)->lpVtbl->DeletePlayerFromGroup(p, a, b)
#define IDirectPlay_DestroyPlayer(p, a) (p)->lpVtbl->DestroyPlayer(p, a)
#define IDirectPlay_DestroyGroup(p, a) (p)->lpVtbl->DestroyGroup(p, a)
#define IDirectPlay_EnableNewPlayers(p, a) (p)->lpVtbl->EnableNewPlayers(p, a)
#define IDirectPlay_EnumGroupPlayers(p, a, b, c, d) (p)->lpVtbl->EnumGroupPlayers(p, a, b, c, d)
#define IDirectPlay_EnumGroups(p, a, b, c, d) (p)->lpVtbl->EnumGroups(p, a, b, c, d)
#define IDirectPlay_EnumPlayers(p, a, b, c, d) (p)->lpVtbl->EnumPlayers(p, a, b, c, d)
#define IDirectPlay_EnumSessions(p, a, b, c, d, e) (p)->lpVtbl->EnumSessions(p, a, b, c, d, e)
#define IDirectPlay_GetCaps(p, a) (p)->lpVtbl->GetCaps(p, a)
#define IDirectPlay_GetMessageCount(p, a, b) (p)->lpVtbl->GetMessageCount(p, a, b)
#define IDirectPlay_GetPlayerCaps(p, a, b) (p)->lpVtbl->GetPlayerCaps(p, a, b)
#define IDirectPlay_GetPlayerName(p, a, b, c, d, e) (p)->lpVtbl->GetPlayerName(p, a, b, c, d, e)
#define IDirectPlay_Initialize(p, a) (p)->lpVtbl->Initialize(p, a)
#define IDirectPlay_Open(p, a) (p)->lpVtbl->Open(p, a)
#define IDirectPlay_Receive(p, a, b, c, d, e) (p)->lpVtbl->Receive(p, a, b, c, d, e)
#define IDirectPlay_SaveSession(p, a) (p)->lpVtbl->SaveSession(p, a)
#define IDirectPlay_Send(p, a, b, c, d, e) (p)->lpVtbl->Send(p, a, b, c, d, e)
#define IDirectPlay_SetPlayerName(p, a, b, c) (p)->lpVtbl->SetPlayerName(p, a, b, c)

type IDirectPlay2
	lpVtbl as IDirectPlay2Vtbl ptr
end type

type IDirectPlay2Vtbl_
	QueryInterface as function(byval This as IDirectPlay2 ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IDirectPlay2 ptr) as ULONG_
	Release as function(byval This as IDirectPlay2 ptr) as ULONG_
	AddPlayerToGroup as function(byval This as IDirectPlay2 ptr, byval idGroup as DPID, byval idPlayer as DPID) as HRESULT
	Close as function(byval This as IDirectPlay2 ptr) as HRESULT
	CreateGroup as function(byval This as IDirectPlay2 ptr, byval lpidGroup as LPDPID, byval lpGroupName as LPDPNAME, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	CreatePlayer as function(byval This as IDirectPlay2 ptr, byval lpidPlayer as LPDPID, byval lpPlayerName as LPDPNAME, byval hEvent as HANDLE, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	DeletePlayerFromGroup as function(byval This as IDirectPlay2 ptr, byval idGroup as DPID, byval idPlayer as DPID) as HRESULT
	DestroyGroup as function(byval This as IDirectPlay2 ptr, byval idGroup as DPID) as HRESULT
	DestroyPlayer as function(byval This as IDirectPlay2 ptr, byval idPlayer as DPID) as HRESULT
	EnumGroupPlayers as function(byval This as IDirectPlay2 ptr, byval idGroup as DPID, byval lpguidInstance as LPGUID, byval lpEnumPlayersCallback2 as LPDPENUMPLAYERSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumGroups as function(byval This as IDirectPlay2 ptr, byval lpguidInstance as LPGUID, byval lpEnumPlayersCallback2 as LPDPENUMPLAYERSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumPlayers as function(byval This as IDirectPlay2 ptr, byval lpguidInstance as LPGUID, byval lpEnumPlayersCallback2 as LPDPENUMPLAYERSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumSessions as function(byval This as IDirectPlay2 ptr, byval lpsd as LPDPSESSIONDESC2, byval dwTimeout as DWORD, byval lpEnumSessionsCallback2 as LPDPENUMSESSIONSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	GetCaps as function(byval This as IDirectPlay2 ptr, byval lpDPCaps as LPDPCAPS, byval dwFlags as DWORD) as HRESULT
	GetGroupData as function(byval This as IDirectPlay2 ptr, byval idGroup as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD, byval dwFlags as DWORD) as HRESULT
	GetGroupName as function(byval This as IDirectPlay2 ptr, byval idGroup as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	GetMessageCount as function(byval This as IDirectPlay2 ptr, byval idPlayer as DPID, byval lpdwCount as LPDWORD) as HRESULT
	GetPlayerAddress as function(byval This as IDirectPlay2 ptr, byval idPlayer as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	GetPlayerCaps as function(byval This as IDirectPlay2 ptr, byval idPlayer as DPID, byval lpPlayerCaps as LPDPCAPS, byval dwFlags as DWORD) as HRESULT
	GetPlayerData as function(byval This as IDirectPlay2 ptr, byval idPlayer as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD, byval dwFlags as DWORD) as HRESULT
	GetPlayerName as function(byval This as IDirectPlay2 ptr, byval idPlayer as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	GetSessionDesc as function(byval This as IDirectPlay2 ptr, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	Initialize as function(byval This as IDirectPlay2 ptr, byval lpGUID as LPGUID) as HRESULT
	Open as function(byval This as IDirectPlay2 ptr, byval lpsd as LPDPSESSIONDESC2, byval dwFlags as DWORD) as HRESULT
	Receive as function(byval This as IDirectPlay2 ptr, byval lpidFrom as LPDPID, byval lpidTo as LPDPID, byval dwFlags as DWORD, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	Send as function(byval This as IDirectPlay2 ptr, byval idFrom as DPID, byval idTo as DPID, byval dwFlags as DWORD, byval lpData as LPVOID, byval dwDataSize as DWORD) as HRESULT
	SetGroupData as function(byval This as IDirectPlay2 ptr, byval idGroup as DPID, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	SetGroupName as function(byval This as IDirectPlay2 ptr, byval idGroup as DPID, byval lpGroupName as LPDPNAME, byval dwFlags as DWORD) as HRESULT
	SetPlayerData as function(byval This as IDirectPlay2 ptr, byval idPlayer as DPID, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	SetPlayerName as function(byval This as IDirectPlay2 ptr, byval idPlayer as DPID, byval lpPlayerName as LPDPNAME, byval dwFlags as DWORD) as HRESULT
	SetSessionDesc as function(byval This as IDirectPlay2 ptr, byval lpSessDesc as LPDPSESSIONDESC2, byval dwFlags as DWORD) as HRESULT
end type

#define IDirectPlay2_QueryInterface(p, a, b) (p)->lpVtbl->QueryInterface(p, a, b)
#define IDirectPlay2_AddRef(p) (p)->lpVtbl->AddRef(p)
#define IDirectPlay2_Release(p) (p)->lpVtbl->Release(p)
#define IDirectPlay2_AddPlayerToGroup(p, a, b) (p)->lpVtbl->AddPlayerToGroup(p, a, b)
#define IDirectPlay2_Close(p) (p)->lpVtbl->Close(p)
#define IDirectPlay2_CreateGroup(p, a, b, c, d, e) (p)->lpVtbl->CreateGroup(p, a, b, c, d, e)
#define IDirectPlay2_CreatePlayer(p, a, b, c, d, e, f) (p)->lpVtbl->CreatePlayer(p, a, b, c, d, e, f)
#define IDirectPlay2_DeletePlayerFromGroup(p, a, b) (p)->lpVtbl->DeletePlayerFromGroup(p, a, b)
#define IDirectPlay2_DestroyGroup(p, a) (p)->lpVtbl->DestroyGroup(p, a)
#define IDirectPlay2_DestroyPlayer(p, a) (p)->lpVtbl->DestroyPlayer(p, a)
#define IDirectPlay2_EnumGroupPlayers(p, a, b, c, d, e) (p)->lpVtbl->EnumGroupPlayers(p, a, b, c, d, e)
#define IDirectPlay2_EnumGroups(p, a, b, c, d) (p)->lpVtbl->EnumGroups(p, a, b, c, d)
#define IDirectPlay2_EnumPlayers(p, a, b, c, d) (p)->lpVtbl->EnumPlayers(p, a, b, c, d)
#define IDirectPlay2_EnumSessions(p, a, b, c, d, e) (p)->lpVtbl->EnumSessions(p, a, b, c, d, e)
#define IDirectPlay2_GetCaps(p, a, b) (p)->lpVtbl->GetCaps(p, a, b)
#define IDirectPlay2_GetGroupData(p, a, b, c, d) (p)->lpVtbl->GetGroupData(p, a, b, c, d)
#define IDirectPlay2_GetGroupName(p, a, b, c) (p)->lpVtbl->GetGroupName(p, a, b, c)
#define IDirectPlay2_GetMessageCount(p, a, b) (p)->lpVtbl->GetMessageCount(p, a, b)
#define IDirectPlay2_GetPlayerAddress(p, a, b, c) (p)->lpVtbl->GetPlayerAddress(p, a, b, c)
#define IDirectPlay2_GetPlayerCaps(p, a, b, c) (p)->lpVtbl->GetPlayerCaps(p, a, b, c)
#define IDirectPlay2_GetPlayerData(p, a, b, c, d) (p)->lpVtbl->GetPlayerData(p, a, b, c, d)
#define IDirectPlay2_GetPlayerName(p, a, b, c) (p)->lpVtbl->GetPlayerName(p, a, b, c)
#define IDirectPlay2_GetSessionDesc(p, a, b) (p)->lpVtbl->GetSessionDesc(p, a, b)
#define IDirectPlay2_Initialize(p, a) (p)->lpVtbl->Initialize(p, a)
#define IDirectPlay2_Open(p, a, b) (p)->lpVtbl->Open(p, a, b)
#define IDirectPlay2_Receive(p, a, b, c, d, e) (p)->lpVtbl->Receive(p, a, b, c, d, e)
#define IDirectPlay2_Send(p, a, b, c, d, e) (p)->lpVtbl->Send(p, a, b, c, d, e)
#define IDirectPlay2_SetGroupData(p, a, b, c, d) (p)->lpVtbl->SetGroupData(p, a, b, c, d)
#define IDirectPlay2_SetGroupName(p, a, b, c) (p)->lpVtbl->SetGroupName(p, a, b, c)
#define IDirectPlay2_SetPlayerData(p, a, b, c, d) (p)->lpVtbl->SetPlayerData(p, a, b, c, d)
#define IDirectPlay2_SetPlayerName(p, a, b, c) (p)->lpVtbl->SetPlayerName(p, a, b, c)
#define IDirectPlay2_SetSessionDesc(p, a, b) (p)->lpVtbl->SetSessionDesc(p, a, b)

type IDirectPlay3
	lpVtbl as IDirectPlay3Vtbl ptr
end type

type IDirectPlay3Vtbl_
	QueryInterface as function(byval This as IDirectPlay3 ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IDirectPlay3 ptr) as ULONG_
	Release as function(byval This as IDirectPlay3 ptr) as ULONG_
	AddPlayerToGroup as function(byval This as IDirectPlay3 ptr, byval idGroup as DPID, byval idPlayer as DPID) as HRESULT
	Close as function(byval This as IDirectPlay3 ptr) as HRESULT
	CreateGroup as function(byval This as IDirectPlay3 ptr, byval lpidGroup as LPDPID, byval lpGroupName as LPDPNAME, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	CreatePlayer as function(byval This as IDirectPlay3 ptr, byval lpidPlayer as LPDPID, byval lpPlayerName as LPDPNAME, byval hEvent as HANDLE, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	DeletePlayerFromGroup as function(byval This as IDirectPlay3 ptr, byval idGroup as DPID, byval idPlayer as DPID) as HRESULT
	DestroyGroup as function(byval This as IDirectPlay3 ptr, byval idGroup as DPID) as HRESULT
	DestroyPlayer as function(byval This as IDirectPlay3 ptr, byval idPlayer as DPID) as HRESULT
	EnumGroupPlayers as function(byval This as IDirectPlay3 ptr, byval idGroup as DPID, byval lpguidInstance as LPGUID, byval lpEnumPlayersCallback2 as LPDPENUMPLAYERSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumGroups as function(byval This as IDirectPlay3 ptr, byval lpguidInstance as LPGUID, byval lpEnumPlayersCallback2 as LPDPENUMPLAYERSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumPlayers as function(byval This as IDirectPlay3 ptr, byval lpguidInstance as LPGUID, byval lpEnumPlayersCallback2 as LPDPENUMPLAYERSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumSessions as function(byval This as IDirectPlay3 ptr, byval lpsd as LPDPSESSIONDESC2, byval dwTimeout as DWORD, byval lpEnumSessionsCallback2 as LPDPENUMSESSIONSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	GetCaps as function(byval This as IDirectPlay3 ptr, byval lpDPCaps as LPDPCAPS, byval dwFlags as DWORD) as HRESULT
	GetGroupData as function(byval This as IDirectPlay3 ptr, byval idGroup as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD, byval dwFlags as DWORD) as HRESULT
	GetGroupName as function(byval This as IDirectPlay3 ptr, byval idGroup as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	GetMessageCount as function(byval This as IDirectPlay3 ptr, byval idPlayer as DPID, byval lpdwCount as LPDWORD) as HRESULT
	GetPlayerAddress as function(byval This as IDirectPlay3 ptr, byval idPlayer as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	GetPlayerCaps as function(byval This as IDirectPlay3 ptr, byval idPlayer as DPID, byval lpPlayerCaps as LPDPCAPS, byval dwFlags as DWORD) as HRESULT
	GetPlayerData as function(byval This as IDirectPlay3 ptr, byval idPlayer as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD, byval dwFlags as DWORD) as HRESULT
	GetPlayerName as function(byval This as IDirectPlay3 ptr, byval idPlayer as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	GetSessionDesc as function(byval This as IDirectPlay3 ptr, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	Initialize as function(byval This as IDirectPlay3 ptr, byval lpGUID as LPGUID) as HRESULT
	Open as function(byval This as IDirectPlay3 ptr, byval lpsd as LPDPSESSIONDESC2, byval dwFlags as DWORD) as HRESULT
	Receive as function(byval This as IDirectPlay3 ptr, byval lpidFrom as LPDPID, byval lpidTo as LPDPID, byval dwFlags as DWORD, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	Send as function(byval This as IDirectPlay3 ptr, byval idFrom as DPID, byval idTo as DPID, byval dwFlags as DWORD, byval lpData as LPVOID, byval dwDataSize as DWORD) as HRESULT
	SetGroupData as function(byval This as IDirectPlay3 ptr, byval idGroup as DPID, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	SetGroupName as function(byval This as IDirectPlay3 ptr, byval idGroup as DPID, byval lpGroupName as LPDPNAME, byval dwFlags as DWORD) as HRESULT
	SetPlayerData as function(byval This as IDirectPlay3 ptr, byval idPlayer as DPID, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	SetPlayerName as function(byval This as IDirectPlay3 ptr, byval idPlayer as DPID, byval lpPlayerName as LPDPNAME, byval dwFlags as DWORD) as HRESULT
	SetSessionDesc as function(byval This as IDirectPlay3 ptr, byval lpSessDesc as LPDPSESSIONDESC2, byval dwFlags as DWORD) as HRESULT
	AddGroupToGroup as function(byval This as IDirectPlay3 ptr, byval idParentGroup as DPID, byval idGroup as DPID) as HRESULT
	CreateGroupInGroup as function(byval This as IDirectPlay3 ptr, byval idParentGroup as DPID, byval lpidGroup as LPDPID, byval lpGroupName as LPDPNAME, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	DeleteGroupFromGroup as function(byval This as IDirectPlay3 ptr, byval idParentGroup as DPID, byval idGroup as DPID) as HRESULT
	EnumConnections as function(byval This as IDirectPlay3 ptr, byval lpguidApplication as LPCGUID, byval lpEnumCallback as LPDPENUMCONNECTIONSCALLBACK, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumGroupsInGroup as function(byval This as IDirectPlay3 ptr, byval idGroup as DPID, byval lpguidInstance as LPGUID, byval lpEnumCallback as LPDPENUMPLAYERSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	GetGroupConnectionSettings as function(byval This as IDirectPlay3 ptr, byval dwFlags as DWORD, byval idGroup as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	InitializeConnection as function(byval This as IDirectPlay3 ptr, byval lpConnection as LPVOID, byval dwFlags as DWORD) as HRESULT
	SecureOpen as function(byval This as IDirectPlay3 ptr, byval lpsd as LPCDPSESSIONDESC2, byval dwFlags as DWORD, byval lpSecurity as LPCDPSECURITYDESC, byval lpCredentials as LPCDPCREDENTIALS) as HRESULT
	SendChatMessage as function(byval This as IDirectPlay3 ptr, byval idFrom as DPID, byval idTo as DPID, byval dwFlags as DWORD, byval lpChatMessage as LPDPCHAT) as HRESULT
	SetGroupConnectionSettings as function(byval This as IDirectPlay3 ptr, byval dwFlags as DWORD, byval idGroup as DPID, byval lpConnection as LPDPLCONNECTION) as HRESULT
	StartSession as function(byval This as IDirectPlay3 ptr, byval dwFlags as DWORD, byval idGroup as DPID) as HRESULT
	GetGroupFlags as function(byval This as IDirectPlay3 ptr, byval idGroup as DPID, byval lpdwFlags as LPDWORD) as HRESULT
	GetGroupParent as function(byval This as IDirectPlay3 ptr, byval idGroup as DPID, byval lpidParent as LPDPID) as HRESULT
	GetPlayerAccount as function(byval This as IDirectPlay3 ptr, byval idPlayer as DPID, byval dwFlags as DWORD, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	GetPlayerFlags as function(byval This as IDirectPlay3 ptr, byval idPlayer as DPID, byval lpdwFlags as LPDWORD) as HRESULT
end type

#define IDirectPlay3_QueryInterface(p, a, b) (p)->lpVtbl->QueryInterface(p, a, b)
#define IDirectPlay3_AddRef(p) (p)->lpVtbl->AddRef(p)
#define IDirectPlay3_Release(p) (p)->lpVtbl->Release(p)
#define IDirectPlay3_AddPlayerToGroup(p, a, b) (p)->lpVtbl->AddPlayerToGroup(p, a, b)
#define IDirectPlay3_Close(p) (p)->lpVtbl->Close(p)
#define IDirectPlay3_CreateGroup(p, a, b, c, d, e) (p)->lpVtbl->CreateGroup(p, a, b, c, d, e)
#define IDirectPlay3_CreatePlayer(p, a, b, c, d, e, f) (p)->lpVtbl->CreatePlayer(p, a, b, c, d, e, f)
#define IDirectPlay3_DeletePlayerFromGroup(p, a, b) (p)->lpVtbl->DeletePlayerFromGroup(p, a, b)
#define IDirectPlay3_DestroyGroup(p, a) (p)->lpVtbl->DestroyGroup(p, a)
#define IDirectPlay3_DestroyPlayer(p, a) (p)->lpVtbl->DestroyPlayer(p, a)
#define IDirectPlay3_EnumGroupPlayers(p, a, b, c, d, e) (p)->lpVtbl->EnumGroupPlayers(p, a, b, c, d, e)
#define IDirectPlay3_EnumGroups(p, a, b, c, d) (p)->lpVtbl->EnumGroups(p, a, b, c, d)
#define IDirectPlay3_EnumPlayers(p, a, b, c, d) (p)->lpVtbl->EnumPlayers(p, a, b, c, d)
#define IDirectPlay3_EnumSessions(p, a, b, c, d, e) (p)->lpVtbl->EnumSessions(p, a, b, c, d, e)
#define IDirectPlay3_GetCaps(p, a, b) (p)->lpVtbl->GetCaps(p, a, b)
#define IDirectPlay3_GetGroupData(p, a, b, c, d) (p)->lpVtbl->GetGroupData(p, a, b, c, d)
#define IDirectPlay3_GetGroupName(p, a, b, c) (p)->lpVtbl->GetGroupName(p, a, b, c)
#define IDirectPlay3_GetMessageCount(p, a, b) (p)->lpVtbl->GetMessageCount(p, a, b)
#define IDirectPlay3_GetPlayerAddress(p, a, b, c) (p)->lpVtbl->GetPlayerAddress(p, a, b, c)
#define IDirectPlay3_GetPlayerCaps(p, a, b, c) (p)->lpVtbl->GetPlayerCaps(p, a, b, c)
#define IDirectPlay3_GetPlayerData(p, a, b, c, d) (p)->lpVtbl->GetPlayerData(p, a, b, c, d)
#define IDirectPlay3_GetPlayerName(p, a, b, c) (p)->lpVtbl->GetPlayerName(p, a, b, c)
#define IDirectPlay3_GetSessionDesc(p, a, b) (p)->lpVtbl->GetSessionDesc(p, a, b)
#define IDirectPlay3_Initialize(p, a) (p)->lpVtbl->Initialize(p, a)
#define IDirectPlay3_Open(p, a, b) (p)->lpVtbl->Open(p, a, b)
#define IDirectPlay3_Receive(p, a, b, c, d, e) (p)->lpVtbl->Receive(p, a, b, c, d, e)
#define IDirectPlay3_Send(p, a, b, c, d, e) (p)->lpVtbl->Send(p, a, b, c, d, e)
#define IDirectPlay3_SetGroupData(p, a, b, c, d) (p)->lpVtbl->SetGroupData(p, a, b, c, d)
#define IDirectPlay3_SetGroupName(p, a, b, c) (p)->lpVtbl->SetGroupName(p, a, b, c)
#define IDirectPlay3_SetPlayerData(p, a, b, c, d) (p)->lpVtbl->SetPlayerData(p, a, b, c, d)
#define IDirectPlay3_SetPlayerName(p, a, b, c) (p)->lpVtbl->SetPlayerName(p, a, b, c)
#define IDirectPlay3_SetSessionDesc(p, a, b) (p)->lpVtbl->SetSessionDesc(p, a, b)
#define IDirectPlay3_AddGroupToGroup(p, a, b) (p)->lpVtbl->AddGroupToGroup(p, a, b)
#define IDirectPlay3_CreateGroupInGroup(p, a, b, c, d, e, f) (p)->lpVtbl->CreateGroupInGroup(p, a, b, c, d, e, f)
#define IDirectPlay3_DeleteGroupFromGroup(p, a, b) (p)->lpVtbl->DeleteGroupFromGroup(p, a, b)
#define IDirectPlay3_EnumConnections(p, a, b, c, d) (p)->lpVtbl->EnumConnections(p, a, b, c, d)
#define IDirectPlay3_EnumGroupsInGroup(p, a, b, c, d, e) (p)->lpVtbl->EnumGroupsInGroup(p, a, b, c, d, e)
#define IDirectPlay3_GetGroupConnectionSettings(p, a, b, c, d) (p)->lpVtbl->GetGroupConnectionSettings(p, a, b, c, d)
#define IDirectPlay3_InitializeConnection(p, a, b) (p)->lpVtbl->InitializeConnection(p, a, b)
#define IDirectPlay3_SecureOpen(p, a, b, c, d) (p)->lpVtbl->SecureOpen(p, a, b, c, d)
#define IDirectPlay3_SendChatMessage(p, a, b, c, d) (p)->lpVtbl->SendChatMessage(p, a, b, c, d)
#define IDirectPlay3_SetGroupConnectionSettings(p, a, b, c) (p)->lpVtbl->SetGroupConnectionSettings(p, a, b, c)
#define IDirectPlay3_StartSession(p, a, b) (p)->lpVtbl->StartSession(p, a, b)
#define IDirectPlay3_GetGroupFlags(p, a, b) (p)->lpVtbl->GetGroupFlags(p, a, b)
#define IDirectPlay3_GetGroupParent(p, a, b) (p)->lpVtbl->GetGroupParent(p, a, b)
#define IDirectPlay3_GetPlayerAccount(p, a, b, c, d) (p)->lpVtbl->GetPlayerAccount(p, a, b, c, d)
#define IDirectPlay3_GetPlayerFlags(p, a, b) (p)->lpVtbl->GetPlayerFlags(p, a, b)

type IDirectPlay4
	lpVtbl as IDirectPlay4Vtbl ptr
end type

type IDirectPlay4Vtbl_
	QueryInterface as function(byval This as IDirectPlay4 ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IDirectPlay4 ptr) as ULONG_
	Release as function(byval This as IDirectPlay4 ptr) as ULONG_
	AddPlayerToGroup as function(byval This as IDirectPlay4 ptr, byval idGroup as DPID, byval idPlayer as DPID) as HRESULT
	Close as function(byval This as IDirectPlay4 ptr) as HRESULT
	CreateGroup as function(byval This as IDirectPlay4 ptr, byval lpidGroup as LPDPID, byval lpGroupName as LPDPNAME, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	CreatePlayer as function(byval This as IDirectPlay4 ptr, byval lpidPlayer as LPDPID, byval lpPlayerName as LPDPNAME, byval hEvent as HANDLE, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	DeletePlayerFromGroup as function(byval This as IDirectPlay4 ptr, byval idGroup as DPID, byval idPlayer as DPID) as HRESULT
	DestroyGroup as function(byval This as IDirectPlay4 ptr, byval idGroup as DPID) as HRESULT
	DestroyPlayer as function(byval This as IDirectPlay4 ptr, byval idPlayer as DPID) as HRESULT
	EnumGroupPlayers as function(byval This as IDirectPlay4 ptr, byval idGroup as DPID, byval lpguidInstance as LPGUID, byval lpEnumPlayersCallback2 as LPDPENUMPLAYERSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumGroups as function(byval This as IDirectPlay4 ptr, byval lpguidInstance as LPGUID, byval lpEnumPlayersCallback2 as LPDPENUMPLAYERSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumPlayers as function(byval This as IDirectPlay4 ptr, byval lpguidInstance as LPGUID, byval lpEnumPlayersCallback2 as LPDPENUMPLAYERSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumSessions as function(byval This as IDirectPlay4 ptr, byval lpsd as LPDPSESSIONDESC2, byval dwTimeout as DWORD, byval lpEnumSessionsCallback2 as LPDPENUMSESSIONSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	GetCaps as function(byval This as IDirectPlay4 ptr, byval lpDPCaps as LPDPCAPS, byval dwFlags as DWORD) as HRESULT
	GetGroupData as function(byval This as IDirectPlay4 ptr, byval idGroup as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD, byval dwFlags as DWORD) as HRESULT
	GetGroupName as function(byval This as IDirectPlay4 ptr, byval idGroup as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	GetMessageCount as function(byval This as IDirectPlay4 ptr, byval idPlayer as DPID, byval lpdwCount as LPDWORD) as HRESULT
	GetPlayerAddress as function(byval This as IDirectPlay4 ptr, byval idPlayer as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	GetPlayerCaps as function(byval This as IDirectPlay4 ptr, byval idPlayer as DPID, byval lpPlayerCaps as LPDPCAPS, byval dwFlags as DWORD) as HRESULT
	GetPlayerData as function(byval This as IDirectPlay4 ptr, byval idPlayer as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD, byval dwFlags as DWORD) as HRESULT
	GetPlayerName as function(byval This as IDirectPlay4 ptr, byval idPlayer as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	GetSessionDesc as function(byval This as IDirectPlay4 ptr, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	Initialize as function(byval This as IDirectPlay4 ptr, byval lpGUID as LPGUID) as HRESULT
	Open as function(byval This as IDirectPlay4 ptr, byval lpsd as LPDPSESSIONDESC2, byval dwFlags as DWORD) as HRESULT
	Receive as function(byval This as IDirectPlay4 ptr, byval lpidFrom as LPDPID, byval lpidTo as LPDPID, byval dwFlags as DWORD, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	Send as function(byval This as IDirectPlay4 ptr, byval idFrom as DPID, byval idTo as DPID, byval dwFlags as DWORD, byval lpData as LPVOID, byval dwDataSize as DWORD) as HRESULT
	SetGroupData as function(byval This as IDirectPlay4 ptr, byval idGroup as DPID, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	SetGroupName as function(byval This as IDirectPlay4 ptr, byval idGroup as DPID, byval lpGroupName as LPDPNAME, byval dwFlags as DWORD) as HRESULT
	SetPlayerData as function(byval This as IDirectPlay4 ptr, byval idPlayer as DPID, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	SetPlayerName as function(byval This as IDirectPlay4 ptr, byval idPlayer as DPID, byval lpPlayerName as LPDPNAME, byval dwFlags as DWORD) as HRESULT
	SetSessionDesc as function(byval This as IDirectPlay4 ptr, byval lpSessDesc as LPDPSESSIONDESC2, byval dwFlags as DWORD) as HRESULT
	AddGroupToGroup as function(byval This as IDirectPlay4 ptr, byval idParentGroup as DPID, byval idGroup as DPID) as HRESULT
	CreateGroupInGroup as function(byval This as IDirectPlay4 ptr, byval idParentGroup as DPID, byval lpidGroup as LPDPID, byval lpGroupName as LPDPNAME, byval lpData as LPVOID, byval dwDataSize as DWORD, byval dwFlags as DWORD) as HRESULT
	DeleteGroupFromGroup as function(byval This as IDirectPlay4 ptr, byval idParentGroup as DPID, byval idGroup as DPID) as HRESULT
	EnumConnections as function(byval This as IDirectPlay4 ptr, byval lpguidApplication as LPCGUID, byval lpEnumCallback as LPDPENUMCONNECTIONSCALLBACK, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	EnumGroupsInGroup as function(byval This as IDirectPlay4 ptr, byval idGroup as DPID, byval lpguidInstance as LPGUID, byval lpEnumCallback as LPDPENUMPLAYERSCALLBACK2, byval lpContext as LPVOID, byval dwFlags as DWORD) as HRESULT
	GetGroupConnectionSettings as function(byval This as IDirectPlay4 ptr, byval dwFlags as DWORD, byval idGroup as DPID, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	InitializeConnection as function(byval This as IDirectPlay4 ptr, byval lpConnection as LPVOID, byval dwFlags as DWORD) as HRESULT
	SecureOpen as function(byval This as IDirectPlay4 ptr, byval lpsd as LPCDPSESSIONDESC2, byval dwFlags as DWORD, byval lpSecurity as LPCDPSECURITYDESC, byval lpCredentials as LPCDPCREDENTIALS) as HRESULT
	SendChatMessage as function(byval This as IDirectPlay4 ptr, byval idFrom as DPID, byval idTo as DPID, byval dwFlags as DWORD, byval lpChatMessage as LPDPCHAT) as HRESULT
	SetGroupConnectionSettings as function(byval This as IDirectPlay4 ptr, byval dwFlags as DWORD, byval idGroup as DPID, byval lpConnection as LPDPLCONNECTION) as HRESULT
	StartSession as function(byval This as IDirectPlay4 ptr, byval dwFlags as DWORD, byval idGroup as DPID) as HRESULT
	GetGroupFlags as function(byval This as IDirectPlay4 ptr, byval idGroup as DPID, byval lpdwFlags as LPDWORD) as HRESULT
	GetGroupParent as function(byval This as IDirectPlay4 ptr, byval idGroup as DPID, byval lpidParent as LPDPID) as HRESULT
	GetPlayerAccount as function(byval This as IDirectPlay4 ptr, byval idPlayer as DPID, byval dwFlags as DWORD, byval lpData as LPVOID, byval lpdwDataSize as LPDWORD) as HRESULT
	GetPlayerFlags as function(byval This as IDirectPlay4 ptr, byval idPlayer as DPID, byval lpdwFlags as LPDWORD) as HRESULT
	GetGroupOwner as function(byval This as IDirectPlay4 ptr, byval as DPID, byval as LPDPID) as HRESULT
	SetGroupOwner as function(byval This as IDirectPlay4 ptr, byval as DPID, byval as DPID) as HRESULT
	SendEx as function(byval This as IDirectPlay4 ptr, byval as DPID, byval as DPID, byval as DWORD, byval as LPVOID, byval as DWORD, byval as DWORD, byval as DWORD, byval as LPVOID, byval as LPDWORD) as HRESULT
	GetMessageQueue as function(byval This as IDirectPlay4 ptr, byval as DPID, byval as DPID, byval as DWORD, byval as LPDWORD, byval as LPDWORD) as HRESULT
	CancelMessage as function(byval This as IDirectPlay4 ptr, byval as DWORD, byval as DWORD) as HRESULT
	CancelPriority as function(byval This as IDirectPlay4 ptr, byval as DWORD, byval as DWORD, byval as DWORD) as HRESULT
end type

#define IDirectPlayX_QueryInterface(p, a, b) (p)->lpVtbl->QueryInterface(p, a, b)
#define IDirectPlayX_AddRef(p) (p)->lpVtbl->AddRef(p)
#define IDirectPlayX_Release(p) (p)->lpVtbl->Release(p)
#define IDirectPlayX_AddPlayerToGroup(p, a, b) (p)->lpVtbl->AddPlayerToGroup(p, a, b)
#define IDirectPlayX_Close(p) (p)->lpVtbl->Close(p)
#define IDirectPlayX_CreateGroup(p, a, b, c, d, e) (p)->lpVtbl->CreateGroup(p, a, b, c, d, e)
#define IDirectPlayX_CreatePlayer(p, a, b, c, d, e, f) (p)->lpVtbl->CreatePlayer(p, a, b, c, d, e, f)
#define IDirectPlayX_DeletePlayerFromGroup(p, a, b) (p)->lpVtbl->DeletePlayerFromGroup(p, a, b)
#define IDirectPlayX_DestroyGroup(p, a) (p)->lpVtbl->DestroyGroup(p, a)
#define IDirectPlayX_DestroyPlayer(p, a) (p)->lpVtbl->DestroyPlayer(p, a)
#define IDirectPlayX_EnumGroupPlayers(p, a, b, c, d, e) (p)->lpVtbl->EnumGroupPlayers(p, a, b, c, d, e)
#define IDirectPlayX_EnumGroups(p, a, b, c, d) (p)->lpVtbl->EnumGroups(p, a, b, c, d)
#define IDirectPlayX_EnumPlayers(p, a, b, c, d) (p)->lpVtbl->EnumPlayers(p, a, b, c, d)
#define IDirectPlayX_EnumSessions(p, a, b, c, d, e) (p)->lpVtbl->EnumSessions(p, a, b, c, d, e)
#define IDirectPlayX_GetCaps(p, a, b) (p)->lpVtbl->GetCaps(p, a, b)
#define IDirectPlayX_GetGroupData(p, a, b, c, d) (p)->lpVtbl->GetGroupData(p, a, b, c, d)
#define IDirectPlayX_GetGroupName(p, a, b, c) (p)->lpVtbl->GetGroupName(p, a, b, c)
#define IDirectPlayX_GetMessageCount(p, a, b) (p)->lpVtbl->GetMessageCount(p, a, b)
#define IDirectPlayX_GetPlayerAddress(p, a, b, c) (p)->lpVtbl->GetPlayerAddress(p, a, b, c)
#define IDirectPlayX_GetPlayerCaps(p, a, b, c) (p)->lpVtbl->GetPlayerCaps(p, a, b, c)
#define IDirectPlayX_GetPlayerData(p, a, b, c, d) (p)->lpVtbl->GetPlayerData(p, a, b, c, d)
#define IDirectPlayX_GetPlayerName(p, a, b, c) (p)->lpVtbl->GetPlayerName(p, a, b, c)
#define IDirectPlayX_GetSessionDesc(p, a, b) (p)->lpVtbl->GetSessionDesc(p, a, b)
#define IDirectPlayX_Initialize(p, a) (p)->lpVtbl->Initialize(p, a)
#define IDirectPlayX_Open(p, a, b) (p)->lpVtbl->Open(p, a, b)
#define IDirectPlayX_Receive(p, a, b, c, d, e) (p)->lpVtbl->Receive(p, a, b, c, d, e)
#define IDirectPlayX_Send(p, a, b, c, d, e) (p)->lpVtbl->Send(p, a, b, c, d, e)
#define IDirectPlayX_SetGroupData(p, a, b, c, d) (p)->lpVtbl->SetGroupData(p, a, b, c, d)
#define IDirectPlayX_SetGroupName(p, a, b, c) (p)->lpVtbl->SetGroupName(p, a, b, c)
#define IDirectPlayX_SetPlayerData(p, a, b, c, d) (p)->lpVtbl->SetPlayerData(p, a, b, c, d)
#define IDirectPlayX_SetPlayerName(p, a, b, c) (p)->lpVtbl->SetPlayerName(p, a, b, c)
#define IDirectPlayX_SetSessionDesc(p, a, b) (p)->lpVtbl->SetSessionDesc(p, a, b)
#define IDirectPlayX_AddGroupToGroup(p, a, b) (p)->lpVtbl->AddGroupToGroup(p, a, b)
#define IDirectPlayX_CreateGroupInGroup(p, a, b, c, d, e, f) (p)->lpVtbl->CreateGroupInGroup(p, a, b, c, d, e, f)
#define IDirectPlayX_DeleteGroupFromGroup(p, a, b) (p)->lpVtbl->DeleteGroupFromGroup(p, a, b)
#define IDirectPlayX_EnumConnections(p, a, b, c, d) (p)->lpVtbl->EnumConnections(p, a, b, c, d)
#define IDirectPlayX_EnumGroupsInGroup(p, a, b, c, d, e) (p)->lpVtbl->EnumGroupsInGroup(p, a, b, c, d, e)
#define IDirectPlayX_GetGroupConnectionSettings(p, a, b, c, d) (p)->lpVtbl->GetGroupConnectionSettings(p, a, b, c, d)
#define IDirectPlayX_InitializeConnection(p, a, b) (p)->lpVtbl->InitializeConnection(p, a, b)
#define IDirectPlayX_SecureOpen(p, a, b, c, d) (p)->lpVtbl->SecureOpen(p, a, b, c, d)
#define IDirectPlayX_SendChatMessage(p, a, b, c, d) (p)->lpVtbl->SendChatMessage(p, a, b, c, d)
#define IDirectPlayX_SetGroupConnectionSettings(p, a, b, c) (p)->lpVtbl->SetGroupConnectionSettings(p, a, b, c)
#define IDirectPlayX_StartSession(p, a, b) (p)->lpVtbl->StartSession(p, a, b)
#define IDirectPlayX_GetGroupFlags(p, a, b) (p)->lpVtbl->GetGroupFlags(p, a, b)
#define IDirectPlayX_GetGroupParent(p, a, b) (p)->lpVtbl->GetGroupParent(p, a, b)
#define IDirectPlayX_GetPlayerAccount(p, a, b, c, d) (p)->lpVtbl->GetPlayerAccount(p, a, b, c, d)
#define IDirectPlayX_GetPlayerFlags(p, a, b) (p)->lpVtbl->GetPlayerFlags(p, a, b)
#define IDirectPlayX_GetGroupOwner(p, a, b) (p)->lpVtbl->GetGroupOwner(p, a, b)
#define IDirectPlayX_SetGroupOwner(p, a, b) (p)->lpVtbl->SetGroupOwner(p, a, b)
#define IDirectPlayX_SendEx(p, a, b, c, d, e, f, g, h, i) (p)->lpVtbl->SendEx(p, a, b, c, d, e, f, g, h, i)
#define IDirectPlayX_GetMessageQueue(p, a, b, c, d, e) (p)->lpVtbl->GetMessageQueue(p, a, b, c, d, e)
#define IDirectPlayX_CancelMessage(p, a, b) (p)->lpVtbl->CancelMessage(p, a, b)
#define IDirectPlayX_CancelPriority(p, a, b, c) (p)->lpVtbl->CancelPriority(p, a, b, c)
#define DPCONNECTION_DIRECTPLAY &h00000001
#define DPCONNECTION_DIRECTPLAYLOBBY &h00000002
#define DPENUMPLAYERS_ALL &h00000000
#define DPENUMPLAYERS_LOCAL &h00000008
#define DPENUMPLAYERS_REMOTE &h00000010
#define DPENUMPLAYERS_GROUP &h00000020
#define DPENUMPLAYERS_SESSION &h00000080
#define DPENUMPLAYERS_SERVERPLAYER &h00000100
#define DPENUMPLAYERS_SPECTATOR &h00000200
#define DPENUMPLAYERS_OWNER &h00002000
#define DPENUMGROUPS_ALL DPENUMPLAYERS_ALL
#define DPENUMGROUPS_LOCAL DPENUMPLAYERS_LOCAL
#define DPENUMGROUPS_REMOTE DPENUMPLAYERS_REMOTE
#define DPENUMGROUPS_SESSION DPENUMPLAYERS_SESSION
#define DPENUMGROUPS_SHORTCUT &h00000400
#define DPENUMGROUPS_STAGINGAREA &h00000800
#define DPENUMGROUPS_HIDDEN &h00001000
#define DPPLAYER_SERVERPLAYER DPENUMPLAYERS_SERVERPLAYER
#define DPPLAYER_SPECTATOR DPENUMPLAYERS_SPECTATOR
#define DPPLAYER_LOCAL DPENUMPLAYERS_LOCAL
#define DPPLAYER_OWNER DPENUMPLAYERS_OWNER
#define DPGROUP_STAGINGAREA DPENUMGROUPS_STAGINGAREA
#define DPGROUP_LOCAL DPENUMGROUPS_LOCAL
#define DPGROUP_HIDDEN DPENUMGROUPS_HIDDEN
#define DPENUMSESSIONS_AVAILABLE &h00000001
#define DPENUMSESSIONS_ALL &h00000002
#define DPENUMSESSIONS_ASYNC &h00000010
#define DPENUMSESSIONS_STOPASYNC &h00000020
#define DPENUMSESSIONS_PASSWORDREQUIRED &h00000040
#define DPENUMSESSIONS_RETURNSTATUS &h00000080
#define DPGETCAPS_GUARANTEED &h00000001
#define DPGET_REMOTE &h00000000
#define DPGET_LOCAL &h00000001
#define DPRECEIVE_ALL &h00000001
#define DPRECEIVE_TOPLAYER &h00000002
#define DPRECEIVE_FROMPLAYER &h00000004
#define DPRECEIVE_PEEK &h00000008
#define DPSEND_NONGUARANTEED &h00000000
#define DPSEND_GUARANTEED &h00000001
#define DPSEND_HIGHPRIORITY &h00000002
#define DPSEND_OPENSTREAM &h00000008
#define DPSEND_CLOSESTREAM &h00000010
#define DPSEND_SIGNED &h00000020
#define DPSEND_ENCRYPTED &h00000040
#define DPSEND_LOBBYSYSTEMMESSAGE &h00000080
#define DPSEND_ASYNC &h00000200
#define DPSEND_NOSENDCOMPLETEMSG &h00000400
#define DPSEND_MAX_PRI &h0000FFFF
#define DPSEND_MAX_PRIORITY DPSEND_MAX_PRI
#define DPSET_REMOTE &h00000000
#define DPSET_LOCAL &h00000001
#define DPSET_GUARANTEED &h00000002
#define DPMESSAGEQUEUE_SEND &h00000001
#define DPMESSAGEQUEUE_RECEIVE &h00000002
#define DPCONNECT_RETURNSTATUS DPENUMSESSIONS_RETURNSTATUS
#define DPCAPS_ISHOST &h00000002
#define DPCAPS_GROUPOPTIMIZED &h00000008
#define DPCAPS_KEEPALIVEOPTIMIZED &h00000010
#define DPCAPS_GUARANTEEDOPTIMIZED &h00000020
#define DPCAPS_GUARANTEEDSUPPORTED &h00000040
#define DPCAPS_SIGNINGSUPPORTED &h00000080
#define DPCAPS_ENCRYPTIONSUPPORTED &h00000100
#define DPPLAYERCAPS_LOCAL &h00000800
#define DPCAPS_ASYNCCANCELSUPPORTED &h00001000
#define DPCAPS_ASYNCCANCELALLSUPPORTED &h00002000
#define DPCAPS_SENDTIMEOUTSUPPORTED &h00004000
#define DPCAPS_SENDPRIORITYSUPPORTED &h00008000
#define DPCAPS_ASYNCSUPPORTED &h00010000
#define DPSYS_CREATEPLAYERORGROUP &h0003
#define DPSYS_DESTROYPLAYERORGROUP &h0005
#define DPSYS_ADDPLAYERTOGROUP &h0007
#define DPSYS_DELETEPLAYERFROMGROUP &h0021
#define DPSYS_SESSIONLOST &h0031
#define DPSYS_HOST &h0101
#define DPSYS_SETPLAYERORGROUPDATA &h0102
#define DPSYS_SETPLAYERORGROUPNAME &h0103
#define DPSYS_SETSESSIONDESC &h0104
#define DPSYS_ADDGROUPTOGROUP &h0105
#define DPSYS_DELETEGROUPFROMGROUP &h0106
#define DPSYS_SECUREMESSAGE &h0107
#define DPSYS_STARTSESSION &h0108
#define DPSYS_CHAT &h0109
#define DPSYS_SETGROUPOWNER &h010A
#define DPSYS_SENDCOMPLETE &h010d
#define DPPLAYERTYPE_GROUP &h00000000
#define DPPLAYERTYPE_PLAYER &h00000001

type tagDPMSG_GENERIC
	dwType as DWORD
end type

type DPMSG_GENERIC as tagDPMSG_GENERIC
type LPDPMSG_GENERIC as tagDPMSG_GENERIC ptr
type DPMSG_HOST as tagDPMSG_GENERIC
type LPDPMSG_HOST as tagDPMSG_GENERIC ptr
type DPMSG_SESSIONLOST as tagDPMSG_GENERIC
type LPDPMSG_SESSIONLOST as tagDPMSG_GENERIC ptr

type tagDPMSG_CREATEPLAYERORGROUP
	dwType as DWORD
	dwPlayerType as DWORD
	dpId as DPID
	dwCurrentPlayers as DWORD
	lpData as LPVOID
	dwDataSize as DWORD
	dpnName as DPNAME
	dpIdParent as DPID
	dwFlags as DWORD
end type

type DPMSG_CREATEPLAYERORGROUP as tagDPMSG_CREATEPLAYERORGROUP
type LPDPMSG_CREATEPLAYERORGROUP as tagDPMSG_CREATEPLAYERORGROUP ptr

type tagDPMSG_DESTROYPLAYERORGROUP
	dwType as DWORD
	dwPlayerType as DWORD
	dpId as DPID
	lpLocalData as LPVOID
	dwLocalDataSize as DWORD
	lpRemoteData as LPVOID
	dwRemoteDataSize as DWORD
	dpnName as DPNAME
	dpIdParent as DPID
	dwFlags as DWORD
end type

type DPMSG_DESTROYPLAYERORGROUP as tagDPMSG_DESTROYPLAYERORGROUP
type LPDPMSG_DESTROYPLAYERORGROUP as tagDPMSG_DESTROYPLAYERORGROUP ptr

type tagDPMSG_ADDPLAYERTOGROUP
	dwType as DWORD
	dpIdGroup as DPID
	dpIdPlayer as DPID
end type

type DPMSG_ADDPLAYERTOGROUP as tagDPMSG_ADDPLAYERTOGROUP
type LPDPMSG_ADDPLAYERTOGROUP as tagDPMSG_ADDPLAYERTOGROUP ptr
type DPMSG_DELETEPLAYERFROMGROUP as tagDPMSG_ADDPLAYERTOGROUP
type LPDPMSG_DELETEPLAYERFROMGROUP as tagDPMSG_ADDPLAYERTOGROUP ptr

type tagDPMSG_ADDGROUPTOGROUP
	dwType as DWORD
	dpIdParentGroup as DPID
	dpIdGroup as DPID
end type

type DPMSG_ADDGROUPTOGROUP as tagDPMSG_ADDGROUPTOGROUP
type LPDPMSG_ADDGROUPTOGROUP as tagDPMSG_ADDGROUPTOGROUP ptr
type DPMSG_DELETEGROUPFROMGROUP as tagDPMSG_ADDGROUPTOGROUP
type LPDPMSG_DELETEGROUPFROMGROUP as tagDPMSG_ADDGROUPTOGROUP ptr

type tagDPMSG_SETPLAYERORGROUPDATA
	dwType as DWORD
	dwPlayerType as DWORD
	dpId as DPID
	lpData as LPVOID
	dwDataSize as DWORD
end type

type DPMSG_SETPLAYERORGROUPDATA as tagDPMSG_SETPLAYERORGROUPDATA
type LPDPMSG_SETPLAYERORGROUPDATA as tagDPMSG_SETPLAYERORGROUPDATA ptr

type tagDPMSG_SETPLAYERORGROUPNAME
	dwType as DWORD
	dwPlayerType as DWORD
	dpId as DPID
	dpnName as DPNAME
end type

type DPMSG_SETPLAYERORGROUPNAME as tagDPMSG_SETPLAYERORGROUPNAME
type LPDPMSG_SETPLAYERORGROUPNAME as tagDPMSG_SETPLAYERORGROUPNAME ptr

type tagDPMSG_SETSESSIONDESC
	dwType as DWORD
	dpDesc as DPSESSIONDESC2
end type

type DPMSG_SETSESSIONDESC as tagDPMSG_SETSESSIONDESC
type LPDPMSG_SETSESSIONDESC as tagDPMSG_SETSESSIONDESC ptr

type tagDPMSG_SECUREMESSAGE
	dwType as DWORD
	dwFlags as DWORD
	dpIdFrom as DPID
	lpData as LPVOID
	dwDataSize as DWORD
end type

type DPMSG_SECUREMESSAGE as tagDPMSG_SECUREMESSAGE
type LPDPMSG_SECUREMESSAGE as tagDPMSG_SECUREMESSAGE ptr

type tagDPMSG_STARTSESSION
	dwType as DWORD
	lpConn as LPDPLCONNECTION
end type

type DPMSG_STARTSESSION as tagDPMSG_STARTSESSION
type LPDPMSG_STARTSESSION as tagDPMSG_STARTSESSION ptr

type tagDPMSG_CHAT
	dwType as DWORD
	dwFlags as DWORD
	idFromPlayer as DPID
	idToPlayer as DPID
	idToGroup as DPID
	lpChat as LPDPCHAT
end type

type DPMSG_CHAT as tagDPMSG_CHAT
type LPDPMSG_CHAT as tagDPMSG_CHAT ptr

type tagDPMSG_SETGROUPOWNER
	dwType as DWORD
	idGroup as DPID
	idNewOwner as DPID
	idOldOwner as DPID
end type

type DPMSG_SETGROUPOWNER as tagDPMSG_SETGROUPOWNER
type LPDPMSG_SETGROUPOWNER as tagDPMSG_SETGROUPOWNER ptr

type DPMSG_SENDCOMPLETE
	dwType as DWORD
	idFrom as DPID
	idTo as DPID
	dwFlags as DWORD
	dwPriority as DWORD
	dwTimeout as DWORD
	lpvContext as LPVOID
	dwMsgID as DWORD
	hr as HRESULT
	dwSendTime as DWORD
end type

type LPDPMSG_SENDCOMPLETE as DPMSG_SENDCOMPLETE ptr

end extern
