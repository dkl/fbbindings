#pragma once

#include once "winapifamily.bi"
#include once "_mingw_unicode.bi"
#include once "wnnc.bi"

extern "C"

#define _WINNETWK_
#define RESOURCE_CONNECTED &h00000001
#define RESOURCE_GLOBALNET &h00000002
#define RESOURCE_REMEMBERED &h00000003
#define RESOURCE_RECENT &h00000004
#define RESOURCE_CONTEXT &h00000005
#define RESOURCETYPE_ANY &h00000000
#define RESOURCETYPE_DISK &h00000001
#define RESOURCETYPE_PRINT &h00000002
#define RESOURCETYPE_RESERVED &h00000008
#define RESOURCETYPE_UNKNOWN &hFFFFFFFF
#define RESOURCEUSAGE_CONNECTABLE &h00000001
#define RESOURCEUSAGE_CONTAINER &h00000002
#define RESOURCEUSAGE_NOLOCALDEVICE &h00000004
#define RESOURCEUSAGE_SIBLING &h00000008
#define RESOURCEUSAGE_ATTACHED &h00000010
#define RESOURCEUSAGE_ALL ((RESOURCEUSAGE_CONNECTABLE or RESOURCEUSAGE_CONTAINER) or RESOURCEUSAGE_ATTACHED)
#define RESOURCEUSAGE_RESERVED &h80000000
#define RESOURCEDISPLAYTYPE_GENERIC &h00000000
#define RESOURCEDISPLAYTYPE_DOMAIN &h00000001
#define RESOURCEDISPLAYTYPE_SERVER &h00000002
#define RESOURCEDISPLAYTYPE_SHARE &h00000003
#define RESOURCEDISPLAYTYPE_FILE &h00000004
#define RESOURCEDISPLAYTYPE_GROUP &h00000005
#define RESOURCEDISPLAYTYPE_NETWORK &h00000006
#define RESOURCEDISPLAYTYPE_ROOT &h00000007
#define RESOURCEDISPLAYTYPE_SHAREADMIN &h00000008
#define RESOURCEDISPLAYTYPE_DIRECTORY &h00000009
#define RESOURCEDISPLAYTYPE_TREE &h0000000a
#define RESOURCEDISPLAYTYPE_NDSCONTAINER &h0000000b

type _NETRESOURCEA
	dwScope as DWORD
	dwType as DWORD
	dwDisplayType as DWORD
	dwUsage as DWORD
	lpLocalName as LPSTR
	lpRemoteName as LPSTR
	lpComment as LPSTR
	lpProvider as LPSTR
end type

type NETRESOURCEA as _NETRESOURCEA
type LPNETRESOURCEA as _NETRESOURCEA ptr

type _NETRESOURCEW
	dwScope as DWORD
	dwType as DWORD
	dwDisplayType as DWORD
	dwUsage as DWORD
	lpLocalName as LPWSTR
	lpRemoteName as LPWSTR
	lpComment as LPWSTR
	lpProvider as LPWSTR
end type

type NETRESOURCEW as _NETRESOURCEW
type LPNETRESOURCEW as _NETRESOURCEW ptr

#ifdef UNICODE
	type NETRESOURCE as NETRESOURCEW
	type LPNETRESOURCE as LPNETRESOURCEW
#else
	type NETRESOURCE as NETRESOURCEA
	type LPNETRESOURCE as LPNETRESOURCEA
#endif

#define NETPROPERTY_PERSISTENT 1
#define CONNECT_UPDATE_PROFILE &h00000001
#define CONNECT_UPDATE_RECENT &h00000002
#define CONNECT_TEMPORARY &h00000004
#define CONNECT_INTERACTIVE &h00000008
#define CONNECT_PROMPT &h00000010
#define CONNECT_NEED_DRIVE &h00000020
#define CONNECT_REFCOUNT &h00000040
#define CONNECT_REDIRECT &h00000080
#define CONNECT_LOCALDRIVE &h00000100
#define CONNECT_CURRENT_MEDIA &h00000200
#define CONNECT_DEFERRED &h00000400
#define CONNECT_RESERVED &hFF000000
#define CONNECT_COMMANDLINE &h00000800
#define CONNECT_CMD_SAVECRED &h00001000
#define WNetAddConnection __MINGW_NAME_AW(WNetAddConnection)
#define WNetAddConnection2 __MINGW_NAME_AW(WNetAddConnection2)
#define WNetAddConnection3 __MINGW_NAME_AW(WNetAddConnection3)
#define WNetCancelConnection __MINGW_NAME_AW(WNetCancelConnection)
#define WNetCancelConnection2 __MINGW_NAME_AW(WNetCancelConnection2)
#define WNetGetConnection __MINGW_NAME_AW(WNetGetConnection)
#define WNetRestoreConnection __MINGW_NAME_AW(WNetRestoreConnection)
#define WNetUseConnection __MINGW_NAME_AW(WNetUseConnection)

extern     WINAPI as DWORD
dim shared WINAPI as DWORD

'' TODO: DWORD WINAPI WNetAddConnectionA(LPCSTR lpRemoteName,LPCSTR lpPassword,LPCSTR lpLocalName);
'' TODO: DWORD WINAPI WNetAddConnectionW(LPCWSTR lpRemoteName,LPCWSTR lpPassword,LPCWSTR lpLocalName);
'' TODO: DWORD WINAPI WNetAddConnection2A(LPNETRESOURCEA lpNetResource,LPCSTR lpPassword,LPCSTR lpUserName,DWORD dwFlags);
'' TODO: DWORD WINAPI WNetAddConnection2W(LPNETRESOURCEW lpNetResource,LPCWSTR lpPassword,LPCWSTR lpUserName,DWORD dwFlags);
'' TODO: DWORD WINAPI WNetAddConnection3A(HWND hwndOwner,LPNETRESOURCEA lpNetResource,LPCSTR lpPassword,LPCSTR lpUserName,DWORD dwFlags);
'' TODO: DWORD WINAPI WNetAddConnection3W(HWND hwndOwner,LPNETRESOURCEW lpNetResource,LPCWSTR lpPassword,LPCWSTR lpUserName,DWORD dwFlags);
'' TODO: DWORD WINAPI WNetCancelConnectionA(LPCSTR lpName,WINBOOL fForce);
'' TODO: DWORD WINAPI WNetCancelConnectionW(LPCWSTR lpName,WINBOOL fForce);
'' TODO: DWORD WINAPI WNetCancelConnection2A(LPCSTR lpName,DWORD dwFlags,WINBOOL fForce);
'' TODO: DWORD WINAPI WNetCancelConnection2W(LPCWSTR lpName,DWORD dwFlags,WINBOOL fForce);
'' TODO: DWORD WINAPI WNetGetConnectionA(LPCSTR lpLocalName,LPSTR lpRemoteName,LPDWORD lpnLength);
'' TODO: DWORD WINAPI WNetGetConnectionW(LPCWSTR lpLocalName,LPWSTR lpRemoteName,LPDWORD lpnLength);
'' TODO: DWORD WINAPI WNetRestoreConnectionA(HWND hwndParent,LPCSTR lpDevice);
'' TODO: DWORD WINAPI WNetUseConnectionA(HWND hwndOwner,LPNETRESOURCEA lpNetResource,LPCSTR lpPassword,LPCSTR lpUserID,DWORD dwFlags,LPSTR lpAccessName,LPDWORD lpBufferSize,LPDWORD lpResult);
'' TODO: DWORD WINAPI WNetUseConnectionW(HWND hwndOwner,LPNETRESOURCEW lpNetResource,LPCWSTR lpPassword,LPCWSTR lpUserID,DWORD dwFlags,LPWSTR lpAccessName,LPDWORD lpBufferSize,LPDWORD lpResult);
'' TODO: DWORD WINAPI WNetConnectionDialog(HWND hwnd,DWORD dwType);
'' TODO: DWORD WINAPI WNetDisconnectDialog(HWND hwnd,DWORD dwType);
'' TODO: DWORD WINAPI WNetRestoreSingleConnectionW(HWND hwndParent, LPCWSTR lpDevice, BOOL fUseUI);

type _CONNECTDLGSTRUCTA
	cbStructure as DWORD
	hwndOwner as HWND
	lpConnRes as LPNETRESOURCEA
	dwFlags as DWORD
	dwDevNum as DWORD
end type

type CONNECTDLGSTRUCTA as _CONNECTDLGSTRUCTA
type LPCONNECTDLGSTRUCTA as _CONNECTDLGSTRUCTA ptr

type _CONNECTDLGSTRUCTW
	cbStructure as DWORD
	hwndOwner as HWND
	lpConnRes as LPNETRESOURCEW
	dwFlags as DWORD
	dwDevNum as DWORD
end type

type CONNECTDLGSTRUCTW as _CONNECTDLGSTRUCTW
type LPCONNECTDLGSTRUCTW as _CONNECTDLGSTRUCTW ptr

#ifdef UNICODE
	type CONNECTDLGSTRUCT as CONNECTDLGSTRUCTW
	type LPCONNECTDLGSTRUCT as LPCONNECTDLGSTRUCTW
#else
	type CONNECTDLGSTRUCT as CONNECTDLGSTRUCTA
	type LPCONNECTDLGSTRUCT as LPCONNECTDLGSTRUCTA
#endif

#define CONNDLG_RO_PATH &h00000001
#define CONNDLG_CONN_POINT &h00000002
#define CONNDLG_USE_MRU &h00000004
#define CONNDLG_HIDE_BOX &h00000008
#define CONNDLG_PERSIST &h00000010
#define CONNDLG_NOT_PERSIST &h00000020
#define WNetConnectionDialog1 __MINGW_NAME_AW(WNetConnectionDialog1)

'' TODO: DWORD WINAPI WNetConnectionDialog1A(LPCONNECTDLGSTRUCTA lpConnDlgStruct);
'' TODO: DWORD WINAPI WNetConnectionDialog1W(LPCONNECTDLGSTRUCTW lpConnDlgStruct);

type _DISCDLGSTRUCTA
	cbStructure as DWORD
	hwndOwner as HWND
	lpLocalName as LPSTR
	lpRemoteName as LPSTR
	dwFlags as DWORD
end type

type DISCDLGSTRUCTA as _DISCDLGSTRUCTA
type LPDISCDLGSTRUCTA as _DISCDLGSTRUCTA ptr

type _DISCDLGSTRUCTW
	cbStructure as DWORD
	hwndOwner as HWND
	lpLocalName as LPWSTR
	lpRemoteName as LPWSTR
	dwFlags as DWORD
end type

type DISCDLGSTRUCTW as _DISCDLGSTRUCTW
type LPDISCDLGSTRUCTW as _DISCDLGSTRUCTW ptr

#ifdef UNICODE
	type DISCDLGSTRUCT as DISCDLGSTRUCTW
	type LPDISCDLGSTRUCT as LPDISCDLGSTRUCTW
#else
	type DISCDLGSTRUCT as DISCDLGSTRUCTA
	type LPDISCDLGSTRUCT as LPDISCDLGSTRUCTA
#endif

#define DISC_UPDATE_PROFILE &h00000001
#define DISC_NO_FORCE &h00000040
#define WNetDisconnectDialog1 __MINGW_NAME_AW(WNetDisconnectDialog1)
#define WNetOpenEnum __MINGW_NAME_AW(WNetOpenEnum)
#define WNetEnumResource __MINGW_NAME_AW(WNetEnumResource)
#define WNetGetResourceParent __MINGW_NAME_AW(WNetGetResourceParent)
#define WNetGetResourceInformation __MINGW_NAME_AW(WNetGetResourceInformation)

'' TODO: DWORD WINAPI WNetDisconnectDialog1A(LPDISCDLGSTRUCTA lpConnDlgStruct);
'' TODO: DWORD WINAPI WNetDisconnectDialog1W(LPDISCDLGSTRUCTW lpConnDlgStruct);
'' TODO: DWORD WINAPI WNetOpenEnumA(DWORD dwScope,DWORD dwType,DWORD dwUsage,LPNETRESOURCEA lpNetResource,LPHANDLE lphEnum);
'' TODO: DWORD WINAPI WNetOpenEnumW(DWORD dwScope,DWORD dwType,DWORD dwUsage,LPNETRESOURCEW lpNetResource,LPHANDLE lphEnum);
'' TODO: DWORD WINAPI WNetEnumResourceA(HANDLE hEnum,LPDWORD lpcCount,LPVOID lpBuffer,LPDWORD lpBufferSize);
'' TODO: DWORD WINAPI WNetEnumResourceW(HANDLE hEnum,LPDWORD lpcCount,LPVOID lpBuffer,LPDWORD lpBufferSize);
'' TODO: DWORD WINAPI WNetCloseEnum(HANDLE hEnum);
'' TODO: DWORD WINAPI WNetGetResourceParentA(LPNETRESOURCEA lpNetResource,LPVOID lpBuffer,LPDWORD lpcbBuffer);
'' TODO: DWORD WINAPI WNetGetResourceParentW(LPNETRESOURCEW lpNetResource,LPVOID lpBuffer,LPDWORD lpcbBuffer);
'' TODO: DWORD WINAPI WNetGetResourceInformationA(LPNETRESOURCEA lpNetResource,LPVOID lpBuffer,LPDWORD lpcbBuffer,LPSTR *lplpSystem);
'' TODO: DWORD WINAPI WNetGetResourceInformationW(LPNETRESOURCEW lpNetResource,LPVOID lpBuffer,LPDWORD lpcbBuffer,LPWSTR *lplpSystem);

#define UNIVERSAL_NAME_INFO_LEVEL &h00000001
#define REMOTE_NAME_INFO_LEVEL &h00000002

type _UNIVERSAL_NAME_INFOA
	lpUniversalName as LPSTR
end type

type UNIVERSAL_NAME_INFOA as _UNIVERSAL_NAME_INFOA
type LPUNIVERSAL_NAME_INFOA as _UNIVERSAL_NAME_INFOA ptr

type _UNIVERSAL_NAME_INFOW
	lpUniversalName as LPWSTR
end type

type UNIVERSAL_NAME_INFOW as _UNIVERSAL_NAME_INFOW
type LPUNIVERSAL_NAME_INFOW as _UNIVERSAL_NAME_INFOW ptr

#ifdef UNICODE
	type UNIVERSAL_NAME_INFO as UNIVERSAL_NAME_INFOW
	type LPUNIVERSAL_NAME_INFO as LPUNIVERSAL_NAME_INFOW
#else
	type UNIVERSAL_NAME_INFO as UNIVERSAL_NAME_INFOA
	type LPUNIVERSAL_NAME_INFO as LPUNIVERSAL_NAME_INFOA
#endif

type _REMOTE_NAME_INFOA
	lpUniversalName as LPSTR
	lpConnectionName as LPSTR
	lpRemainingPath as LPSTR
end type

type REMOTE_NAME_INFOA as _REMOTE_NAME_INFOA
type LPREMOTE_NAME_INFOA as _REMOTE_NAME_INFOA ptr

type _REMOTE_NAME_INFOW
	lpUniversalName as LPWSTR
	lpConnectionName as LPWSTR
	lpRemainingPath as LPWSTR
end type

type REMOTE_NAME_INFOW as _REMOTE_NAME_INFOW
type LPREMOTE_NAME_INFOW as _REMOTE_NAME_INFOW ptr

#ifdef UNICODE
	type REMOTE_NAME_INFO as REMOTE_NAME_INFOW
	type LPREMOTE_NAME_INFO as LPREMOTE_NAME_INFOW
#else
	type REMOTE_NAME_INFO as REMOTE_NAME_INFOA
	type LPREMOTE_NAME_INFO as LPREMOTE_NAME_INFOA
#endif

#define WNetGetUniversalName __MINGW_NAME_AW(WNetGetUniversalName)
#define WNetGetUser __MINGW_NAME_AW(WNetGetUser)
#define WNetGetProviderName __MINGW_NAME_AW(WNetGetProviderName)

'' TODO: DWORD WINAPI WNetGetUniversalNameA(LPCSTR lpLocalPath,DWORD dwInfoLevel,LPVOID lpBuffer,LPDWORD lpBufferSize);
'' TODO: DWORD WINAPI WNetGetUniversalNameW(LPCWSTR lpLocalPath,DWORD dwInfoLevel,LPVOID lpBuffer,LPDWORD lpBufferSize);
'' TODO: DWORD WINAPI WNetGetUserA(LPCSTR lpName,LPSTR lpUserName,LPDWORD lpnLength);
'' TODO: DWORD WINAPI WNetGetUserW(LPCWSTR lpName,LPWSTR lpUserName,LPDWORD lpnLength);

#define WNFMT_MULTILINE &h01
#define WNFMT_ABBREVIATED &h02
#define WNFMT_INENUM &h10
#define WNFMT_CONNECTION &h20

'' TODO: DWORD WINAPI WNetGetProviderNameA(DWORD dwNetType,LPSTR lpProviderName,LPDWORD lpBufferSize);
'' TODO: DWORD WINAPI WNetGetProviderNameW(DWORD dwNetType,LPWSTR lpProviderName,LPDWORD lpBufferSize);

type _NETINFOSTRUCT
	cbStructure as DWORD
	dwProviderVersion as DWORD
	dwStatus as DWORD
	dwCharacteristics as DWORD
	dwHandle as ULONG_PTR
	wNetType as WORD
	dwPrinters as DWORD
	dwDrives as DWORD
end type

type NETINFOSTRUCT as _NETINFOSTRUCT
type LPNETINFOSTRUCT as _NETINFOSTRUCT ptr

#define NETINFO_DLL16 &h00000001
#define NETINFO_DISKRED &h00000004
#define NETINFO_PRINTERRED &h00000008
#define WNetGetNetworkInformation __MINGW_NAME_AW(WNetGetNetworkInformation)

'' TODO: DWORD WINAPI WNetGetNetworkInformationA(LPCSTR lpProvider,LPNETINFOSTRUCT lpNetInfoStruct);
'' TODO: DWORD WINAPI WNetGetNetworkInformationW(LPCWSTR lpProvider,LPNETINFOSTRUCT lpNetInfoStruct);
'' TODO: typedef UINT (WINAPI *PFNGETPROFILEPATHA) (LPCSTR pszUsername,LPSTR pszBuffer,UINT cbBuffer);
'' TODO: typedef UINT (WINAPI *PFNGETPROFILEPATHW) (LPCWSTR pszUsername,LPWSTR pszBuffer,UINT cbBuffer);

#define PFNGETPROFILEPATH __MINGW_NAME_AW(PFNGETPROFILEPATH)

'' TODO: typedef UINT (WINAPI *PFNRECONCILEPROFILEA) (LPCSTR pszCentralFile,LPCSTR pszLocalFile,DWORD dwFlags);
'' TODO: typedef UINT (WINAPI *PFNRECONCILEPROFILEW) (LPCWSTR pszCentralFile,LPCWSTR pszLocalFile,DWORD dwFlags);

#define PFNRECONCILEPROFILE __MINGW_NAME_AW(PFNRECONCILEPROFILE)
#define RP_LOGON &h01
#define RP_INIFILE &h02

'' TODO: typedef WINBOOL (WINAPI *PFNPROCESSPOLICIESA) (HWND hwnd,LPCSTR pszPath,LPCSTR pszUsername,LPCSTR pszComputerName,DWORD dwFlags);
'' TODO: typedef WINBOOL (WINAPI *PFNPROCESSPOLICIESW) (HWND hwnd,LPCWSTR pszPath,LPCWSTR pszUsername,LPCWSTR pszComputerName,DWORD dwFlags);

#define PFNPROCESSPOLICIES __MINGW_NAME_AW(PFNPROCESSPOLICIES)
#define PP_DISPLAYERRORS &h01
#define WNetGetLastError __MINGW_NAME_AW(WNetGetLastError)

'' TODO: DWORD WINAPI WNetGetLastErrorA(LPDWORD lpError,LPSTR lpErrorBuf,DWORD nErrorBufSize,LPSTR lpNameBuf,DWORD nNameBufSize);
'' TODO: DWORD WINAPI WNetGetLastErrorW(LPDWORD lpError,LPWSTR lpErrorBuf,DWORD nErrorBufSize,LPWSTR lpNameBuf,DWORD nNameBufSize);

#define WN_SUCCESS NO_ERROR
#define WN_NO_ERROR NO_ERROR
#define WN_NOT_SUPPORTED ERROR_NOT_SUPPORTED
#define WN_CANCEL ERROR_CANCELLED
#define WN_RETRY ERROR_RETRY
#define WN_NET_ERROR ERROR_UNEXP_NET_ERR
#define WN_MORE_DATA ERROR_MORE_DATA
#define WN_BAD_POINTER ERROR_INVALID_ADDRESS
#define WN_BAD_VALUE ERROR_INVALID_PARAMETER
#define WN_BAD_USER ERROR_BAD_USERNAME
#define WN_BAD_PASSWORD ERROR_INVALID_PASSWORD
#define WN_ACCESS_DENIED ERROR_ACCESS_DENIED
#define WN_FUNCTION_BUSY ERROR_BUSY
#define WN_WINDOWS_ERROR ERROR_UNEXP_NET_ERR
#define WN_OUT_OF_MEMORY ERROR_NOT_ENOUGH_MEMORY
#define WN_NO_NETWORK ERROR_NO_NETWORK
#define WN_EXTENDED_ERROR ERROR_EXTENDED_ERROR
#define WN_BAD_LEVEL ERROR_INVALID_LEVEL
#define WN_BAD_HANDLE ERROR_INVALID_HANDLE
#define WN_NOT_INITIALIZING ERROR_ALREADY_INITIALIZED
#define WN_NO_MORE_DEVICES ERROR_NO_MORE_DEVICES
#define WN_NOT_CONNECTED ERROR_NOT_CONNECTED
#define WN_OPEN_FILES ERROR_OPEN_FILES
#define WN_DEVICE_IN_USE ERROR_DEVICE_IN_USE
#define WN_BAD_NETNAME ERROR_BAD_NET_NAME
#define WN_BAD_LOCALNAME ERROR_BAD_DEVICE
#define WN_ALREADY_CONNECTED ERROR_ALREADY_ASSIGNED
#define WN_DEVICE_ERROR ERROR_GEN_FAILURE
#define WN_CONNECTION_CLOSED ERROR_CONNECTION_UNAVAIL
#define WN_NO_NET_OR_BAD_PATH ERROR_NO_NET_OR_BAD_PATH
#define WN_BAD_PROVIDER ERROR_BAD_PROVIDER
#define WN_CANNOT_OPEN_PROFILE ERROR_CANNOT_OPEN_PROFILE
#define WN_BAD_PROFILE ERROR_BAD_PROFILE
#define WN_BAD_DEV_TYPE ERROR_BAD_DEV_TYPE
#define WN_DEVICE_ALREADY_REMEMBERED ERROR_DEVICE_ALREADY_REMEMBERED
#define WN_CONNECTED_OTHER_PASSWORD ERROR_CONNECTED_OTHER_PASSWORD
#define WN_CONNECTED_OTHER_PASSWORD_DEFAULT ERROR_CONNECTED_OTHER_PASSWORD_DEFAULT
#define WN_NO_MORE_ENTRIES ERROR_NO_MORE_ITEMS
#define WN_NOT_CONTAINER ERROR_NOT_CONTAINER
#define WN_NOT_AUTHENTICATED ERROR_NOT_AUTHENTICATED
#define WN_NOT_LOGGED_ON ERROR_NOT_LOGGED_ON
#define WN_NOT_VALIDATED ERROR_NO_LOGON_SERVERS

type _NETCONNECTINFOSTRUCT
	cbStructure as DWORD
	dwFlags as DWORD
	dwSpeed as DWORD
	dwDelay as DWORD
	dwOptDataSize as DWORD
end type

type NETCONNECTINFOSTRUCT as _NETCONNECTINFOSTRUCT
type LPNETCONNECTINFOSTRUCT as _NETCONNECTINFOSTRUCT ptr

#define WNCON_FORNETCARD &h00000001
#define WNCON_NOTROUTED &h00000002
#define WNCON_SLOWLINK &h00000004
#define WNCON_DYNAMIC &h00000008
#define MultinetGetConnectionPerformance __MINGW_NAME_AW(MultinetGetConnectionPerformance)

'' TODO: DWORD WINAPI MultinetGetConnectionPerformanceA(LPNETRESOURCEA lpNetResource,LPNETCONNECTINFOSTRUCT lpNetConnectInfoStruct);
'' TODO: DWORD WINAPI MultinetGetConnectionPerformanceW(LPNETRESOURCEW lpNetResource,LPNETCONNECTINFOSTRUCT lpNetConnectInfoStruct);

end extern
