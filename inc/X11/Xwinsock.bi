'' FreeBASIC binding for xproto-7.0.27

#pragma once

#ifdef __FB_WIN32__
	#include once "winsock2.bi"

	#define _NO_BOOL_TYPEDEF
	#define wBOOL WINBOOL
#endif
