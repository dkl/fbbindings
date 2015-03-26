#pragma once

#include once "SDL.bi"

extern "C"

#define _SDL_NET_H
type SDLNet_version as SDL_version_
const SDL_NET_MAJOR_VERSION = 2
const SDL_NET_MINOR_VERSION = 0
const SDL_NET_PATCHLEVEL = 0
#macro SDL_NET_VERSION(X)
	scope
		(X)->major = SDL_NET_MAJOR_VERSION
		(X)->minor = SDL_NET_MINOR_VERSION
		(X)->patch = SDL_NET_PATCHLEVEL
	end scope
#endmacro

declare function SDLNet_Linked_Version() as const SDLNet_version ptr
declare function SDLNet_Init() as long
declare sub SDLNet_Quit()

type IPaddress
	host as Uint32
	port as Uint16
end type

const INADDR_ANY = &h00000000
const INADDR_NONE = &hFFFFFFFF
const INADDR_LOOPBACK = &h7f000001
const INADDR_BROADCAST = &hFFFFFFFF

declare function SDLNet_ResolveHost(byval address as IPaddress ptr, byval host as const zstring ptr, byval port as Uint16) as long
declare function SDLNet_ResolveIP(byval ip as const IPaddress ptr) as const zstring ptr
declare function SDLNet_GetLocalAddresses(byval addresses as IPaddress ptr, byval maxcount as long) as long
type TCPsocket as _TCPsocket ptr
declare function SDLNet_TCP_Open(byval ip as IPaddress ptr) as TCPsocket
declare function SDLNet_TCP_Accept(byval server as TCPsocket) as TCPsocket
declare function SDLNet_TCP_GetPeerAddress(byval sock as TCPsocket) as IPaddress ptr
declare function SDLNet_TCP_Send(byval sock as TCPsocket, byval data as const any ptr, byval len as long) as long
declare function SDLNet_TCP_Recv(byval sock as TCPsocket, byval data as any ptr, byval maxlen as long) as long
declare sub SDLNet_TCP_Close(byval sock as TCPsocket)
const SDLNET_MAX_UDPCHANNELS = 32
const SDLNET_MAX_UDPADDRESSES = 4
type UDPsocket as _UDPsocket ptr

type UDPpacket
	channel as long
	data as Uint8 ptr
	len as long
	maxlen as long
	status as long
	address as IPaddress
end type

declare function SDLNet_AllocPacket(byval size as long) as UDPpacket ptr
declare function SDLNet_ResizePacket(byval packet as UDPpacket ptr, byval newsize as long) as long
declare sub SDLNet_FreePacket(byval packet as UDPpacket ptr)
declare function SDLNet_AllocPacketV(byval howmany as long, byval size as long) as UDPpacket ptr ptr
declare sub SDLNet_FreePacketV(byval packetV as UDPpacket ptr ptr)
declare function SDLNet_UDP_Open(byval port as Uint16) as UDPsocket
declare sub SDLNet_UDP_SetPacketLoss(byval sock as UDPsocket, byval percent as long)
declare function SDLNet_UDP_Bind(byval sock as UDPsocket, byval channel as long, byval address as const IPaddress ptr) as long
declare sub SDLNet_UDP_Unbind(byval sock as UDPsocket, byval channel as long)
declare function SDLNet_UDP_GetPeerAddress(byval sock as UDPsocket, byval channel as long) as IPaddress ptr
declare function SDLNet_UDP_SendV(byval sock as UDPsocket, byval packets as UDPpacket ptr ptr, byval npackets as long) as long
declare function SDLNet_UDP_Send(byval sock as UDPsocket, byval channel as long, byval packet as UDPpacket ptr) as long
declare function SDLNet_UDP_RecvV(byval sock as UDPsocket, byval packets as UDPpacket ptr ptr) as long
declare function SDLNet_UDP_Recv(byval sock as UDPsocket, byval packet as UDPpacket ptr) as long
declare sub SDLNet_UDP_Close(byval sock as UDPsocket)
type SDLNet_SocketSet as _SDLNet_SocketSet ptr

type _SDLNet_GenericSocket
	ready as long
end type

type SDLNet_GenericSocket as _SDLNet_GenericSocket ptr
declare function SDLNet_AllocSocketSet(byval maxsockets as long) as SDLNet_SocketSet
declare function SDLNet_AddSocket(byval set as SDLNet_SocketSet, byval sock as SDLNet_GenericSocket) as long

private function SDLNet_TCP_AddSocket(byval set as SDLNet_SocketSet, byval sock as TCPsocket) as long
	return SDLNet_AddSocket(set, cast(SDLNet_GenericSocket, sock))
end function

private function SDLNet_UDP_AddSocket(byval set as SDLNet_SocketSet, byval sock as UDPsocket) as long
	return SDLNet_AddSocket(set, cast(SDLNet_GenericSocket, sock))
end function

declare function SDLNet_DelSocket(byval set as SDLNet_SocketSet, byval sock as SDLNet_GenericSocket) as long

private function SDLNet_TCP_DelSocket(byval set as SDLNet_SocketSet, byval sock as TCPsocket) as long
	return SDLNet_DelSocket(set, cast(SDLNet_GenericSocket, sock))
end function

private function SDLNet_UDP_DelSocket(byval set as SDLNet_SocketSet, byval sock as UDPsocket) as long
	return SDLNet_DelSocket(set, cast(SDLNet_GenericSocket, sock))
end function

declare function SDLNet_CheckSockets(byval set as SDLNet_SocketSet, byval timeout as Uint32) as long
#define SDLNet_SocketReady(sock) _SDLNet_SocketReady(cast(SDLNet_GenericSocket, (sock)))

private function _SDLNet_SocketReady(byval sock as SDLNet_GenericSocket) as long
	return -((sock <> cptr(any ptr, 0)) andalso sock->ready)
end function

declare sub SDLNet_FreeSocketSet(byval set as SDLNet_SocketSet)
declare sub SDLNet_SetError(byval fmt as const zstring ptr, ...)
declare function SDLNet_GetError() as const zstring ptr

const SDL_DATA_ALIGNED = 0

#define SDLNet_Write16(value, areap) scope : *cptr(Uint16 ptr, areap) = SDL_Swap16(value) : end scope
#define SDLNet_Write32(value, areap) scope : *cptr(Uint32 ptr, areap) = SDL_Swap32(value) : end scope
#define SDLNet_Read16(areap) SDL_Swap16(*cptr(const Uint16 ptr, areap))
#define SDLNet_Read32(areap) SDL_Swap32(*cptr(const Uint32 ptr, areap))

end extern
