#pragma once

#include once "_mingw_unicode.bi"
#include once "winsock2.bi"
#include once "inaddr.bi"
#include once "winapifamily.bi"
#include once "ws2ipdef.bi"
#include once "mstcpip.bi"

extern "C"

#define _WS2TCPIP_H_
#define _MINGW_IP_MREQ1_H

type ip_mreq
	imr_multiaddr as IN_ADDR
	imr_interface as IN_ADDR
end type

type ip_mreq_source
	imr_multiaddr as IN_ADDR
	imr_sourceaddr as IN_ADDR
	imr_interface as IN_ADDR
end type

type ip_msfilter
	imsf_multiaddr as IN_ADDR
	imsf_interface as IN_ADDR
	imsf_fmode as u_long
	imsf_numsrc as u_long
	imsf_slist(0 to 0) as IN_ADDR
end type

#define IP_MSFILTER_SIZE(numsrc) ((sizeof(ip_msfilter) - sizeof(IN_ADDR)) + ((numsrc) * sizeof(IN_ADDR)))
#define SIO_GET_INTERFACE_LIST _IOR(asc("t"), 127, u_long)
#define SIO_GET_INTERFACE_LIST_EX _IOR(asc("t"), 126, u_long)
#define SIO_SET_MULTICAST_FILTER _IOW(asc("t"), 125, u_long)
#define SIO_GET_MULTICAST_FILTER _IOW(asc("t"), 124 or IOC_IN, u_long)
#define IP_OPTIONS 1
#define IP_HDRINCL 2
#define IP_TOS 3
#define IP_TTL 4
#define IP_MULTICAST_IF 9
#define IP_MULTICAST_TTL 10
#define IP_MULTICAST_LOOP 11
#define IP_ADD_MEMBERSHIP 12
#define IP_DROP_MEMBERSHIP 13
#define IP_DONTFRAGMENT 14
#define IP_ADD_SOURCE_MEMBERSHIP 15
#define IP_DROP_SOURCE_MEMBERSHIP 16
#define IP_BLOCK_SOURCE 17
#define IP_UNBLOCK_SOURCE 18
#define IP_PKTINFO 19
#define IP_RECEIVE_BROADCAST 22
#define PROTECTION_LEVEL_UNRESTRICTED 10
#define PROTECTION_LEVEL_DEFAULT 20
#define PROTECTION_LEVEL_RESTRICTED 30
#define UDP_NOCHECKSUM 1
#define UDP_CHECKSUM_COVERAGE 20
#define TCP_EXPEDITED_1122 &h0002
#define SS_PORT(ssp) cptr(SOCKADDR_IN ptr, (ssp))->sin_port
#define IN6ADDR_ANY_INIT (0)
#define IN6ADDR_LOOPBACK_INIT (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)

extern in6addr_any as const IN6_ADDR
extern in6addr_loopback as const IN6_ADDR

#define WS2TCPIP_INLINE __CRT_INLINE

declare function IN6_ADDR_EQUAL(byval as const IN6_ADDR ptr, byval as const IN6_ADDR ptr) as long
declare function IN6_IS_ADDR_UNSPECIFIED(byval as const IN6_ADDR ptr) as long
declare function IN6_IS_ADDR_LOOPBACK(byval as const IN6_ADDR ptr) as long
declare function IN6_IS_ADDR_MULTICAST(byval as const IN6_ADDR ptr) as long
declare function IN6_IS_ADDR_LINKLOCAL(byval as const IN6_ADDR ptr) as long
declare function IN6_IS_ADDR_SITELOCAL(byval as const IN6_ADDR ptr) as long
declare function IN6_IS_ADDR_V4MAPPED(byval as const IN6_ADDR ptr) as long
declare function IN6_IS_ADDR_V4COMPAT(byval as const IN6_ADDR ptr) as long
declare function IN6_IS_ADDR_MC_NODELOCAL(byval as const IN6_ADDR ptr) as long
declare function IN6_IS_ADDR_MC_LINKLOCAL(byval as const IN6_ADDR ptr) as long
declare function IN6_IS_ADDR_MC_SITELOCAL(byval as const IN6_ADDR ptr) as long
declare function IN6_IS_ADDR_MC_ORGLOCAL(byval as const IN6_ADDR ptr) as long
declare function IN6_IS_ADDR_MC_GLOBAL(byval as const IN6_ADDR ptr) as long
declare function IN6ADDR_ISANY(byval as const SOCKADDR_IN6 ptr) as long
declare function IN6ADDR_ISLOOPBACK(byval as const SOCKADDR_IN6 ptr) as long
declare sub IN6_SET_ADDR_UNSPECIFIED(byval as IN6_ADDR ptr)
declare sub IN6_SET_ADDR_LOOPBACK(byval as IN6_ADDR ptr)
declare sub IN6ADDR_SETANY(byval as SOCKADDR_IN6 ptr)
declare sub IN6ADDR_SETLOOPBACK(byval as SOCKADDR_IN6 ptr)

private function IN6_ADDR_EQUAL(byval a as const IN6_ADDR ptr, byval b as const IN6_ADDR ptr) as long
	return -(memcmp(a, b, sizeof(IN6_ADDR)) = 0)
end function

private function IN6_IS_ADDR_UNSPECIFIED(byval a as const IN6_ADDR ptr) as long
	return -((((((((a->u.Word[0] = 0) andalso (a->u.Word[1] = 0)) andalso (a->u.Word[2] = 0)) andalso (a->u.Word[3] = 0)) andalso (a->u.Word[4] = 0)) andalso (a->u.Word[5] = 0)) andalso (a->u.Word[6] = 0)) andalso (a->u.Word[7] = 0))
end function

private function IN6_IS_ADDR_LOOPBACK(byval a as const IN6_ADDR ptr) as long
	return -((((((((a->u.Word[0] = 0) andalso (a->u.Word[1] = 0)) andalso (a->u.Word[2] = 0)) andalso (a->u.Word[3] = 0)) andalso (a->u.Word[4] = 0)) andalso (a->u.Word[5] = 0)) andalso (a->u.Word[6] = 0)) andalso (a->u.Word[7] = &h0100))
end function

private function IN6_IS_ADDR_MULTICAST(byval a as const IN6_ADDR ptr) as long
	return -(a->u.Byte[0] = &hff)
end function

private function IN6_IS_ADDR_LINKLOCAL(byval a as const IN6_ADDR ptr) as long
	return -((a->u.Byte[0] = &hfe) andalso ((a->u.Byte[1] and &hc0) = &h80))
end function

private function IN6_IS_ADDR_SITELOCAL(byval a as const IN6_ADDR ptr) as long
	return -((a->u.Byte[0] = &hfe) andalso ((a->u.Byte[1] and &hc0) = &hc0))
end function

private function IN6_IS_ADDR_V4MAPPED(byval a as const IN6_ADDR ptr) as long
	return -((((((a->u.Word[0] = 0) andalso (a->u.Word[1] = 0)) andalso (a->u.Word[2] = 0)) andalso (a->u.Word[3] = 0)) andalso (a->u.Word[4] = 0)) andalso (a->u.Word[5] = &hffff))
end function

private function IN6_IS_ADDR_V4COMPAT(byval a as const IN6_ADDR ptr) as long
	return -(((((((a->u.Word[0] = 0) andalso (a->u.Word[1] = 0)) andalso (a->u.Word[2] = 0)) andalso (a->u.Word[3] = 0)) andalso (a->u.Word[4] = 0)) andalso (a->u.Word[5] = 0)) andalso ((((a->u.Word[6] = 0) andalso (a->u.Byte[14] = 0)) andalso ((a->u.Byte[15] = 0) orelse (a->u.Byte[15] = 1))) = 0))
end function

private function IN6_IS_ADDR_MC_NODELOCAL(byval a as const IN6_ADDR ptr) as long
	return -(IN6_IS_ADDR_MULTICAST(a) andalso ((a->u.Byte[1] and &hf) = 1))
end function

private function IN6_IS_ADDR_MC_LINKLOCAL(byval a as const IN6_ADDR ptr) as long
	return -(IN6_IS_ADDR_MULTICAST(a) andalso ((a->u.Byte[1] and &hf) = 2))
end function

private function IN6_IS_ADDR_MC_SITELOCAL(byval a as const IN6_ADDR ptr) as long
	return -(IN6_IS_ADDR_MULTICAST(a) andalso ((a->u.Byte[1] and &hf) = 5))
end function

private function IN6_IS_ADDR_MC_ORGLOCAL(byval a as const IN6_ADDR ptr) as long
	return -(IN6_IS_ADDR_MULTICAST(a) andalso ((a->u.Byte[1] and &hf) = 8))
end function

private function IN6_IS_ADDR_MC_GLOBAL(byval a as const IN6_ADDR ptr) as long
	return -(IN6_IS_ADDR_MULTICAST(a) andalso ((a->u.Byte[1] and &hf) = &he))
end function

private function IN6ADDR_ISANY(byval a as const SOCKADDR_IN6 ptr) as long
	return -((a->sin6_family = 23) andalso IN6_IS_ADDR_UNSPECIFIED(@a->sin6_addr))
end function

private function IN6ADDR_ISLOOPBACK(byval a as const SOCKADDR_IN6 ptr) as long
	return -((a->sin6_family = 23) andalso IN6_IS_ADDR_LOOPBACK(@a->sin6_addr))
end function

private sub IN6_SET_ADDR_UNSPECIFIED(byval a as IN6_ADDR ptr)
	memset(a->u.Byte, 0, sizeof(IN6_ADDR))
end sub

private sub IN6_SET_ADDR_LOOPBACK(byval a as IN6_ADDR ptr)
	memset(a->u.Byte, 0, sizeof(IN6_ADDR))
	'' TODO: a->u.Byte[15] = 1;
end sub

private sub IN6ADDR_SETANY(byval a as SOCKADDR_IN6 ptr)
	'' TODO: a->sin6_family = 23;
	'' TODO: a->sin6_port = 0;
	'' TODO: a->sin6_flowinfo = 0;
	IN6_SET_ADDR_UNSPECIFIED(@a->sin6_addr)
	'' TODO: a->sin6_scope_id = 0;
end sub

private sub IN6ADDR_SETLOOPBACK(byval a as SOCKADDR_IN6 ptr)
	'' TODO: a->sin6_family = 23;
	'' TODO: a->sin6_port = 0;
	'' TODO: a->sin6_flowinfo = 0;
	IN6_SET_ADDR_LOOPBACK(@a->sin6_addr)
	'' TODO: a->sin6_scope_id = 0;
end sub

type _INTERFACE_INFO_EX
	iiFlags as u_long
	iiAddress as SOCKET_ADDRESS
	iiBroadcastAddress as SOCKET_ADDRESS
	iiNetmask as SOCKET_ADDRESS
end type

type INTERFACE_INFO_EX as _INTERFACE_INFO_EX
type LPINTERFACE_INFO_EX as _INTERFACE_INFO_EX ptr

#define IFF_UP &h00000001
#define IFF_BROADCAST &h00000002
#define IFF_LOOPBACK &h00000004
#define IFF_POINTTOPOINT &h00000008
#define IFF_MULTICAST &h00000010

type IN_PKTINFO
	ipi_addr as IN_ADDR
	ipi_ifindex as UINT
end type

type IN6_PKTINFO
	ipi6_addr as IN6_ADDR
	ipi6_ifindex as UINT
end type

#define EAI_AGAIN WSATRY_AGAIN
#define EAI_BADFLAGS WSAEINVAL
#define EAI_FAIL WSANO_RECOVERY
#define EAI_FAMILY WSAEAFNOSUPPORT
#define EAI_MEMORY WSA_NOT_ENOUGH_MEMORY
#define EAI_NONAME WSAHOST_NOT_FOUND
#define EAI_SERVICE WSATYPE_NOT_FOUND
#define EAI_SOCKTYPE WSAESOCKTNOSUPPORT
#define EAI_NODATA 11004

type addrinfo
	ai_flags as long
	ai_family as long
	ai_socktype as long
	ai_protocol as long
	ai_addrlen as uinteger
	ai_canonname as zstring ptr
	ai_addr as SOCKADDR ptr
	ai_next as addrinfo ptr
end type

type ADDRINFOA as addrinfo
type PADDRINFOA as addrinfo ptr

type ADDRINFOW
	ai_flags as long
	ai_family as long
	ai_socktype as long
	ai_protocol as long
	ai_addrlen as uinteger
	ai_canonname as PWSTR
	ai_addr as SOCKADDR ptr
	ai_next as ADDRINFOW ptr
end type

type PADDRINFOW as ADDRINFOW ptr

#ifdef UNICODE
	type ADDRINFOT as ADDRINFOW
	type PADDRINFOT as ADDRINFOW ptr
#else
	type ADDRINFOT as ADDRINFOA
	type PADDRINFOT as ADDRINFOA ptr
#endif

type ADDRINFO as ADDRINFOA
type LPADDRINFO as ADDRINFOA ptr

#define AI_PASSIVE &h1
#define AI_CANONNAME &h2
#define AI_NUMERICHOST &h4

#if _WIN32_WINNT = &h0602
	#define AI_ADDRCONFIG &h0400
	#define AI_NON_AUTHORITATIVE &h04000
	#define AI_SECURE &h08000
	#define AI_RETURN_PREFERRED_NAMES &h010000
#endif

#ifdef UNICODE
	#define GetAddrInfo GetAddrInfoW
#else
	#define GetAddrInfo GetAddrInfoA
#endif

#ifdef __FB_64BIT__
	declare function getaddrinfo(byval nodename as const zstring ptr, byval servname as const zstring ptr, byval hints as const addrinfo ptr, byval res as addrinfo ptr ptr) as long
	declare function GetAddrInfoW(byval pNodeName as PCWSTR, byval pServiceName as PCWSTR, byval pHints as const ADDRINFOW ptr, byval ppResult as PADDRINFOW ptr) as long
#else
	declare function getaddrinfo stdcall(byval nodename as const zstring ptr, byval servname as const zstring ptr, byval hints as const addrinfo ptr, byval res as addrinfo ptr ptr) as long
	declare function GetAddrInfoW stdcall(byval pNodeName as PCWSTR, byval pServiceName as PCWSTR, byval pHints as const ADDRINFOW ptr, byval ppResult as PADDRINFOW ptr) as long
#endif

#define GetAddrInfoA getaddrinfo

#ifdef UNICODE
	#define FreeAddrInfo FreeAddrInfoW
#else
	#define FreeAddrInfo FreeAddrInfoA
#endif

#ifdef __FB_64BIT__
	declare sub freeaddrinfo(byval pAddrInfo as LPADDRINFO)
	declare sub FreeAddrInfoW(byval pAddrInfo as PADDRINFOW)
#else
	declare sub freeaddrinfo stdcall(byval pAddrInfo as LPADDRINFO)
	declare sub FreeAddrInfoW stdcall(byval pAddrInfo as PADDRINFOW)
#endif

#define FreeAddrInfoA freeaddrinfo

type socklen_t as long

#ifdef UNICODE
	#define GetNameInfo GetNameInfoW
#else
	#define GetNameInfo GetNameInfoA
#endif

#ifdef __FB_64BIT__
	declare function getnameinfo(byval sa as const SOCKADDR ptr, byval salen as socklen_t, byval host as zstring ptr, byval hostlen as DWORD, byval serv as zstring ptr, byval servlen as DWORD, byval flags as long) as long
	declare function GetNameInfoW(byval pSockaddr as const SOCKADDR ptr, byval SockaddrLength as socklen_t, byval pNodeBuffer as PWCHAR, byval NodeBufferSize as DWORD, byval pServiceBuffer as PWCHAR, byval ServiceBufferSize as DWORD, byval Flags as INT) as INT
#else
	declare function getnameinfo stdcall(byval sa as const SOCKADDR ptr, byval salen as socklen_t, byval host as zstring ptr, byval hostlen as DWORD, byval serv as zstring ptr, byval servlen as DWORD, byval flags as long) as long
	declare function GetNameInfoW stdcall(byval pSockaddr as const SOCKADDR ptr, byval SockaddrLength as socklen_t, byval pNodeBuffer as PWCHAR, byval NodeBufferSize as DWORD, byval pServiceBuffer as PWCHAR, byval ServiceBufferSize as DWORD, byval Flags as INT) as INT
#endif

#define GetNameInfoA getnameinfo

#ifdef UNICODE
	#define gai_strerror gai_strerrorW
#else
	#define gai_strerror gai_strerrorA
#endif

#define GAI_STRERROR_BUFFER_SIZE 1024

declare function gai_strerrorA(byval as long) as zstring ptr
declare function gai_strerrorW(byval as long) as wstring ptr

#define NI_MAXHOST 1025
#define NI_MAXSERV 32
#define INET_ADDRSTRLEN 22
#define INET6_ADDRSTRLEN 65
#define NI_NOFQDN &h01
#define NI_NUMERICHOST &h02
#define NI_NAMEREQD &h04
#define NI_NUMERICSERV &h08
#define NI_DGRAM &h10

#if defined(UNICODE) and (_WIN32_WINNT = &h0602)
	#define addrinfoEx addrinfoExW
	#define PADDRINFOEX PADDRINFOEXW
	#define GetAddrInfoEx GetAddrInfoExW
	#define SetAddrInfoEx SetAddrInfoExW
	#define FreeAddrInfoEx FreeAddrInfoExW
#elseif (not defined(UNICODE)) and (_WIN32_WINNT = &h0602)
	#define addrinfoEx addrinfoExA
	#define PADDRINFOEX PADDRINFOEXA
	#define GetAddrInfoEx GetAddrInfoExA
	#define SetAddrInfoEx SetAddrInfoExA
	#define FreeAddrInfoEx FreeAddrInfoExA
#endif

#if _WIN32_WINNT = &h0602
	type ADDRINFOEXA
		ai_flags as long
		ai_family as long
		ai_socktype as long
		ai_protocol as long
		ai_addrlen as uinteger
		ai_canonname as LPCSTR
		ai_addr as SOCKADDR ptr
		ai_blob as any ptr
		ai_bloblen as uinteger
		ai_provider as LPGUID
		ai_next as addrinfoexA ptr
	end type

	type PADDRINFOEXA as ADDRINFOEXA ptr

	type ADDRINFOEXW
		ai_flags as long
		ai_family as long
		ai_socktype as long
		ai_protocol as long
		ai_addrlen as uinteger
		ai_canonname as LPCWSTR
		ai_addr as SOCKADDR ptr
		ai_blob as any ptr
		ai_bloblen as uinteger
		ai_provider as LPGUID
		ai_next as addrinfoexW ptr
	end type

	type PADDRINFOEXW as ADDRINFOEXW ptr
	type LPLOOKUPSERVICE_COMPLETION_ROUTINE as PVOID
#endif

#if defined(__FB_64BIT__) and (_WIN32_WINNT = &h0602)
	declare function GetAddrInfoExA(byval pName as PCSTR, byval pServiceName as PCSTR, byval dwNameSpace as DWORD, byval lpNspId as LPGUID, byval pHints as const ADDRINFOEXA ptr, byval ppResult as PADDRINFOEXA ptr, byval timeout as PTIMEVAL, byval lpOverlapped as LPOVERLAPPED, byval lpCompletionRoutine as LPLOOKUPSERVICE_COMPLETION_ROUTINE, byval lpNameHandle as LPHANDLE) as long
	declare function GetAddrInfoExW(byval pName as PCWSTR, byval pServiceName as PCWSTR, byval dwNameSpace as DWORD, byval lpNspId as LPGUID, byval pHints as const ADDRINFOEXW ptr, byval ppResult as PADDRINFOEXW ptr, byval timeout as PTIMEVAL, byval lpOverlapped as LPOVERLAPPED, byval lpCompletionRoutine as LPLOOKUPSERVICE_COMPLETION_ROUTINE, byval lpNameHandle as LPHANDLE) as long
	declare function SetAddrInfoExA(byval pName as PCSTR, byval pServiceName as PCSTR, byval pAddresses as SOCKET_ADDRESS ptr, byval dwAddressCount as DWORD, byval lpBlob as LPBLOB, byval dwFlags as DWORD, byval dwNameSpace as DWORD, byval lpNspId as LPGUID, byval timeout as PTIMEVAL, byval lpOverlapped as LPOVERLAPPED, byval lpCompletionRoutine as LPLOOKUPSERVICE_COMPLETION_ROUTINE, byval lpNameHandle as LPHANDLE) as long
	declare function SetAddrInfoExW(byval pName as PCWSTR, byval pServiceName as PCWSTR, byval pAddresses as SOCKET_ADDRESS ptr, byval dwAddressCount as DWORD, byval lpBlob as LPBLOB, byval dwFlags as DWORD, byval dwNameSpace as DWORD, byval lpNspId as LPGUID, byval timeout as PTIMEVAL, byval lpOverlapped as LPOVERLAPPED, byval lpCompletionRoutine as LPLOOKUPSERVICE_COMPLETION_ROUTINE, byval lpNameHandle as LPHANDLE) as long
	declare sub FreeAddrInfoExA(byval pAddrInfo as PADDRINFOEXA)
	declare sub FreeAddrInfoExW(byval pAddrInfo as PADDRINFOEXW)
	declare function WSAImpersonateSocketPeer(byval Socket as SOCKET, byval PeerAddress as const SOCKADDR ptr, byval peerAddressLen as ULONG) as long
	declare function WSAQuerySocketSecurity(byval Socket as SOCKET, byval SecurityQueryTemplate as const SOCKET_SECURITY_QUERY_TEMPLATE ptr, byval SecurityQueryTemplateLen as ULONG, byval SecurityQueryInfo as SOCKET_SECURITY_QUERY_INFO ptr, byval SecurityQueryInfoLen as ULONG ptr, byval Overlapped as LPWSAOVERLAPPED, byval CompletionRoutine as LPWSAOVERLAPPED_COMPLETION_ROUTINE) as long
	declare function WSARevertImpersonation() as long
	declare function WSASetSocketPeerTargetName(byval Socket as SOCKET, byval PeerTargetName as const SOCKET_PEER_TARGET_NAME ptr, byval PeerTargetNameLen as ULONG, byval Overlapped as LPWSAOVERLAPPED, byval CompletionRoutine as LPWSAOVERLAPPED_COMPLETION_ROUTINE) as long
	declare function WSASetSocketSecurity(byval Socket as SOCKET, byval SecuritySettings as const SOCKET_SECURITY_SETTINGS ptr, byval SecuritySettingsLen as ULONG, byval Overlapped as LPWSAOVERLAPPED, byval CompletionRoutine as LPWSAOVERLAPPED_COMPLETION_ROUTINE) as long
#elseif (not defined(__FB_64BIT__)) and (_WIN32_WINNT = &h0602)
	declare function GetAddrInfoExA stdcall(byval pName as PCSTR, byval pServiceName as PCSTR, byval dwNameSpace as DWORD, byval lpNspId as LPGUID, byval pHints as const ADDRINFOEXA ptr, byval ppResult as PADDRINFOEXA ptr, byval timeout as PTIMEVAL, byval lpOverlapped as LPOVERLAPPED, byval lpCompletionRoutine as LPLOOKUPSERVICE_COMPLETION_ROUTINE, byval lpNameHandle as LPHANDLE) as long
	declare function GetAddrInfoExW stdcall(byval pName as PCWSTR, byval pServiceName as PCWSTR, byval dwNameSpace as DWORD, byval lpNspId as LPGUID, byval pHints as const ADDRINFOEXW ptr, byval ppResult as PADDRINFOEXW ptr, byval timeout as PTIMEVAL, byval lpOverlapped as LPOVERLAPPED, byval lpCompletionRoutine as LPLOOKUPSERVICE_COMPLETION_ROUTINE, byval lpNameHandle as LPHANDLE) as long
	declare function SetAddrInfoExA stdcall(byval pName as PCSTR, byval pServiceName as PCSTR, byval pAddresses as SOCKET_ADDRESS ptr, byval dwAddressCount as DWORD, byval lpBlob as LPBLOB, byval dwFlags as DWORD, byval dwNameSpace as DWORD, byval lpNspId as LPGUID, byval timeout as PTIMEVAL, byval lpOverlapped as LPOVERLAPPED, byval lpCompletionRoutine as LPLOOKUPSERVICE_COMPLETION_ROUTINE, byval lpNameHandle as LPHANDLE) as long
	declare function SetAddrInfoExW stdcall(byval pName as PCWSTR, byval pServiceName as PCWSTR, byval pAddresses as SOCKET_ADDRESS ptr, byval dwAddressCount as DWORD, byval lpBlob as LPBLOB, byval dwFlags as DWORD, byval dwNameSpace as DWORD, byval lpNspId as LPGUID, byval timeout as PTIMEVAL, byval lpOverlapped as LPOVERLAPPED, byval lpCompletionRoutine as LPLOOKUPSERVICE_COMPLETION_ROUTINE, byval lpNameHandle as LPHANDLE) as long
	declare sub FreeAddrInfoExA stdcall(byval pAddrInfo as PADDRINFOEXA)
	declare sub FreeAddrInfoExW stdcall(byval pAddrInfo as PADDRINFOEXW)
	declare function WSAImpersonateSocketPeer stdcall(byval Socket as SOCKET, byval PeerAddress as const SOCKADDR ptr, byval peerAddressLen as ULONG) as long
	declare function WSAQuerySocketSecurity stdcall(byval Socket as SOCKET, byval SecurityQueryTemplate as const SOCKET_SECURITY_QUERY_TEMPLATE ptr, byval SecurityQueryTemplateLen as ULONG, byval SecurityQueryInfo as SOCKET_SECURITY_QUERY_INFO ptr, byval SecurityQueryInfoLen as ULONG ptr, byval Overlapped as LPWSAOVERLAPPED, byval CompletionRoutine as LPWSAOVERLAPPED_COMPLETION_ROUTINE) as long
	declare function WSARevertImpersonation stdcall() as long
	declare function WSASetSocketPeerTargetName stdcall(byval Socket as SOCKET, byval PeerTargetName as const SOCKET_PEER_TARGET_NAME ptr, byval PeerTargetNameLen as ULONG, byval Overlapped as LPWSAOVERLAPPED, byval CompletionRoutine as LPWSAOVERLAPPED_COMPLETION_ROUTINE) as long
	declare function WSASetSocketSecurity stdcall(byval Socket as SOCKET, byval SecuritySettings as const SOCKET_SECURITY_SETTINGS ptr, byval SecuritySettingsLen as ULONG, byval Overlapped as LPWSAOVERLAPPED, byval CompletionRoutine as LPWSAOVERLAPPED_COMPLETION_ROUTINE) as long
#endif

#if _WIN32_WINNT = &h0602
	#define InetNtopA inet_ntop
#endif

#if defined(__FB_64BIT__) and (_WIN32_WINNT = &h0602)
	declare function InetNtopW(byval Family as INT, byval pAddr as PVOID, byval pStringBuf as LPWSTR, byval StringBufSIze as uinteger) as LPCWSTR
	declare function inet_ntop(byval Family as INT, byval pAddr as PVOID, byval pStringBuf as LPSTR, byval StringBufSize as uinteger) as LPCSTR
#elseif (not defined(__FB_64BIT__)) and (_WIN32_WINNT = &h0602)
	declare function InetNtopW stdcall(byval Family as INT, byval pAddr as PVOID, byval pStringBuf as LPWSTR, byval StringBufSIze as uinteger) as LPCWSTR
	declare function inet_ntop stdcall(byval Family as INT, byval pAddr as PVOID, byval pStringBuf as LPSTR, byval StringBufSize as uinteger) as LPCSTR
#endif

#if defined(UNICODE) and (_WIN32_WINNT = &h0602)
	#define InetNtop InetNtopW
#elseif (not defined(UNICODE)) and (_WIN32_WINNT = &h0602)
	#define InetNtop InetNtopA
#endif

#if _WIN32_WINNT = &h0602
	#define InetPtonA inet_pton
#endif

#if defined(__FB_64BIT__) and (_WIN32_WINNT = &h0602)
	declare function InetPtonW(byval Family as INT, byval pStringBuf as LPCWSTR, byval pAddr as PVOID) as INT
	declare function inet_pton(byval Family as INT, byval pStringBuf as LPCSTR, byval pAddr as PVOID) as INT
#elseif (not defined(__FB_64BIT__)) and (_WIN32_WINNT = &h0602)
	declare function InetPtonW stdcall(byval Family as INT, byval pStringBuf as LPCWSTR, byval pAddr as PVOID) as INT
	declare function inet_pton stdcall(byval Family as INT, byval pStringBuf as LPCSTR, byval pAddr as PVOID) as INT
#endif

#if defined(UNICODE) and (_WIN32_WINNT = &h0602)
	#define InetPton InetPtonW
#elseif (not defined(UNICODE)) and (_WIN32_WINNT = &h0602)
	#define InetPton InetPtonA
#endif

end extern
