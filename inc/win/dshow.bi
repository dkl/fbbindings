#pragma once

#include once "windowsx.bi"
#include once "olectl.bi"
#include once "ddraw.bi"
#include once "strsafe.bi"
#include once "strmif.bi"
#include once "amvideo.bi"
#include once "control.bi"
#include once "evcode.bi"
#include once "uuids.bi"
#include once "errors.bi"
#include once "audevcod.bi"

#define __DSHOW_INCLUDED__
#define AM_NOVTABLE
#define NO_SHLWAPI_STRFCNS
#define NUMELMS(array) (sizeof((array)) / sizeof((array)[0]))
#define OATRUE (-1)
#define OAFALSE 0
