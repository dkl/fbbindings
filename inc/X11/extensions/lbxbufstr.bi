'' FreeBASIC binding for liblbxutil-1.1.0
''
'' based on the C header files:
''   TODO
''
'' translated to FreeBASIC by:
''   Copyright © 2015 FreeBASIC development team

#pragma once

#include once "X11/extensions/lbxbuf.bi"

#define _BUFFERSTR_H_

type _zlibbuffer
	bufbase as zstring ptr
	bufend as zstring ptr
	bufptr as zstring ptr
	bufcnt as long
end type

type ZlibBuffer as _zlibbuffer
#define BYTES_AVAIL(inbuf, len) iif((inbuf)->bufcnt >= (len), (inbuf)->bufptr, NULL)
