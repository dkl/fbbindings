#pragma once

#include once "crt/wchar.bi"
#include once "_mingw_unicode.bi"
#include once "mmreg.bi"
#include once "ole2.bi"
#include once "msacm.bi"

'' The following symbols have been renamed:
''     #define AVIFileInfo => AVIFileInfo_
''     #define AVIStreamInfo => AVIStreamInfo_

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

type IAVIStreamVtbl as IAVIStreamVtbl_
type IAVIStreamingVtbl as IAVIStreamingVtbl_
type IAVIEditStreamVtbl as IAVIEditStreamVtbl_
type IAVIPersistFileVtbl as IAVIPersistFileVtbl_
type IAVIFileVtbl as IAVIFileVtbl_
type IGetFrameVtbl as IGetFrameVtbl_

#define _INC_VFW
#define VFWAPI WINAPI
#define VFWAPIV WINAPIV
#define VFWAPI_INLINE WINAPI

declare function VideoForWindowsVersion() as DWORD
declare function InitVFW() as LONG_
declare function TermVFW() as LONG_

#define MKFOURCC(ch0, ch1, ch2, ch3) cast(DWORD, cast(BYTE_, (((ch0) or cast(DWORD, cast(BYTE_, (ch1) shl 8))) or cast(DWORD, cast(BYTE_, (ch2) shl 16))) or cast(DWORD, cast(BYTE_, (ch3) shl 24))))
#define ICVERSION &h0104

type HIC__
	unused as long
end type

type HIC as HIC__ ptr

#define BI_1632 &h32333631
#define aviTWOCC(ch0, ch1) cast(WORD, cast(BYTE_, (ch0) or cast(WORD, cast(BYTE_, (ch1) shl 8))))
#define ICTYPE_VIDEO mmioFOURCC(asc("v"), asc("i"), asc("d"), asc("c"))
#define ICTYPE_AUDIO mmioFOURCC(asc("a"), asc("u"), asc("d"), asc("c"))
#define ICERR_OK __MSABI_LONG(0)
#define ICERR_DONTDRAW __MSABI_LONG(1)
#define ICERR_NEWPALETTE __MSABI_LONG(2)
#define ICERR_GOTOKEYFRAME __MSABI_LONG(3)
#define ICERR_STOPDRAWING __MSABI_LONG(4)
#define ICERR_UNSUPPORTED __MSABI_LONG(-1)
#define ICERR_BADFORMAT __MSABI_LONG(-2)
#define ICERR_MEMORY __MSABI_LONG(-3)
#define ICERR_INTERNAL __MSABI_LONG(-4)
#define ICERR_BADFLAGS __MSABI_LONG(-5)
#define ICERR_BADPARAM __MSABI_LONG(-6)
#define ICERR_BADSIZE __MSABI_LONG(-7)
#define ICERR_BADHANDLE __MSABI_LONG(-8)
#define ICERR_CANTUPDATE __MSABI_LONG(-9)
#define ICERR_ABORT __MSABI_LONG(-10)
#define ICERR_ERROR __MSABI_LONG(-100)
#define ICERR_BADBITDEPTH __MSABI_LONG(-200)
#define ICERR_BADIMAGESIZE __MSABI_LONG(-201)
#define ICERR_CUSTOM __MSABI_LONG(-400)
#define ICMODE_COMPRESS 1
#define ICMODE_DECOMPRESS 2
#define ICMODE_FASTDECOMPRESS 3
#define ICMODE_QUERY 4
#define ICMODE_FASTCOMPRESS 5
#define ICMODE_DRAW 8
#define AVIIF_TWOCC __MSABI_LONG(&h00000002)
#define ICQUALITY_LOW 0
#define ICQUALITY_HIGH 10000
#define ICQUALITY_DEFAULT (-1)
#define ICM_USER (DRV_USER + &h0000)
#define ICM_RESERVED ICM_RESERVED_LOW
#define ICM_RESERVED_LOW (DRV_USER + &h1000)
#define ICM_RESERVED_HIGH (DRV_USER + &h2000)
#define ICM_GETSTATE (ICM_RESERVED + 0)
#define ICM_SETSTATE (ICM_RESERVED + 1)
#define ICM_GETINFO (ICM_RESERVED + 2)
#define ICM_CONFIGURE (ICM_RESERVED + 10)
#define ICM_ABOUT (ICM_RESERVED + 11)
#define ICM_GETERRORTEXT (ICM_RESERVED + 12)
#define ICM_GETFORMATNAME (ICM_RESERVED + 20)
#define ICM_ENUMFORMATS (ICM_RESERVED + 21)
#define ICM_GETDEFAULTQUALITY (ICM_RESERVED + 30)
#define ICM_GETQUALITY (ICM_RESERVED + 31)
#define ICM_SETQUALITY (ICM_RESERVED + 32)
#define ICM_SET (ICM_RESERVED + 40)
#define ICM_GET (ICM_RESERVED + 41)
#define ICM_FRAMERATE mmioFOURCC(asc("F"), asc("r"), asc("m"), asc("R"))
#define ICM_KEYFRAMERATE mmioFOURCC(asc("K"), asc("e"), asc("y"), asc("R"))
#define ICM_COMPRESS_GET_FORMAT (ICM_USER + 4)
#define ICM_COMPRESS_GET_SIZE (ICM_USER + 5)
#define ICM_COMPRESS_QUERY (ICM_USER + 6)
#define ICM_COMPRESS_BEGIN (ICM_USER + 7)
#define ICM_COMPRESS (ICM_USER + 8)
#define ICM_COMPRESS_END (ICM_USER + 9)
#define ICM_DECOMPRESS_GET_FORMAT (ICM_USER + 10)
#define ICM_DECOMPRESS_QUERY (ICM_USER + 11)
#define ICM_DECOMPRESS_BEGIN (ICM_USER + 12)
#define ICM_DECOMPRESS (ICM_USER + 13)
#define ICM_DECOMPRESS_END (ICM_USER + 14)
#define ICM_DECOMPRESS_SET_PALETTE (ICM_USER + 29)
#define ICM_DECOMPRESS_GET_PALETTE (ICM_USER + 30)
#define ICM_DRAW_QUERY (ICM_USER + 31)
#define ICM_DRAW_BEGIN (ICM_USER + 15)
#define ICM_DRAW_GET_PALETTE (ICM_USER + 16)
#define ICM_DRAW_UPDATE (ICM_USER + 17)
#define ICM_DRAW_START (ICM_USER + 18)
#define ICM_DRAW_STOP (ICM_USER + 19)
#define ICM_DRAW_BITS (ICM_USER + 20)
#define ICM_DRAW_END (ICM_USER + 21)
#define ICM_DRAW_GETTIME (ICM_USER + 32)
#define ICM_DRAW (ICM_USER + 33)
#define ICM_DRAW_WINDOW (ICM_USER + 34)
#define ICM_DRAW_SETTIME (ICM_USER + 35)
#define ICM_DRAW_REALIZE (ICM_USER + 36)
#define ICM_DRAW_FLUSH (ICM_USER + 37)
#define ICM_DRAW_RENDERBUFFER (ICM_USER + 38)
#define ICM_DRAW_START_PLAY (ICM_USER + 39)
#define ICM_DRAW_STOP_PLAY (ICM_USER + 40)
#define ICM_DRAW_SUGGESTFORMAT (ICM_USER + 50)
#define ICM_DRAW_CHANGEPALETTE (ICM_USER + 51)
#define ICM_DRAW_IDLE (ICM_USER + 52)
#define ICM_GETBUFFERSWANTED (ICM_USER + 41)
#define ICM_GETDEFAULTKEYFRAMERATE (ICM_USER + 42)
#define ICM_DECOMPRESSEX_BEGIN (ICM_USER + 60)
#define ICM_DECOMPRESSEX_QUERY (ICM_USER + 61)
#define ICM_DECOMPRESSEX (ICM_USER + 62)
#define ICM_DECOMPRESSEX_END (ICM_USER + 63)
#define ICM_COMPRESS_FRAMES_INFO (ICM_USER + 70)
#define ICM_COMPRESS_FRAMES (ICM_USER + 71)
#define ICM_SET_STATUS_PROC (ICM_USER + 72)

type ICOPEN
	dwSize as DWORD
	fccType as DWORD
	fccHandler as DWORD
	dwVersion as DWORD
	dwFlags as DWORD
	dwError as LRESULT
	pV1Reserved as LPVOID
	pV2Reserved as LPVOID
	dnDevNode as DWORD
end type

type ICINFO
	dwSize as DWORD
	fccType as DWORD
	fccHandler as DWORD
	dwFlags as DWORD
	dwVersion as DWORD
	dwVersionICM as DWORD
	szName(0 to 15) as WCHAR
	szDescription(0 to 127) as WCHAR
	szDriver(0 to 127) as WCHAR
end type

#define VIDCF_QUALITY &h0001
#define VIDCF_CRUNCH &h0002
#define VIDCF_TEMPORAL &h0004
#define VIDCF_COMPRESSFRAMES &h0008
#define VIDCF_DRAW &h0010
#define VIDCF_FASTTEMPORALC &h0020
#define VIDCF_QUALITYTIME &h0040
#define VIDCF_FASTTEMPORALD &h0080
#define VIDCF_FASTTEMPORAL (VIDCF_FASTTEMPORALC or VIDCF_FASTTEMPORALD)
#define ICCOMPRESS_KEYFRAME __MSABI_LONG(&h00000001)

type ICCOMPRESS
	dwFlags as DWORD
	lpbiOutput as LPBITMAPINFOHEADER
	lpOutput as LPVOID
	lpbiInput as LPBITMAPINFOHEADER
	lpInput as LPVOID
	lpckid as LPDWORD
	lpdwFlags as LPDWORD
	lFrameNum as LONG_
	dwFrameSize as DWORD
	dwQuality as DWORD
	lpbiPrev as LPBITMAPINFOHEADER
	lpPrev as LPVOID
end type

#define ICCOMPRESSFRAMES_PADDING &h00000001

type ICCOMPRESSFRAMES
	dwFlags as DWORD
	lpbiOutput as LPBITMAPINFOHEADER
	lOutput as LPARAM
	lpbiInput as LPBITMAPINFOHEADER
	lInput as LPARAM
	lStartFrame as LONG_
	lFrameCount as LONG_
	lQuality as LONG_
	lDataRate as LONG_
	lKeyRate as LONG_
	dwRate as DWORD
	dwScale as DWORD
	dwOverheadPerFrame as DWORD
	dwReserved2 as DWORD
	GetData as function(byval lInput as LPARAM, byval lFrame as LONG_, byval lpBits as LPVOID, byval len_ as LONG_) as LONG_
	PutData as function(byval lOutput as LPARAM, byval lFrame as LONG_, byval lpBits as LPVOID, byval len_ as LONG_) as LONG_
end type

#define ICSTATUS_START 0
#define ICSTATUS_STATUS 1
#define ICSTATUS_END 2
#define ICSTATUS_ERROR 3
#define ICSTATUS_YIELD 4

type ICSETSTATUSPROC
	dwFlags as DWORD
	lParam as LPARAM
	Status as function(byval lParam as LPARAM, byval message as UINT, byval l as LONG_) as LONG_
end type

#define ICDECOMPRESS_UPDATE __MSABI_LONG(&h40000000)
#define ICDECOMPRESS_PREROLL __MSABI_LONG(&h20000000)
#define ICDECOMPRESS_NULLFRAME __MSABI_LONG(&h10000000)
#define ICDECOMPRESS_NOTKEYFRAME __MSABI_LONG(&h08000000)

type ICDECOMPRESS
	dwFlags as DWORD
	lpbiInput as LPBITMAPINFOHEADER
	lpInput as LPVOID
	lpbiOutput as LPBITMAPINFOHEADER
	lpOutput as LPVOID
	ckid as DWORD
end type

type ICDECOMPRESSEX
	dwFlags as DWORD
	lpbiSrc as LPBITMAPINFOHEADER
	lpSrc as LPVOID
	lpbiDst as LPBITMAPINFOHEADER
	lpDst as LPVOID
	xDst as long
	yDst as long
	dxDst as long
	dyDst as long
	xSrc as long
	ySrc as long
	dxSrc as long
	dySrc as long
end type

#define ICDRAW_ANIMATE __MSABI_LONG(&h00000008)
#define ICDRAW_CONTINUE __MSABI_LONG(&h00000010)
#define ICDRAW_MEMORYDC __MSABI_LONG(&h00000020)
#define ICDRAW_UPDATING __MSABI_LONG(&h00000040)
#define ICDRAW_RENDER __MSABI_LONG(&h00000080)
#define ICDRAW_BUFFER __MSABI_LONG(&h00000100)

type ICDRAWBEGIN
	dwFlags as DWORD
	hpal as HPALETTE
	hwnd as HWND
	hdc as HDC
	xDst as long
	yDst as long
	dxDst as long
	dyDst as long
	lpbi as LPBITMAPINFOHEADER
	xSrc as long
	ySrc as long
	dxSrc as long
	dySrc as long
	dwRate as DWORD
	dwScale as DWORD
end type

#define ICDRAW_PREROLL __MSABI_LONG(&h20000000)
#define ICDRAW_NULLFRAME __MSABI_LONG(&h10000000)
#define ICDRAW_NOTKEYFRAME __MSABI_LONG(&h08000000)

type ICDRAW
	dwFlags as DWORD
	lpFormat as LPVOID
	lpData as LPVOID
	cbData as DWORD
	lTime as LONG_
end type

type ICDRAWSUGGEST
	lpbiIn as LPBITMAPINFOHEADER
	lpbiSuggest as LPBITMAPINFOHEADER
	dxSrc as long
	dySrc as long
	dxDst as long
	dyDst as long
	hicDecompressor as HIC
end type

type ICPALETTE
	dwFlags as DWORD
	iStart as long
	iLen as long
	lppe as LPPALETTEENTRY
end type

declare function ICInfo(byval fccType as DWORD, byval fccHandler as DWORD, byval lpicinfo as ICINFO ptr) as WINBOOL
declare function ICInstall(byval fccType as DWORD, byval fccHandler as DWORD, byval lParam as LPARAM, byval szDesc as LPSTR, byval wFlags as UINT) as WINBOOL
declare function ICRemove(byval fccType as DWORD, byval fccHandler as DWORD, byval wFlags as UINT) as WINBOOL
declare function ICGetInfo(byval hic as HIC, byval picinfo as ICINFO ptr, byval cb as DWORD) as LRESULT
declare function ICOpen(byval fccType as DWORD, byval fccHandler as DWORD, byval wMode as UINT) as HIC
declare function ICOpenFunction(byval fccType as DWORD, byval fccHandler as DWORD, byval wMode as UINT, byval lpfnHandler as FARPROC) as HIC
declare function ICClose(byval hic as HIC) as LRESULT
declare function ICSendMessage(byval hic as HIC, byval msg as UINT, byval dw1 as DWORD_PTR, byval dw2 as DWORD_PTR) as LRESULT

#define ICINSTALL_UNICODE &h8000
#define ICINSTALL_FUNCTION &h0001
#define ICINSTALL_DRIVER &h0002
#define ICINSTALL_HDRV &h0004
#define ICINSTALL_DRIVERW &h8002
#define ICMF_CONFIGURE_QUERY &h00000001
#define ICMF_ABOUT_QUERY &h00000001
#define ICQueryAbout(hic) (ICSendMessage(hic, ICM_ABOUT, cast(DWORD_PTR, -1), ICMF_ABOUT_QUERY) = ICERR_OK)
#define ICAbout(hic, hwnd) ICSendMessage(hic, ICM_ABOUT, cast(DWORD_PTR, cast(UINT_PTR, (hwnd))), cast(DWORD_PTR, 0))
#define ICQueryConfigure(hic) (ICSendMessage(hic, ICM_CONFIGURE, cast(DWORD_PTR, -1), ICMF_CONFIGURE_QUERY) = ICERR_OK)
#define ICConfigure(hic, hwnd) ICSendMessage(hic, ICM_CONFIGURE, cast(DWORD_PTR, cast(UINT_PTR, (hwnd))), cast(DWORD_PTR, 0))
#define ICGetState(hic, pv, cb) ICSendMessage(hic, ICM_GETSTATE, cast(DWORD_PTR, cast(LPVOID, (pv))), cast(DWORD_PTR, (cb)))
#define ICSetState(hic, pv, cb) ICSendMessage(hic, ICM_SETSTATE, cast(DWORD_PTR, cast(LPVOID, (pv))), cast(DWORD_PTR, (cb)))
#define ICGetStateSize(hic) cast(DWORD, ICGetState(hic, NULL, 0))

dim shared dwICValue as DWORD

'' TODO: #define ICGetDefaultQuality(hic) (ICSendMessage(hic,ICM_GETDEFAULTQUALITY,(DWORD_PTR)(LPVOID)&dwICValue,sizeof(DWORD)),dwICValue)
'' TODO: #define ICGetDefaultKeyFrameRate(hic) (ICSendMessage(hic,ICM_GETDEFAULTKEYFRAMERATE,(DWORD_PTR)(LPVOID)&dwICValue,sizeof(DWORD)),dwICValue)

#define ICDrawWindow(hic, prc) ICSendMessage(hic, ICM_DRAW_WINDOW, cast(DWORD_PTR, cast(LPVOID, (prc))), sizeof(RECT))

declare function ICCompress cdecl(byval hic as HIC, byval dwFlags as DWORD, byval lpbiOutput as LPBITMAPINFOHEADER, byval lpData as LPVOID, byval lpbiInput as LPBITMAPINFOHEADER, byval lpBits as LPVOID, byval lpckid as LPDWORD, byval lpdwFlags as LPDWORD, byval lFrameNum as LONG_, byval dwFrameSize as DWORD, byval dwQuality as DWORD, byval lpbiPrev as LPBITMAPINFOHEADER, byval lpPrev as LPVOID) as DWORD

#define ICCompressBegin(hic, lpbiInput, lpbiOutput) ICSendMessage(hic, ICM_COMPRESS_BEGIN, cast(DWORD_PTR, cast(LPVOID, (lpbiInput))), cast(DWORD_PTR, cast(LPVOID, (lpbiOutput))))
#define ICCompressQuery(hic, lpbiInput, lpbiOutput) ICSendMessage(hic, ICM_COMPRESS_QUERY, cast(DWORD_PTR, cast(LPVOID, (lpbiInput))), cast(DWORD_PTR, cast(LPVOID, (lpbiOutput))))
#define ICCompressGetFormat(hic, lpbiInput, lpbiOutput) ICSendMessage(hic, ICM_COMPRESS_GET_FORMAT, cast(DWORD_PTR, cast(LPVOID, (lpbiInput))), cast(DWORD_PTR, cast(LPVOID, (lpbiOutput))))
#define ICCompressGetFormatSize(hic, lpbi) cast(DWORD, ICCompressGetFormat(hic, lpbi, NULL))
#define ICCompressGetSize(hic, lpbiInput, lpbiOutput) cast(DWORD, ICSendMessage(hic, ICM_COMPRESS_GET_SIZE, cast(DWORD_PTR, cast(LPVOID, (lpbiInput))), cast(DWORD_PTR, cast(LPVOID, (lpbiOutput)))))
#define ICCompressEnd(hic) ICSendMessage(hic, ICM_COMPRESS_END, cast(DWORD_PTR, 0), cast(DWORD_PTR, 0))
#define ICDECOMPRESS_HURRYUP __MSABI_LONG(&h80000000)

declare function ICDecompress cdecl(byval hic as HIC, byval dwFlags as DWORD, byval lpbiFormat as LPBITMAPINFOHEADER, byval lpData as LPVOID, byval lpbi as LPBITMAPINFOHEADER, byval lpBits as LPVOID) as DWORD

#define ICDecompressBegin(hic, lpbiInput, lpbiOutput) ICSendMessage(hic, ICM_DECOMPRESS_BEGIN, cast(DWORD_PTR, cast(LPVOID, (lpbiInput))), cast(DWORD_PTR, cast(LPVOID, (lpbiOutput))))
#define ICDecompressQuery(hic, lpbiInput, lpbiOutput) ICSendMessage(hic, ICM_DECOMPRESS_QUERY, cast(DWORD_PTR, cast(LPVOID, (lpbiInput))), cast(DWORD_PTR, cast(LPVOID, (lpbiOutput))))
#define ICDecompressGetFormat(hic, lpbiInput, lpbiOutput) cast(LONG_, ICSendMessage(hic, ICM_DECOMPRESS_GET_FORMAT, cast(DWORD_PTR, cast(LPVOID, (lpbiInput))), cast(DWORD_PTR, cast(LPVOID, (lpbiOutput)))))
#define ICDecompressGetFormatSize(hic, lpbi) ICDecompressGetFormat(hic, lpbi, NULL)
#define ICDecompressGetPalette(hic, lpbiInput, lpbiOutput) ICSendMessage(hic, ICM_DECOMPRESS_GET_PALETTE, cast(DWORD_PTR, cast(LPVOID, (lpbiInput))), cast(DWORD_PTR, cast(LPVOID, (lpbiOutput))))
#define ICDecompressSetPalette(hic, lpbiPalette) ICSendMessage(hic, ICM_DECOMPRESS_SET_PALETTE, cast(DWORD_PTR, cast(LPVOID, (lpbiPalette))), cast(DWORD_PTR, 0))
#define ICDecompressEnd(hic) ICSendMessage(hic, ICM_DECOMPRESS_END, cast(DWORD_PTR, 0), cast(DWORD_PTR, 0))
#define ICDecompressExEnd(hic) ICSendMessage(hic, ICM_DECOMPRESSEX_END, cast(DWORD_PTR, 0), cast(DWORD_PTR, 0))
#define ICDRAW_QUERY __MSABI_LONG(&h00000001)
#define ICDRAW_FULLSCREEN __MSABI_LONG(&h00000002)
#define ICDRAW_HDC __MSABI_LONG(&h00000004)

declare function ICDrawBegin cdecl(byval hic as HIC, byval dwFlags as DWORD, byval hpal as HPALETTE, byval hwnd as HWND, byval hdc as HDC, byval xDst as long, byval yDst as long, byval dxDst as long, byval dyDst as long, byval lpbi as LPBITMAPINFOHEADER, byval xSrc as long, byval ySrc as long, byval dxSrc as long, byval dySrc as long, byval dwRate as DWORD, byval dwScale as DWORD) as DWORD

#define ICDRAW_HURRYUP __MSABI_LONG(&h80000000)
#define ICDRAW_UPDATE __MSABI_LONG(&h40000000)

declare function ICDraw cdecl(byval hic as HIC, byval dwFlags as DWORD, byval lpFormat as LPVOID, byval lpData as LPVOID, byval cbData as DWORD, byval lTime as LONG_) as DWORD

#define ICDrawQuery(hic, lpbiInput) ICSendMessage(hic, ICM_DRAW_QUERY, cast(DWORD_PTR, cast(LPVOID, (lpbiInput))), cast(DWORD, 0))
#define ICDrawChangePalette(hic, lpbiInput) ICSendMessage(hic, ICM_DRAW_CHANGEPALETTE, cast(DWORD_PTR, cast(LPVOID, (lpbiInput))), cast(DWORD, 0))
#define ICGetBuffersWanted(hic, lpdwBuffers) ICSendMessage(hic, ICM_GETBUFFERSWANTED, cast(DWORD_PTR, cast(LPVOID, (lpdwBuffers))), cast(DWORD_PTR, 0))
#define ICDrawEnd(hic) ICSendMessage(hic, ICM_DRAW_END, cast(DWORD_PTR, 0), cast(DWORD_PTR, 0))
#define ICDrawStart(hic) ICSendMessage(hic, ICM_DRAW_START, cast(DWORD_PTR, 0), cast(DWORD_PTR, 0))
#define ICDrawStartPlay(hic, lFrom, lTo) ICSendMessage(hic, ICM_DRAW_START_PLAY, cast(DWORD_PTR, (lFrom)), cast(DWORD_PTR, (lTo)))
#define ICDrawStop(hic) ICSendMessage(hic, ICM_DRAW_STOP, cast(DWORD_PTR, 0), cast(DWORD_PTR, 0))
#define ICDrawStopPlay(hic) ICSendMessage(hic, ICM_DRAW_STOP_PLAY, cast(DWORD_PTR, 0), cast(DWORD_PTR, 0))
#define ICDrawGetTime(hic, lplTime) ICSendMessage(hic, ICM_DRAW_GETTIME, cast(DWORD_PTR, cast(LPVOID, (lplTime))), cast(DWORD_PTR, 0))
#define ICDrawSetTime(hic, lTime) ICSendMessage(hic, ICM_DRAW_SETTIME, cast(DWORD_PTR, lTime), cast(DWORD_PTR, 0))
#define ICDrawRealize(hic, hdc, fBackground) ICSendMessage(hic, ICM_DRAW_REALIZE, cast(DWORD_PTR, cast(UINT_PTR, cast(HDC, (hdc)))), cast(DWORD_PTR, cast(WINBOOL, (fBackground))))
#define ICDrawFlush(hic) ICSendMessage(hic, ICM_DRAW_FLUSH, cast(DWORD_PTR, 0), cast(DWORD_PTR, 0))
#define ICDrawRenderBuffer(hic) ICSendMessage(hic, ICM_DRAW_RENDERBUFFER, cast(DWORD_PTR, 0), cast(DWORD_PTR, 0))
#define ICDecompressOpen(fccType, fccHandler, lpbiIn, lpbiOut) ICLocate(fccType, fccHandler, lpbiIn, lpbiOut, ICMODE_DECOMPRESS)
#define ICDrawOpen(fccType, fccHandler, lpbiIn) ICLocate(fccType, fccHandler, lpbiIn, NULL, ICMODE_DRAW)

declare function ICLocate(byval fccType as DWORD, byval fccHandler as DWORD, byval lpbiIn as LPBITMAPINFOHEADER, byval lpbiOut as LPBITMAPINFOHEADER, byval wFlags as WORD) as HIC
declare function ICGetDisplayFormat(byval hic as HIC, byval lpbiIn as LPBITMAPINFOHEADER, byval lpbiOut as LPBITMAPINFOHEADER, byval BitDepth as long, byval dx as long, byval dy as long) as HIC
declare function ICImageCompress(byval hic as HIC, byval uiFlags as UINT, byval lpbiIn as LPBITMAPINFO, byval lpBits as LPVOID, byval lpbiOut as LPBITMAPINFO, byval lQuality as LONG_, byval plSize as LONG_ ptr) as HANDLE
declare function ICImageDecompress(byval hic as HIC, byval uiFlags as UINT, byval lpbiIn as LPBITMAPINFO, byval lpBits as LPVOID, byval lpbiOut as LPBITMAPINFO) as HANDLE

type COMPVARS
	cbSize as LONG_
	dwFlags as DWORD
	hic as HIC
	fccType as DWORD
	fccHandler as DWORD
	lpbiIn as LPBITMAPINFO
	lpbiOut as LPBITMAPINFO
	lpBitsOut as LPVOID
	lpBitsPrev as LPVOID
	lFrame as LONG_
	lKey as LONG_
	lDataRate as LONG_
	lQ as LONG_
	lKeyCount as LONG_
	lpState as LPVOID
	cbState as LONG_
end type

type PCOMPVARS as COMPVARS ptr

#define ICMF_COMPVARS_VALID &h00000001

declare function ICCompressorChoose(byval hwnd as HWND, byval uiFlags as UINT, byval pvIn as LPVOID, byval lpData as LPVOID, byval pc as PCOMPVARS, byval lpszTitle as LPSTR) as WINBOOL

#define ICMF_CHOOSE_KEYFRAME &h0001
#define ICMF_CHOOSE_DATARATE &h0002
#define ICMF_CHOOSE_PREVIEW &h0004
#define ICMF_CHOOSE_ALLCOMPRESSORS &h0008

declare function ICSeqCompressFrameStart(byval pc as PCOMPVARS, byval lpbiIn as LPBITMAPINFO) as WINBOOL
declare sub ICSeqCompressFrameEnd(byval pc as PCOMPVARS)
declare function ICSeqCompressFrame(byval pc as PCOMPVARS, byval uiFlags as UINT, byval lpBits as LPVOID, byval pfKey as WINBOOL ptr, byval plSize as LONG_ ptr) as LPVOID
declare sub ICCompressorFree(byval pc as PCOMPVARS)

type HDRAWDIB as HANDLE

#define DDF_0001 &h0001
#define DDF_UPDATE &h0002
#define DDF_SAME_HDC &h0004
#define DDF_SAME_DRAW &h0008
#define DDF_DONTDRAW &h0010
#define DDF_ANIMATE &h0020
#define DDF_BUFFER &h0040
#define DDF_JUSTDRAWIT &h0080
#define DDF_FULLSCREEN &h0100
#define DDF_BACKGROUNDPAL &h0200
#define DDF_NOTKEYFRAME &h0400
#define DDF_HURRYUP &h0800
#define DDF_HALFTONE &h1000
#define DDF_2000 &h2000
#define DDF_PREROLL DDF_DONTDRAW
#define DDF_SAME_DIB DDF_SAME_DRAW
#define DDF_SAME_SIZE DDF_SAME_DRAW

declare function DrawDibInit() as WINBOOL
declare function DrawDibOpen() as HDRAWDIB
declare function DrawDibClose(byval hdd as HDRAWDIB) as WINBOOL
declare function DrawDibGetBuffer(byval hdd as HDRAWDIB, byval lpbi as LPBITMAPINFOHEADER, byval dwSize as DWORD, byval dwFlags as DWORD) as LPVOID
declare function DrawDibError(byval hdd as HDRAWDIB) as UINT
declare function DrawDibGetPalette(byval hdd as HDRAWDIB) as HPALETTE
declare function DrawDibSetPalette(byval hdd as HDRAWDIB, byval hpal as HPALETTE) as WINBOOL
declare function DrawDibChangePalette(byval hdd as HDRAWDIB, byval iStart as long, byval iLen as long, byval lppe as LPPALETTEENTRY) as WINBOOL
declare function DrawDibRealize(byval hdd as HDRAWDIB, byval hdc as HDC, byval fBackground as WINBOOL) as UINT
declare function DrawDibStart(byval hdd as HDRAWDIB, byval rate as DWORD) as WINBOOL
declare function DrawDibStop(byval hdd as HDRAWDIB) as WINBOOL
declare function DrawDibBegin(byval hdd as HDRAWDIB, byval hdc as HDC, byval dxDst as long, byval dyDst as long, byval lpbi as LPBITMAPINFOHEADER, byval dxSrc as long, byval dySrc as long, byval wFlags as UINT) as WINBOOL
declare function DrawDibDraw(byval hdd as HDRAWDIB, byval hdc as HDC, byval xDst as long, byval yDst as long, byval dxDst as long, byval dyDst as long, byval lpbi as LPBITMAPINFOHEADER, byval lpBits as LPVOID, byval xSrc as long, byval ySrc as long, byval dxSrc as long, byval dySrc as long, byval wFlags as UINT) as WINBOOL

#define DrawDibUpdate(hdd, hdc, x, y) DrawDibDraw(hdd, hdc, x, y, 0, 0, NULL, NULL, 0, 0, 0, 0, DDF_UPDATE)

declare function DrawDibEnd(byval hdd as HDRAWDIB) as WINBOOL

type DRAWDIBTIME
	timeCount as LONG_
	timeDraw as LONG_
	timeDecompress as LONG_
	timeDither as LONG_
	timeStretch as LONG_
	timeBlt as LONG_
	timeSetDIBits as LONG_
end type

type LPDRAWDIBTIME as DRAWDIBTIME ptr

declare function DrawDibTime(byval hdd as HDRAWDIB, byval lpddtime as LPDRAWDIBTIME) as WINBOOL

#define PD_CAN_DRAW_DIB &h0001
#define PD_CAN_STRETCHDIB &h0002
#define PD_STRETCHDIB_1_1_OK &h0004
#define PD_STRETCHDIB_1_2_OK &h0008
#define PD_STRETCHDIB_1_N_OK &h0010

declare function DrawDibProfileDisplay(byval lpbi as LPBITMAPINFOHEADER) as LRESULT

type TWOCC as WORD

#define formtypeAVI mmioFOURCC(asc("A"), asc("V"), asc("I"), asc(" "))
#define listtypeAVIHEADER mmioFOURCC(asc("h"), asc("d"), asc("r"), asc("l"))
#define ckidAVIMAINHDR mmioFOURCC(asc("a"), asc("v"), asc("i"), asc("h"))
#define listtypeSTREAMHEADER mmioFOURCC(asc("s"), asc("t"), asc("r"), asc("l"))
#define ckidSTREAMHEADER mmioFOURCC(asc("s"), asc("t"), asc("r"), asc("h"))
#define ckidSTREAMFORMAT mmioFOURCC(asc("s"), asc("t"), asc("r"), asc("f"))
#define ckidSTREAMHANDLERDATA mmioFOURCC(asc("s"), asc("t"), asc("r"), asc("d"))
#define ckidSTREAMNAME mmioFOURCC(asc("s"), asc("t"), asc("r"), asc("n"))
#define listtypeAVIMOVIE mmioFOURCC(asc("m"), asc("o"), asc("v"), asc("i"))
#define listtypeAVIRECORD mmioFOURCC(asc("r"), asc("e"), asc("c"), asc(" "))
#define ckidAVINEWINDEX mmioFOURCC(asc("i"), asc("d"), asc("x"), asc("1"))
#define streamtypeANY __MSABI_LONG(0)
#define streamtypeVIDEO mmioFOURCC(asc("v"), asc("i"), asc("d"), asc("s"))
#define streamtypeAUDIO mmioFOURCC(asc("a"), asc("u"), asc("d"), asc("s"))
#define streamtypeMIDI mmioFOURCC(asc("m"), asc("i"), asc("d"), asc("s"))
#define streamtypeTEXT mmioFOURCC(asc("t"), asc("x"), asc("t"), asc("s"))
#define cktypeDIBbits aviTWOCC(asc("d"), asc("b"))
#define cktypeDIBcompressed aviTWOCC(asc("d"), asc("c"))
#define cktypePALchange aviTWOCC(asc("p"), asc("c"))
#define cktypeWAVEbytes aviTWOCC(asc("w"), asc("b"))
#define ckidAVIPADDING mmioFOURCC(asc("J"), asc("U"), asc("N"), asc("K"))
#define FromHex(n) iif((n) >= asc("A"), ((n) + 10) - asc("A"), (n) - asc("0"))
#define StreamFromFOURCC(fcc) cast(WORD, (FromHex(LOBYTE_(LOWORD_(fcc))) shl 4) + FromHex(HIBYTE_(LOWORD_(fcc))))
#define TWOCCFromFOURCC(fcc) HIWORD_(fcc)
#define ToHex(n) cast(BYTE_, iif((n) > 9, ((n) - 10) + asc("A"), (n) + asc("0")))
#define MAKEAVICKID(tcc, stream) MAKELONG((ToHex((stream) and &h0f) shl 8) or ToHex(((stream) and &hf0) shr 4), tcc)
#define AVIF_HASINDEX &h00000010
#define AVIF_MUSTUSEINDEX &h00000020
#define AVIF_ISINTERLEAVED &h00000100
#define AVIF_TRUSTCKTYPE &h00000800
#define AVIF_WASCAPTUREFILE &h00010000
#define AVIF_COPYRIGHTED &h00020000
#define AVI_HEADERSIZE 2048

type MainAVIHeader
	dwMicroSecPerFrame as DWORD
	dwMaxBytesPerSec as DWORD
	dwPaddingGranularity as DWORD
	dwFlags as DWORD
	dwTotalFrames as DWORD
	dwInitialFrames as DWORD
	dwStreams as DWORD
	dwSuggestedBufferSize as DWORD
	dwWidth as DWORD
	dwHeight as DWORD
	dwReserved(0 to 3) as DWORD
end type

#define AVISF_DISABLED &h00000001
#define AVISF_VIDEO_PALCHANGES &h00010000

type AVIStreamHeader
	fccType as FOURCC
	fccHandler as FOURCC
	dwFlags as DWORD
	wPriority as WORD
	wLanguage as WORD
	dwInitialFrames as DWORD
	dwScale as DWORD
	dwRate as DWORD
	dwStart as DWORD
	dwLength as DWORD
	dwSuggestedBufferSize as DWORD
	dwQuality as DWORD
	dwSampleSize as DWORD
	rcFrame as RECT
end type

#define AVIIF_LIST __MSABI_LONG(&h00000001)
#define AVIIF_KEYFRAME __MSABI_LONG(&h00000010)
#define AVIIF_FIRSTPART __MSABI_LONG(&h00000020)
#define AVIIF_LASTPART __MSABI_LONG(&h00000040)
#define AVIIF_MIDPART (AVIIF_LASTPART or AVIIF_FIRSTPART)
#define AVIIF_NOTIME __MSABI_LONG(&h00000100)
#define AVIIF_COMPUSE __MSABI_LONG(&h0FFF0000)

type AVIINDEXENTRY
	ckid as DWORD
	dwFlags as DWORD
	dwChunkOffset as DWORD
	dwChunkLength as DWORD
end type

type AVIPALCHANGE
	bFirstEntry as BYTE_
	bNumEntries as BYTE_
	wFlags as WORD
	peNew(0 to ...) as PALETTEENTRY
end type

type _AVISTREAMINFOW field = 8
	fccType as DWORD
	fccHandler as DWORD
	dwFlags as DWORD
	dwCaps as DWORD
	wPriority as WORD
	wLanguage as WORD
	dwScale as DWORD
	dwRate as DWORD
	dwStart as DWORD
	dwLength as DWORD
	dwInitialFrames as DWORD
	dwSuggestedBufferSize as DWORD
	dwQuality as DWORD
	dwSampleSize as DWORD
	rcFrame as RECT
	dwEditCount as DWORD
	dwFormatChangeCount as DWORD
	szName(0 to 63) as WCHAR
end type

type AVISTREAMINFOW as _AVISTREAMINFOW
type LPAVISTREAMINFOW as _AVISTREAMINFOW ptr

#define AVIGETFRAMEF_BESTDISPLAYFMT 1

type _AVISTREAMINFOA field = 8
	fccType as DWORD
	fccHandler as DWORD
	dwFlags as DWORD
	dwCaps as DWORD
	wPriority as WORD
	wLanguage as WORD
	dwScale as DWORD
	dwRate as DWORD
	dwStart as DWORD
	dwLength as DWORD
	dwInitialFrames as DWORD
	dwSuggestedBufferSize as DWORD
	dwQuality as DWORD
	dwSampleSize as DWORD
	rcFrame as RECT
	dwEditCount as DWORD
	dwFormatChangeCount as DWORD
	szName as zstring * 64
end type

type AVISTREAMINFOA as _AVISTREAMINFOA
type LPAVISTREAMINFOA as _AVISTREAMINFOA ptr

#define AVISTREAMINFO __MINGW_NAME_AW(AVISTREAMINFO)
#define LPAVISTREAMINFO __MINGW_NAME_AW(LPAVISTREAMINFO)
#define AVISTREAMINFO_DISABLED &h00000001
#define AVISTREAMINFO_FORMATCHANGES &h00010000

type _AVIFILEINFOW field = 8
	dwMaxBytesPerSec as DWORD
	dwFlags as DWORD
	dwCaps as DWORD
	dwStreams as DWORD
	dwSuggestedBufferSize as DWORD
	dwWidth as DWORD
	dwHeight as DWORD
	dwScale as DWORD
	dwRate as DWORD
	dwLength as DWORD
	dwEditCount as DWORD
	szFileType(0 to 63) as WCHAR
end type

type AVIFILEINFOW as _AVIFILEINFOW
type LPAVIFILEINFOW as _AVIFILEINFOW ptr

type _AVIFILEINFOA field = 8
	dwMaxBytesPerSec as DWORD
	dwFlags as DWORD
	dwCaps as DWORD
	dwStreams as DWORD
	dwSuggestedBufferSize as DWORD
	dwWidth as DWORD
	dwHeight as DWORD
	dwScale as DWORD
	dwRate as DWORD
	dwLength as DWORD
	dwEditCount as DWORD
	szFileType as zstring * 64
end type

type AVIFILEINFOA as _AVIFILEINFOA
type LPAVIFILEINFOA as _AVIFILEINFOA ptr

#define AVIFILEINFO __MINGW_NAME_AW(AVIFILEINFO)
#define LPAVIFILEINFO __MINGW_NAME_AW(LPAVIFILEINFO)
#define AVIFILEINFO_HASINDEX &h00000010
#define AVIFILEINFO_MUSTUSEINDEX &h00000020
#define AVIFILEINFO_ISINTERLEAVED &h00000100
#define AVIFILEINFO_TRUSTCKTYPE &h00000800
#define AVIFILEINFO_WASCAPTUREFILE &h00010000
#define AVIFILEINFO_COPYRIGHTED &h00020000
#define AVIFILECAPS_CANREAD &h00000001
#define AVIFILECAPS_CANWRITE &h00000002
#define AVIFILECAPS_ALLKEYFRAMES &h00000010
#define AVIFILECAPS_NOCOMPRESSION &h00000020

type AVISAVECALLBACK as function(byval as long) as WINBOOL

type AVICOMPRESSOPTIONS field = 8
	fccType as DWORD
	fccHandler as DWORD
	dwKeyFrameEvery as DWORD
	dwQuality as DWORD
	dwBytesPerSecond as DWORD
	dwFlags as DWORD
	lpFormat as LPVOID
	cbFormat as DWORD
	lpParms as LPVOID
	cbParms as DWORD
	dwInterleaveEvery as DWORD
end type

type LPAVICOMPRESSOPTIONS as AVICOMPRESSOPTIONS ptr

#define AVICOMPRESSF_INTERLEAVE &h00000001
#define AVICOMPRESSF_DATARATE &h00000002
#define AVICOMPRESSF_KEYFRAMES &h00000004
#define AVICOMPRESSF_VALID &h00000008

type IAVIStream field = 8
	lpVtbl as IAVIStreamVtbl ptr
end type

type IAVIStreamVtbl_ field = 8
	QueryInterface as function(byval This as IAVIStream ptr, byval riid as const IID const ptr, byval ppvObj as LPVOID ptr) as HRESULT
	AddRef as function(byval This as IAVIStream ptr) as ULONG_
	Release as function(byval This as IAVIStream ptr) as ULONG_
	Create as function(byval This as IAVIStream ptr, byval lParam1 as LPARAM, byval lParam2 as LPARAM) as HRESULT
	Info as function(byval This as IAVIStream ptr, byval psi as AVISTREAMINFOW ptr, byval lSize as LONG_) as HRESULT
	FindSample as function(byval This as IAVIStream ptr, byval lPos_ as LONG_, byval lFlags as LONG_) as LONG_
	ReadFormat as function(byval This as IAVIStream ptr, byval lPos_ as LONG_, byval lpFormat as LPVOID, byval lpcbFormat as LONG_ ptr) as HRESULT
	SetFormat as function(byval This as IAVIStream ptr, byval lPos_ as LONG_, byval lpFormat as LPVOID, byval cbFormat as LONG_) as HRESULT
	Read as function(byval This as IAVIStream ptr, byval lStart as LONG_, byval lSamples as LONG_, byval lpBuffer as LPVOID, byval cbBuffer as LONG_, byval plBytes as LONG_ ptr, byval plSamples as LONG_ ptr) as HRESULT
	Write as function(byval This as IAVIStream ptr, byval lStart as LONG_, byval lSamples as LONG_, byval lpBuffer as LPVOID, byval cbBuffer as LONG_, byval dwFlags as DWORD, byval plSampWritten as LONG_ ptr, byval plBytesWritten as LONG_ ptr) as HRESULT
	Delete as function(byval This as IAVIStream ptr, byval lStart as LONG_, byval lSamples as LONG_) as HRESULT
	ReadData as function(byval This as IAVIStream ptr, byval fcc as DWORD, byval lp as LPVOID, byval lpcb as LONG_ ptr) as HRESULT
	WriteData as function(byval This as IAVIStream ptr, byval fcc as DWORD, byval lp as LPVOID, byval cb as LONG_) as HRESULT
	SetInfo as function(byval This as IAVIStream ptr, byval lpInfo as AVISTREAMINFOW ptr, byval cbInfo as LONG_) as HRESULT
end type

type PAVISTREAM as IAVIStream ptr

type IAVIStreaming field = 8
	lpVtbl as IAVIStreamingVtbl ptr
end type

type IAVIStreamingVtbl_ field = 8
	QueryInterface as function(byval This as IAVIStreaming ptr, byval riid as const IID const ptr, byval ppvObj as LPVOID ptr) as HRESULT
	AddRef as function(byval This as IAVIStreaming ptr) as ULONG_
	Release as function(byval This as IAVIStreaming ptr) as ULONG_
	Begin as function(byval This as IAVIStreaming ptr, byval lStart as LONG_, byval lEnd as LONG_, byval lRate as LONG_) as HRESULT
	as function(byval This as IAVIStreaming ptr) as HRESULT End
end type

type PAVISTREAMING as IAVIStreaming ptr

type IAVIEditStream field = 8
	lpVtbl as IAVIEditStreamVtbl ptr
end type

type IAVIEditStreamVtbl_ field = 8
	QueryInterface as function(byval This as IAVIEditStream ptr, byval riid as const IID const ptr, byval ppvObj as LPVOID ptr) as HRESULT
	AddRef as function(byval This as IAVIEditStream ptr) as ULONG_
	Release as function(byval This as IAVIEditStream ptr) as ULONG_
	Cut as function(byval This as IAVIEditStream ptr, byval plStart as LONG_ ptr, byval plLength as LONG_ ptr, byval ppResult as PAVISTREAM ptr) as HRESULT
	Copy as function(byval This as IAVIEditStream ptr, byval plStart as LONG_ ptr, byval plLength as LONG_ ptr, byval ppResult as PAVISTREAM ptr) as HRESULT
	Paste as function(byval This as IAVIEditStream ptr, byval plPos as LONG_ ptr, byval plLength as LONG_ ptr, byval pstream as PAVISTREAM, byval lStart as LONG_, byval lEnd as LONG_) as HRESULT
	Clone as function(byval This as IAVIEditStream ptr, byval ppResult as PAVISTREAM ptr) as HRESULT
	SetInfo as function(byval This as IAVIEditStream ptr, byval lpInfo as AVISTREAMINFOW ptr, byval cbInfo as LONG_) as HRESULT
end type

type PAVIEDITSTREAM as IAVIEditStream ptr

type IAVIPersistFile field = 8
	lpVtbl as IAVIPersistFileVtbl ptr
end type

type IAVIPersistFileVtbl_ field = 8
	Reserved1 as function(byval This as IAVIPersistFile ptr) as HRESULT
end type

type PAVIPERSISTFILE as IAVIPersistFile ptr

type IAVIFile field = 8
	lpVtbl as IAVIFileVtbl ptr
end type

type IAVIFileVtbl_ field = 8
	QueryInterface as function(byval This as IAVIFile ptr, byval riid as const IID const ptr, byval ppvObj as LPVOID ptr) as HRESULT
	AddRef as function(byval This as IAVIFile ptr) as ULONG_
	Release as function(byval This as IAVIFile ptr) as ULONG_
	Info as function(byval This as IAVIFile ptr, byval pfi as AVIFILEINFOW ptr, byval lSize as LONG_) as HRESULT
	GetStream as function(byval This as IAVIFile ptr, byval ppStream as PAVISTREAM ptr, byval fccType as DWORD, byval lParam as LONG_) as HRESULT
	CreateStream as function(byval This as IAVIFile ptr, byval ppStream as PAVISTREAM ptr, byval psi as AVISTREAMINFOW ptr) as HRESULT
	WriteData as function(byval This as IAVIFile ptr, byval ckid as DWORD, byval lpData as LPVOID, byval cbData as LONG_) as HRESULT
	ReadData as function(byval This as IAVIFile ptr, byval ckid as DWORD, byval lpData as LPVOID, byval lpcbData as LONG_ ptr) as HRESULT
	EndRecord as function(byval This as IAVIFile ptr) as HRESULT
	DeleteStream as function(byval This as IAVIFile ptr, byval fccType as DWORD, byval lParam as LONG_) as HRESULT
end type

type PAVIFILE as IAVIFile ptr

type IGetFrame field = 8
	lpVtbl as IGetFrameVtbl ptr
end type

type IGetFrameVtbl_ field = 8
	QueryInterface as function(byval This as IGetFrame ptr, byval riid as const IID const ptr, byval ppvObj as LPVOID ptr) as HRESULT
	AddRef as function(byval This as IGetFrame ptr) as ULONG_
	Release as function(byval This as IGetFrame ptr) as ULONG_
	GetFrame as function(byval This as IGetFrame ptr, byval lPos_ as LONG_) as LPVOID
	Begin as function(byval This as IGetFrame ptr, byval lStart as LONG_, byval lEnd as LONG_, byval lRate as LONG_) as HRESULT
	as function(byval This as IGetFrame ptr) as HRESULT End
	SetFormat as function(byval This as IGetFrame ptr, byval lpbi as LPBITMAPINFOHEADER, byval lpBits as LPVOID, byval x as long, byval y as long, byval dx as long, byval dy as long) as HRESULT
end type

type PGETFRAME as IGetFrame ptr

#define DEFINE_AVIGUID(name, l, w1, w2) DEFINE_GUID(name, l, w1, w2, &hC0, 0, 0, 0, 0, 0, 0, &h46)

extern IID_IAVIFile as const GUID
extern IID_IAVIStream as const GUID
extern IID_IAVIStreaming as const GUID
extern IID_IGetFrame as const GUID
extern IID_IAVIEditStream as const GUID
extern IID_IAVIPersistFile as const GUID

#ifndef UNICODE
	extern CLSID_AVISimpleUnMarshal as const GUID
#endif

extern CLSID_AVIFile as const GUID

#define AVIFILEHANDLER_CANREAD &h0001
#define AVIFILEHANDLER_CANWRITE &h0002
#define AVIFILEHANDLER_CANACCEPTNONRGB &h0004
#define AVIFileOpen __MINGW_NAME_AW(AVIFileOpen)
#define AVIFileInfo_ __MINGW_NAME_AW(AVIFileInfo)
#define AVIFileCreateStream __MINGW_NAME_AW(AVIFileCreateStream)
#define AVIStreamInfo_ __MINGW_NAME_AW(AVIStreamInfo)
#define AVIStreamOpenFromFile __MINGW_NAME_AW(AVIStreamOpenFromFile)

declare sub AVIFileInit()
declare sub AVIFileExit()
declare function AVIFileAddRef(byval pfile as PAVIFILE) as ULONG_
declare function AVIFileRelease(byval pfile as PAVIFILE) as ULONG_
declare function AVIFileOpenA(byval ppfile as PAVIFILE ptr, byval szFile as LPCSTR, byval uMode as UINT, byval lpHandler as LPCLSID) as HRESULT
declare function AVIFileOpenW(byval ppfile as PAVIFILE ptr, byval szFile as LPCWSTR, byval uMode as UINT, byval lpHandler as LPCLSID) as HRESULT
declare function AVIFileInfoW(byval pfile as PAVIFILE, byval pfi as LPAVIFILEINFOW, byval lSize as LONG_) as HRESULT
declare function AVIFileInfoA(byval pfile as PAVIFILE, byval pfi as LPAVIFILEINFOA, byval lSize as LONG_) as HRESULT
declare function AVIFileGetStream(byval pfile as PAVIFILE, byval ppavi as PAVISTREAM ptr, byval fccType as DWORD, byval lParam as LONG_) as HRESULT
declare function AVIFileCreateStreamW(byval pfile as PAVIFILE, byval ppavi as PAVISTREAM ptr, byval psi as AVISTREAMINFOW ptr) as HRESULT
declare function AVIFileCreateStreamA(byval pfile as PAVIFILE, byval ppavi as PAVISTREAM ptr, byval psi as AVISTREAMINFOA ptr) as HRESULT
declare function AVIFileWriteData(byval pfile as PAVIFILE, byval ckid as DWORD, byval lpData as LPVOID, byval cbData as LONG_) as HRESULT
declare function AVIFileReadData(byval pfile as PAVIFILE, byval ckid as DWORD, byval lpData as LPVOID, byval lpcbData as LONG_ ptr) as HRESULT
declare function AVIFileEndRecord(byval pfile as PAVIFILE) as HRESULT
declare function AVIStreamAddRef(byval pavi as PAVISTREAM) as ULONG_
declare function AVIStreamRelease(byval pavi as PAVISTREAM) as ULONG_
declare function AVIStreamInfoW(byval pavi as PAVISTREAM, byval psi as LPAVISTREAMINFOW, byval lSize as LONG_) as HRESULT
declare function AVIStreamInfoA(byval pavi as PAVISTREAM, byval psi as LPAVISTREAMINFOA, byval lSize as LONG_) as HRESULT
declare function AVIStreamFindSample(byval pavi as PAVISTREAM, byval lPos_ as LONG_, byval lFlags as LONG_) as LONG_
declare function AVIStreamReadFormat(byval pavi as PAVISTREAM, byval lPos_ as LONG_, byval lpFormat as LPVOID, byval lpcbFormat as LONG_ ptr) as HRESULT
declare function AVIStreamSetFormat(byval pavi as PAVISTREAM, byval lPos_ as LONG_, byval lpFormat as LPVOID, byval cbFormat as LONG_) as HRESULT
declare function AVIStreamReadData(byval pavi as PAVISTREAM, byval fcc as DWORD, byval lp as LPVOID, byval lpcb as LONG_ ptr) as HRESULT
declare function AVIStreamWriteData(byval pavi as PAVISTREAM, byval fcc as DWORD, byval lp as LPVOID, byval cb as LONG_) as HRESULT
declare function AVIStreamRead(byval pavi as PAVISTREAM, byval lStart as LONG_, byval lSamples as LONG_, byval lpBuffer as LPVOID, byval cbBuffer as LONG_, byval plBytes as LONG_ ptr, byval plSamples as LONG_ ptr) as HRESULT

#define AVISTREAMREAD_CONVENIENT __MSABI_LONG(-1)

declare function AVIStreamWrite(byval pavi as PAVISTREAM, byval lStart as LONG_, byval lSamples as LONG_, byval lpBuffer as LPVOID, byval cbBuffer as LONG_, byval dwFlags as DWORD, byval plSampWritten as LONG_ ptr, byval plBytesWritten as LONG_ ptr) as HRESULT
declare function AVIStreamStart(byval pavi as PAVISTREAM) as LONG_
declare function AVIStreamLength(byval pavi as PAVISTREAM) as LONG_
declare function AVIStreamTimeToSample(byval pavi as PAVISTREAM, byval lTime as LONG_) as LONG_
declare function AVIStreamSampleToTime(byval pavi as PAVISTREAM, byval lSample as LONG_) as LONG_
declare function AVIStreamBeginStreaming(byval pavi as PAVISTREAM, byval lStart as LONG_, byval lEnd as LONG_, byval lRate as LONG_) as HRESULT
declare function AVIStreamEndStreaming(byval pavi as PAVISTREAM) as HRESULT
declare function AVIStreamGetFrameOpen(byval pavi as PAVISTREAM, byval lpbiWanted as LPBITMAPINFOHEADER) as PGETFRAME
declare function AVIStreamGetFrame(byval pg as PGETFRAME, byval lPos_ as LONG_) as LPVOID
declare function AVIStreamGetFrameClose(byval pg as PGETFRAME) as HRESULT
declare function AVIStreamOpenFromFileA(byval ppavi as PAVISTREAM ptr, byval szFile as LPCSTR, byval fccType as DWORD, byval lParam as LONG_, byval mode as UINT, byval pclsidHandler as CLSID ptr) as HRESULT
declare function AVIStreamOpenFromFileW(byval ppavi as PAVISTREAM ptr, byval szFile as LPCWSTR, byval fccType as DWORD, byval lParam as LONG_, byval mode as UINT, byval pclsidHandler as CLSID ptr) as HRESULT
declare function AVIStreamCreate(byval ppavi as PAVISTREAM ptr, byval lParam1 as LONG_, byval lParam2 as LONG_, byval pclsidHandler as CLSID ptr) as HRESULT

#define FIND_DIR __MSABI_LONG(&h0000000F)
#define FIND_NEXT __MSABI_LONG(&h00000001)
#define FIND_PREV __MSABI_LONG(&h00000004)
#define FIND_FROM_START __MSABI_LONG(&h00000008)
#define FIND_TYPE __MSABI_LONG(&h000000F0)
#define FIND_KEY __MSABI_LONG(&h00000010)
#define FIND_ANY __MSABI_LONG(&h00000020)
#define FIND_FORMAT __MSABI_LONG(&h00000040)
#define FIND_RET __MSABI_LONG(&h0000F000)
#define FIND_POS __MSABI_LONG(&h00000000)
#define FIND_LENGTH __MSABI_LONG(&h00001000)
#define FIND_OFFSET __MSABI_LONG(&h00002000)
#define FIND_SIZE __MSABI_LONG(&h00003000)
#define FIND_INDEX __MSABI_LONG(&h00004000)
#define AVIStreamFindKeyFrame AVIStreamFindSample
#define FindKeyFrame FindSample
#define AVIStreamClose AVIStreamRelease
#define AVIFileClose AVIFileRelease
#define AVIStreamInit AVIFileInit
#define AVIStreamExit AVIFileExit
#define SEARCH_NEAREST FIND_PREV
#define SEARCH_BACKWARD FIND_PREV
#define SEARCH_FORWARD FIND_NEXT
#define SEARCH_KEY FIND_KEY
#define SEARCH_ANY FIND_ANY
#define AVIStreamSampleToSample(pavi1, pavi2, l) AVIStreamTimeToSample(pavi1, AVIStreamSampleToTime(pavi2, l))
#define AVIStreamNextSample(pavi, l) AVIStreamFindSample(pavi, l + 1, FIND_NEXT or FIND_ANY)
#define AVIStreamPrevSample(pavi, l) AVIStreamFindSample(pavi, l - 1, FIND_PREV or FIND_ANY)
#define AVIStreamNearestSample(pavi, l) AVIStreamFindSample(pavi, l, FIND_PREV or FIND_ANY)
#define AVIStreamNextKeyFrame(pavi, l) AVIStreamFindSample(pavi, l + 1, FIND_NEXT or FIND_KEY)
#define AVIStreamPrevKeyFrame(pavi, l) AVIStreamFindSample(pavi, l - 1, FIND_PREV or FIND_KEY)
#define AVIStreamNearestKeyFrame(pavi, l) AVIStreamFindSample(pavi, l, FIND_PREV or FIND_KEY)
#define AVIStreamIsKeyFrame(pavi, l) (AVIStreamNearestKeyFrame(pavi, l) = l)
#define AVIStreamPrevSampleTime(pavi, t) AVIStreamSampleToTime(pavi, AVIStreamPrevSample(pavi, AVIStreamTimeToSample(pavi, t)))
#define AVIStreamNextSampleTime(pavi, t) AVIStreamSampleToTime(pavi, AVIStreamNextSample(pavi, AVIStreamTimeToSample(pavi, t)))
#define AVIStreamNearestSampleTime(pavi, t) AVIStreamSampleToTime(pavi, AVIStreamNearestSample(pavi, AVIStreamTimeToSample(pavi, t)))
#define AVIStreamNextKeyFrameTime(pavi, t) AVIStreamSampleToTime(pavi, AVIStreamNextKeyFrame(pavi, AVIStreamTimeToSample(pavi, t)))
#define AVIStreamPrevKeyFrameTime(pavi, t) AVIStreamSampleToTime(pavi, AVIStreamPrevKeyFrame(pavi, AVIStreamTimeToSample(pavi, t)))
#define AVIStreamNearestKeyFrameTime(pavi, t) AVIStreamSampleToTime(pavi, AVIStreamNearestKeyFrame(pavi, AVIStreamTimeToSample(pavi, t)))
#define AVIStreamStartTime(pavi) AVIStreamSampleToTime(pavi, AVIStreamStart(pavi))
#define AVIStreamLengthTime(pavi) AVIStreamSampleToTime(pavi, AVIStreamLength(pavi))
#define AVIStreamEnd(pavi) (AVIStreamStart(pavi) + AVIStreamLength(pavi))
#define AVIStreamEndTime(pavi) AVIStreamSampleToTime(pavi, AVIStreamEnd(pavi))
#define AVIStreamSampleSize(pavi, lPos, plSize) AVIStreamRead(pavi, lPos, 1, NULL, cast(LONG_, 0), plSize, NULL)
#define AVIStreamFormatSize(pavi, lPos, plSize) AVIStreamReadFormat(pavi, lPos, NULL, plSize)
#define AVIStreamDataSize(pavi, fcc, plSize) AVIStreamReadData(pavi, fcc, NULL, plSize)
#define AVStreamNextKeyFrame(pavi, pos) AVIStreamFindSample(pavi, pos + 1, FIND_NEXT or FIND_KEY)
#define AVStreamPrevKeyFrame(pavi, pos) AVIStreamFindSample(pavi, pos - 1, FIND_NEXT or FIND_KEY)
#define comptypeDIB mmioFOURCC(asc("D"), asc("I"), asc("B"), asc(" "))
#define AVISave __MINGW_NAME_AW(AVISave)
#define AVISaveV __MINGW_NAME_AW(AVISaveV)
#define AVIBuildFilter __MINGW_NAME_AW(AVIBuildFilter)
#define EditStreamSetInfo __MINGW_NAME_AW(EditStreamSetInfo)
#define EditStreamSetName __MINGW_NAME_AW(EditStreamSetName)

declare function AVIMakeCompressedStream(byval ppsCompressed as PAVISTREAM ptr, byval ppsSource as PAVISTREAM, byval lpOptions as AVICOMPRESSOPTIONS ptr, byval pclsidHandler as CLSID ptr) as HRESULT
declare function AVISaveA cdecl(byval szFile as LPCSTR, byval pclsidHandler as CLSID ptr, byval lpfnCallback as AVISAVECALLBACK, byval nStreams as long, byval pfile as PAVISTREAM, byval lpOptions as LPAVICOMPRESSOPTIONS, ...) as HRESULT
declare function AVISaveVA(byval szFile as LPCSTR, byval pclsidHandler as CLSID ptr, byval lpfnCallback as AVISAVECALLBACK, byval nStreams as long, byval ppavi as PAVISTREAM ptr, byval plpOptions as LPAVICOMPRESSOPTIONS ptr) as HRESULT
declare function AVISaveW cdecl(byval szFile as LPCWSTR, byval pclsidHandler as CLSID ptr, byval lpfnCallback as AVISAVECALLBACK, byval nStreams as long, byval pfile as PAVISTREAM, byval lpOptions as LPAVICOMPRESSOPTIONS, ...) as HRESULT
declare function AVISaveVW(byval szFile as LPCWSTR, byval pclsidHandler as CLSID ptr, byval lpfnCallback as AVISAVECALLBACK, byval nStreams as long, byval ppavi as PAVISTREAM ptr, byval plpOptions as LPAVICOMPRESSOPTIONS ptr) as HRESULT
declare function AVISaveOptions(byval hwnd as HWND, byval uiFlags as UINT, byval nStreams as long, byval ppavi as PAVISTREAM ptr, byval plpOptions as LPAVICOMPRESSOPTIONS ptr) as INT_PTR
declare function AVISaveOptionsFree(byval nStreams as long, byval plpOptions as LPAVICOMPRESSOPTIONS ptr) as HRESULT
declare function AVIBuildFilterW(byval lpszFilter as LPWSTR, byval cbFilter as LONG_, byval fSaving as WINBOOL) as HRESULT
declare function AVIBuildFilterA(byval lpszFilter as LPSTR, byval cbFilter as LONG_, byval fSaving as WINBOOL) as HRESULT
declare function AVIMakeFileFromStreams(byval ppfile as PAVIFILE ptr, byval nStreams as long, byval papStreams as PAVISTREAM ptr) as HRESULT
declare function AVIMakeStreamFromClipboard(byval cfFormat as UINT, byval hGlobal as HANDLE, byval ppstream as PAVISTREAM ptr) as HRESULT
declare function AVIPutFileOnClipboard(byval pf as PAVIFILE) as HRESULT
declare function AVIGetFromClipboard(byval lppf as PAVIFILE ptr) as HRESULT
declare function AVIClearClipboard() as HRESULT
declare function CreateEditableStream(byval ppsEditable as PAVISTREAM ptr, byval psSource as PAVISTREAM) as HRESULT
declare function EditStreamCut(byval pavi as PAVISTREAM, byval plStart as LONG_ ptr, byval plLength as LONG_ ptr, byval ppResult as PAVISTREAM ptr) as HRESULT
declare function EditStreamCopy(byval pavi as PAVISTREAM, byval plStart as LONG_ ptr, byval plLength as LONG_ ptr, byval ppResult as PAVISTREAM ptr) as HRESULT
declare function EditStreamPaste(byval pavi as PAVISTREAM, byval plPos as LONG_ ptr, byval plLength as LONG_ ptr, byval pstream as PAVISTREAM, byval lStart as LONG_, byval lEnd as LONG_) as HRESULT
declare function EditStreamClone(byval pavi as PAVISTREAM, byval ppResult as PAVISTREAM ptr) as HRESULT
declare function EditStreamSetNameA(byval pavi as PAVISTREAM, byval lpszName as LPCSTR) as HRESULT
declare function EditStreamSetNameW(byval pavi as PAVISTREAM, byval lpszName as LPCWSTR) as HRESULT
declare function EditStreamSetInfoW(byval pavi as PAVISTREAM, byval lpInfo as LPAVISTREAMINFOW, byval cbInfo as LONG_) as HRESULT
declare function EditStreamSetInfoA(byval pavi as PAVISTREAM, byval lpInfo as LPAVISTREAMINFOA, byval cbInfo as LONG_) as HRESULT

#define AVIERR_OK __MSABI_LONG(0)
#define MAKE_AVIERR(error) MAKE_SCODE(SEVERITY_ERROR, FACILITY_ITF, &h4000 + error)
#define AVIERR_UNSUPPORTED MAKE_AVIERR(101)
#define AVIERR_BADFORMAT MAKE_AVIERR(102)
#define AVIERR_MEMORY MAKE_AVIERR(103)
#define AVIERR_INTERNAL MAKE_AVIERR(104)
#define AVIERR_BADFLAGS MAKE_AVIERR(105)
#define AVIERR_BADPARAM MAKE_AVIERR(106)
#define AVIERR_BADSIZE MAKE_AVIERR(107)
#define AVIERR_BADHANDLE MAKE_AVIERR(108)
#define AVIERR_FILEREAD MAKE_AVIERR(109)
#define AVIERR_FILEWRITE MAKE_AVIERR(110)
#define AVIERR_FILEOPEN MAKE_AVIERR(111)
#define AVIERR_COMPRESSOR MAKE_AVIERR(112)
#define AVIERR_NOCOMPRESSOR MAKE_AVIERR(113)
#define AVIERR_READONLY MAKE_AVIERR(114)
#define AVIERR_NODATA MAKE_AVIERR(115)
#define AVIERR_BUFFERTOOSMALL MAKE_AVIERR(116)
#define AVIERR_CANTCOMPRESS MAKE_AVIERR(117)
#define AVIERR_USERABORT MAKE_AVIERR(198)
#define AVIERR_ERROR MAKE_AVIERR(199)
#define MCIWndSM SendMessage
#define MCIWND_WINDOW_CLASS TEXT_("MCIWndClass")
#define MCIWndCreate __MINGW_NAME_AW(MCIWndCreate)

declare function MCIWndCreateA cdecl(byval hwndParent as HWND, byval hInstance as HINSTANCE, byval dwStyle as DWORD, byval szFile as LPCSTR) as HWND
declare function MCIWndCreateW cdecl(byval hwndParent as HWND, byval hInstance as HINSTANCE, byval dwStyle as DWORD, byval szFile as LPCWSTR) as HWND
declare function MCIWndRegisterClass cdecl() as WINBOOL

#define MCIWNDOPENF_NEW &h0001
#define MCIWNDF_NOAUTOSIZEWINDOW &h0001
#define MCIWNDF_NOPLAYBAR &h0002
#define MCIWNDF_NOAUTOSIZEMOVIE &h0004
#define MCIWNDF_NOMENU &h0008
#define MCIWNDF_SHOWNAME &h0010
#define MCIWNDF_SHOWPOS &h0020
#define MCIWNDF_SHOWMODE &h0040
#define MCIWNDF_SHOWALL &h0070
#define MCIWNDF_NOTIFYMODE &h0100
#define MCIWNDF_NOTIFYPOS &h0200
#define MCIWNDF_NOTIFYSIZE &h0400
#define MCIWNDF_NOTIFYERROR &h1000
#define MCIWNDF_NOTIFYALL &h1F00
#define MCIWNDF_NOTIFYANSI &h0080
#define MCIWNDF_NOTIFYMEDIAA &h0880
#define MCIWNDF_NOTIFYMEDIAW &h0800
#define MCIWNDF_NOTIFYMEDIA __MINGW_NAME_AW(MCIWNDF_NOTIFYMEDIA)
#define MCIWNDF_RECORD &h2000
#define MCIWNDF_NOERRORDLG &h4000
#define MCIWNDF_NOOPEN &h8000
#define MCIWndCanPlay(hwnd) cast(WINBOOL, MCIWndSM(hwnd, MCIWNDM_CAN_PLAY, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndCanRecord(hwnd) cast(WINBOOL, MCIWndSM(hwnd, MCIWNDM_CAN_RECORD, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndCanSave(hwnd) cast(WINBOOL, MCIWndSM(hwnd, MCIWNDM_CAN_SAVE, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndCanWindow(hwnd) cast(WINBOOL, MCIWndSM(hwnd, MCIWNDM_CAN_WINDOW, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndCanEject(hwnd) cast(WINBOOL, MCIWndSM(hwnd, MCIWNDM_CAN_EJECT, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndCanConfig(hwnd) cast(WINBOOL, MCIWndSM(hwnd, MCIWNDM_CAN_CONFIG, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndPaletteKick(hwnd) cast(WINBOOL, MCIWndSM(hwnd, MCIWNDM_PALETTEKICK, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndSave(hwnd, szFile) cast(LONG_, MCIWndSM(hwnd, MCI_SAVE, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, (szFile)))))
#define MCIWndSaveDialog(hwnd) MCIWndSave(hwnd, -1)
#define MCIWndNew(hwnd, lp) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_NEW, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, (lp)))))
#define MCIWndRecord(hwnd) cast(LONG_, MCIWndSM(hwnd, MCI_RECORD, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndOpen(hwnd, sz, f) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_OPEN, cast(WPARAM, cast(UINT, (f))), cast(LPARAM, cast(LPVOID, (sz)))))
#define MCIWndOpenDialog(hwnd) MCIWndOpen(hwnd, -1, 0)
#define MCIWndClose(hwnd) cast(LONG_, MCIWndSM(hwnd, MCI_CLOSE, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndPlay(hwnd) cast(LONG_, MCIWndSM(hwnd, MCI_PLAY, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndStop(hwnd) cast(LONG_, MCIWndSM(hwnd, MCI_STOP, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndPause(hwnd) cast(LONG_, MCIWndSM(hwnd, MCI_PAUSE, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndResume(hwnd) cast(LONG_, MCIWndSM(hwnd, MCI_RESUME, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndSeek(hwnd, lPos) cast(LONG_, MCIWndSM(hwnd, MCI_SEEK, cast(WPARAM, 0), cast(LPARAM, cast(LONG_, (lPos)))))
#define MCIWndEject(hwnd) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_EJECT, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndHome(hwnd) MCIWndSeek(hwnd, MCIWND_START)
#define MCIWndEnd(hwnd) MCIWndSeek(hwnd, MCIWND_END)
#define MCIWndGetSource(hwnd, prc) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GET_SOURCE, cast(WPARAM, 0), cast(LPARAM, cast(LPRECT, (prc)))))
#define MCIWndPutSource(hwnd, prc) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_PUT_SOURCE, cast(WPARAM, 0), cast(LPARAM, cast(LPRECT, (prc)))))
#define MCIWndGetDest(hwnd, prc) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GET_DEST, cast(WPARAM, 0), cast(LPARAM, cast(LPRECT, (prc)))))
#define MCIWndPutDest(hwnd, prc) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_PUT_DEST, cast(WPARAM, 0), cast(LPARAM, cast(LPRECT, (prc)))))
#define MCIWndPlayReverse(hwnd) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_PLAYREVERSE, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndPlayFrom(hwnd, lPos) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_PLAYFROM, cast(WPARAM, 0), cast(LPARAM, cast(LONG_, (lPos)))))
#define MCIWndPlayTo(hwnd, lPos) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_PLAYTO, cast(WPARAM, 0), cast(LPARAM, cast(LONG_, (lPos)))))

'' TODO: #define MCIWndPlayFromTo(hwnd,lStart,lEnd) (MCIWndSeek(hwnd,lStart),MCIWndPlayTo(hwnd,lEnd))

#define MCIWndGetDeviceID(hwnd) cast(UINT, MCIWndSM(hwnd, MCIWNDM_GETDEVICEID, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndGetAlias(hwnd) cast(UINT, MCIWndSM(hwnd, MCIWNDM_GETALIAS, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndGetMode(hwnd, lp, len) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GETMODE, cast(WPARAM, cast(UINT, (len))), cast(LPARAM, cast(LPTSTR, (lp)))))
#define MCIWndGetPosition(hwnd) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GETPOSITION, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndGetPositionString(hwnd, lp, len) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GETPOSITION, cast(WPARAM, cast(UINT, (len))), cast(LPARAM, cast(LPTSTR, (lp)))))
#define MCIWndGetStart(hwnd) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GETSTART, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndGetLength(hwnd) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GETLENGTH, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndGetEnd(hwnd) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GETEND, cast(WPARAM, 0), cast(LPARAM, 0)))

'' TODO: #define MCIWndStep(hwnd,n) (LONG)MCIWndSM(hwnd,MCI_STEP,(WPARAM)0,(LPARAM)(__LONG32)(n))
'' TODO: #define MCIWndDestroy(hwnd) (VOID)MCIWndSM(hwnd,WM_CLOSE,(WPARAM)0,(LPARAM)0)
'' TODO: #define MCIWndSetZoom(hwnd,iZoom) (VOID)MCIWndSM(hwnd,MCIWNDM_SETZOOM,(WPARAM)0,(LPARAM)(UINT)(iZoom))

#define MCIWndGetZoom(hwnd) cast(UINT, MCIWndSM(hwnd, MCIWNDM_GETZOOM, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndSetVolume(hwnd, iVol) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_SETVOLUME, cast(WPARAM, 0), cast(LPARAM, cast(UINT, (iVol)))))
#define MCIWndGetVolume(hwnd) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GETVOLUME, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndSetSpeed(hwnd, iSpeed) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_SETSPEED, cast(WPARAM, 0), cast(LPARAM, cast(UINT, (iSpeed)))))
#define MCIWndGetSpeed(hwnd) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GETSPEED, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndSetTimeFormat(hwnd, lp) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_SETTIMEFORMAT, cast(WPARAM, 0), cast(LPARAM, cast(LPTSTR, (lp)))))
#define MCIWndGetTimeFormat(hwnd, lp, len) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GETTIMEFORMAT, cast(WPARAM, cast(UINT, (len))), cast(LPARAM, cast(LPTSTR, (lp)))))

'' TODO: #define MCIWndValidateMedia(hwnd) (VOID)MCIWndSM(hwnd,MCIWNDM_VALIDATEMEDIA,(WPARAM)0,(LPARAM)0)

#define MCIWndSetRepeat(hwnd, f) cast(any, MCIWndSM(hwnd, MCIWNDM_SETREPEAT, cast(WPARAM, 0), cast(LPARAM, cast(WINBOOL, (f)))))
#define MCIWndGetRepeat(hwnd) cast(WINBOOL, MCIWndSM(hwnd, MCIWNDM_GETREPEAT, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndUseFrames(hwnd) MCIWndSetTimeFormat(hwnd, TEXT_("frames"))
#define MCIWndUseTime(hwnd) MCIWndSetTimeFormat(hwnd, TEXT_("ms"))

'' TODO: #define MCIWndSetActiveTimer(hwnd,active) (VOID)MCIWndSM(hwnd,MCIWNDM_SETACTIVETIMER,(WPARAM)(UINT)(active),(LPARAM)0)
'' TODO: #define MCIWndSetInactiveTimer(hwnd,inactive) (VOID)MCIWndSM(hwnd,MCIWNDM_SETINACTIVETIMER,(WPARAM)(UINT)(inactive),(LPARAM)0)
'' TODO: #define MCIWndSetTimers(hwnd,active,inactive) (VOID)MCIWndSM(hwnd,MCIWNDM_SETTIMERS,(WPARAM)(UINT)(active),(LPARAM)(UINT)(inactive))
'' TODO: #define MCIWndGetActiveTimer(hwnd) (UINT)MCIWndSM(hwnd,MCIWNDM_GETACTIVETIMER,(WPARAM)0,(LPARAM)0);
'' TODO: #define MCIWndGetInactiveTimer(hwnd) (UINT)MCIWndSM(hwnd,MCIWNDM_GETINACTIVETIMER,(WPARAM)0,(LPARAM)0);

#define MCIWndRealize(hwnd, fBkgnd) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_REALIZE, cast(WPARAM, cast(WINBOOL, (fBkgnd))), cast(LPARAM, 0)))
#define MCIWndSendString(hwnd, sz) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_SENDSTRING, cast(WPARAM, 0), cast(LPARAM, cast(LPTSTR, (sz)))))
#define MCIWndReturnString(hwnd, lp, len) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_RETURNSTRING, cast(WPARAM, cast(UINT, (len))), cast(LPARAM, cast(LPVOID, (lp)))))
#define MCIWndGetError(hwnd, lp, len) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GETERROR, cast(WPARAM, cast(UINT, (len))), cast(LPARAM, cast(LPVOID, (lp)))))
#define MCIWndGetPalette(hwnd) cast(HPALETTE, MCIWndSM(hwnd, MCIWNDM_GETPALETTE, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndSetPalette(hwnd, hpal) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_SETPALETTE, cast(WPARAM, cast(HPALETTE, (hpal))), cast(LPARAM, 0)))
#define MCIWndGetFileName(hwnd, lp, len) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GETFILENAME, cast(WPARAM, cast(UINT, (len))), cast(LPARAM, cast(LPVOID, (lp)))))
#define MCIWndGetDevice(hwnd, lp, len) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_GETDEVICE, cast(WPARAM, cast(UINT, (len))), cast(LPARAM, cast(LPVOID, (lp)))))
#define MCIWndGetStyles(hwnd) cast(UINT, MCIWndSM(hwnd, MCIWNDM_GETSTYLES, cast(WPARAM, 0), cast(LPARAM, 0)))
#define MCIWndChangeStyles(hwnd, mask, value) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_CHANGESTYLES, cast(WPARAM, cast(UINT, (mask))), cast(LPARAM, cast(LONG_, (value)))))
#define MCIWndOpenInterface(hwnd, pUnk) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_OPENINTERFACE, cast(WPARAM, 0), cast(LPARAM, cast(LPUNKNOWN, (pUnk)))))
#define MCIWndSetOwner(hwnd, hwndP) cast(LONG_, MCIWndSM(hwnd, MCIWNDM_SETOWNER, cast(WPARAM, (hwndP)), cast(LPARAM, 0)))
#define MCIWNDM_GETDEVICEID (WM_USER + 100)
#define MCIWNDM_GETSTART (WM_USER + 103)
#define MCIWNDM_GETLENGTH (WM_USER + 104)
#define MCIWNDM_GETEND (WM_USER + 105)
#define MCIWNDM_EJECT (WM_USER + 107)
#define MCIWNDM_SETZOOM (WM_USER + 108)
#define MCIWNDM_GETZOOM (WM_USER + 109)
#define MCIWNDM_SETVOLUME (WM_USER + 110)
#define MCIWNDM_GETVOLUME (WM_USER + 111)
#define MCIWNDM_SETSPEED (WM_USER + 112)
#define MCIWNDM_GETSPEED (WM_USER + 113)
#define MCIWNDM_SETREPEAT (WM_USER + 114)
#define MCIWNDM_GETREPEAT (WM_USER + 115)
#define MCIWNDM_REALIZE (WM_USER + 118)
#define MCIWNDM_VALIDATEMEDIA (WM_USER + 121)
#define MCIWNDM_PLAYFROM (WM_USER + 122)
#define MCIWNDM_PLAYTO (WM_USER + 123)
#define MCIWNDM_GETPALETTE (WM_USER + 126)
#define MCIWNDM_SETPALETTE (WM_USER + 127)
#define MCIWNDM_SETTIMERS (WM_USER + 129)
#define MCIWNDM_SETACTIVETIMER (WM_USER + 130)
#define MCIWNDM_SETINACTIVETIMER (WM_USER + 131)
#define MCIWNDM_GETACTIVETIMER (WM_USER + 132)
#define MCIWNDM_GETINACTIVETIMER (WM_USER + 133)
#define MCIWNDM_CHANGESTYLES (WM_USER + 135)
#define MCIWNDM_GETSTYLES (WM_USER + 136)
#define MCIWNDM_GETALIAS (WM_USER + 137)
#define MCIWNDM_PLAYREVERSE (WM_USER + 139)
#define MCIWNDM_GET_SOURCE (WM_USER + 140)
#define MCIWNDM_PUT_SOURCE (WM_USER + 141)
#define MCIWNDM_GET_DEST (WM_USER + 142)
#define MCIWNDM_PUT_DEST (WM_USER + 143)
#define MCIWNDM_CAN_PLAY (WM_USER + 144)
#define MCIWNDM_CAN_WINDOW (WM_USER + 145)
#define MCIWNDM_CAN_RECORD (WM_USER + 146)
#define MCIWNDM_CAN_SAVE (WM_USER + 147)
#define MCIWNDM_CAN_EJECT (WM_USER + 148)
#define MCIWNDM_CAN_CONFIG (WM_USER + 149)
#define MCIWNDM_PALETTEKICK (WM_USER + 150)
#define MCIWNDM_OPENINTERFACE (WM_USER + 151)
#define MCIWNDM_SETOWNER (WM_USER + 152)
#define MCIWNDM_SENDSTRINGA (WM_USER + 101)
#define MCIWNDM_GETPOSITIONA (WM_USER + 102)
#define MCIWNDM_GETMODEA (WM_USER + 106)
#define MCIWNDM_SETTIMEFORMATA (WM_USER + 119)
#define MCIWNDM_GETTIMEFORMATA (WM_USER + 120)
#define MCIWNDM_GETFILENAMEA (WM_USER + 124)
#define MCIWNDM_GETDEVICEA (WM_USER + 125)
#define MCIWNDM_GETERRORA (WM_USER + 128)
#define MCIWNDM_NEWA (WM_USER + 134)
#define MCIWNDM_RETURNSTRINGA (WM_USER + 138)
#define MCIWNDM_OPENA (WM_USER + 153)
#define MCIWNDM_SENDSTRINGW (WM_USER + 201)
#define MCIWNDM_GETPOSITIONW (WM_USER + 202)
#define MCIWNDM_GETMODEW (WM_USER + 206)
#define MCIWNDM_SETTIMEFORMATW (WM_USER + 219)
#define MCIWNDM_GETTIMEFORMATW (WM_USER + 220)
#define MCIWNDM_GETFILENAMEW (WM_USER + 224)
#define MCIWNDM_GETDEVICEW (WM_USER + 225)
#define MCIWNDM_GETERRORW (WM_USER + 228)
#define MCIWNDM_NEWW (WM_USER + 234)
#define MCIWNDM_RETURNSTRINGW (WM_USER + 238)
#define MCIWNDM_OPENW (WM_USER + 252)
#define MCIWNDM_SENDSTRING __MINGW_NAME_AW(MCIWNDM_SENDSTRING)
#define MCIWNDM_GETPOSITION __MINGW_NAME_AW(MCIWNDM_GETPOSITION)
#define MCIWNDM_GETMODE __MINGW_NAME_AW(MCIWNDM_GETMODE)
#define MCIWNDM_SETTIMEFORMAT __MINGW_NAME_AW(MCIWNDM_SETTIMEFORMAT)
#define MCIWNDM_GETTIMEFORMAT __MINGW_NAME_AW(MCIWNDM_GETTIMEFORMAT)
#define MCIWNDM_GETFILENAME __MINGW_NAME_AW(MCIWNDM_GETFILENAME)
#define MCIWNDM_GETDEVICE __MINGW_NAME_AW(MCIWNDM_GETDEVICE)
#define MCIWNDM_GETERROR __MINGW_NAME_AW(MCIWNDM_GETERROR)
#define MCIWNDM_NEW __MINGW_NAME_AW(MCIWNDM_NEW)
#define MCIWNDM_RETURNSTRING __MINGW_NAME_AW(MCIWNDM_RETURNSTRING)
#define MCIWNDM_OPEN __MINGW_NAME_AW(MCIWNDM_OPEN)
#define MCIWNDM_NOTIFYMODE (WM_USER + 200)
#define MCIWNDM_NOTIFYPOS (WM_USER + 201)
#define MCIWNDM_NOTIFYSIZE (WM_USER + 202)
#define MCIWNDM_NOTIFYMEDIA (WM_USER + 203)
#define MCIWNDM_NOTIFYERROR (WM_USER + 205)
#define MCIWND_START (-1)
#define MCIWND_END (-2)

type HVIDEO__ field = 8
	unused as long
end type

type HVIDEO as HVIDEO__ ptr
type LPHVIDEO as HVIDEO ptr

#define DV_ERR_OK 0
#define DV_ERR_BASE 1
#define DV_ERR_NONSPECIFIC DV_ERR_BASE
#define DV_ERR_BADFORMAT (DV_ERR_BASE + 1)
#define DV_ERR_STILLPLAYING (DV_ERR_BASE + 2)
#define DV_ERR_UNPREPARED (DV_ERR_BASE + 3)
#define DV_ERR_SYNC (DV_ERR_BASE + 4)
#define DV_ERR_TOOMANYCHANNELS (DV_ERR_BASE + 5)
#define DV_ERR_NOTDETECTED (DV_ERR_BASE + 6)
#define DV_ERR_BADINSTALL (DV_ERR_BASE + 7)
#define DV_ERR_CREATEPALETTE (DV_ERR_BASE + 8)
#define DV_ERR_SIZEFIELD (DV_ERR_BASE + 9)
#define DV_ERR_PARAM1 (DV_ERR_BASE + 10)
#define DV_ERR_PARAM2 (DV_ERR_BASE + 11)
#define DV_ERR_CONFIG1 (DV_ERR_BASE + 12)
#define DV_ERR_CONFIG2 (DV_ERR_BASE + 13)
#define DV_ERR_FLAGS (DV_ERR_BASE + 14)
#define DV_ERR_13 (DV_ERR_BASE + 15)
#define DV_ERR_NOTSUPPORTED (DV_ERR_BASE + 16)
#define DV_ERR_NOMEM (DV_ERR_BASE + 17)
#define DV_ERR_ALLOCATED (DV_ERR_BASE + 18)
#define DV_ERR_BADDEVICEID (DV_ERR_BASE + 19)
#define DV_ERR_INVALHANDLE (DV_ERR_BASE + 20)
#define DV_ERR_BADERRNUM (DV_ERR_BASE + 21)
#define DV_ERR_NO_BUFFERS (DV_ERR_BASE + 22)
#define DV_ERR_MEM_CONFLICT (DV_ERR_BASE + 23)
#define DV_ERR_IO_CONFLICT (DV_ERR_BASE + 24)
#define DV_ERR_DMA_CONFLICT (DV_ERR_BASE + 25)
#define DV_ERR_INT_CONFLICT (DV_ERR_BASE + 26)
#define DV_ERR_PROTECT_ONLY (DV_ERR_BASE + 27)
#define DV_ERR_LASTERROR (DV_ERR_BASE + 27)
#define DV_ERR_USER_MSG (DV_ERR_BASE + 1000)
#define DV_VM_OPEN MM_DRVM_OPEN
#define DV_VM_CLOSE MM_DRVM_CLOSE
#define DV_VM_DATA MM_DRVM_DATA
#define DV_VM_ERROR MM_DRVM_ERROR

type videohdr_tag field = 8
	lpData as LPBYTE
	dwBufferLength as DWORD
	dwBytesUsed as DWORD
	dwTimeCaptured as DWORD
	dwUser as DWORD_PTR
	dwFlags as DWORD
	dwReserved(0 to 3) as DWORD_PTR
end type

type VIDEOHDR as videohdr_tag
type PVIDEOHDR as videohdr_tag ptr
type LPVIDEOHDR as videohdr_tag ptr

#define VHDR_DONE &h00000001
#define VHDR_PREPARED &h00000002
#define VHDR_INQUEUE &h00000004
#define VHDR_KEYFRAME &h00000008
#define VHDR_VALID &h0000000F

type channel_caps_tag field = 8
	dwFlags as DWORD
	dwSrcRectXMod as DWORD
	dwSrcRectYMod as DWORD
	dwSrcRectWidthMod as DWORD
	dwSrcRectHeightMod as DWORD
	dwDstRectXMod as DWORD
	dwDstRectYMod as DWORD
	dwDstRectWidthMod as DWORD
	dwDstRectHeightMod as DWORD
end type

type CHANNEL_CAPS as channel_caps_tag
type PCHANNEL_CAPS as channel_caps_tag ptr
type LPCHANNEL_CAPS as channel_caps_tag ptr

#define VCAPS_OVERLAY &h00000001
#define VCAPS_SRC_CAN_CLIP &h00000002
#define VCAPS_DST_CAN_CLIP &h00000004
#define VCAPS_CAN_SCALE &h00000008
#define VIDEO_EXTERNALIN &h0001
#define VIDEO_EXTERNALOUT &h0002
#define VIDEO_IN &h0004
#define VIDEO_OUT &h0008
#define VIDEO_DLG_QUERY &h0010
#define VIDEO_CONFIGURE_QUERY &h8000
#define VIDEO_CONFIGURE_SET &h1000
#define VIDEO_CONFIGURE_GET &h2000
#define VIDEO_CONFIGURE_QUERYSIZE &h0001
#define VIDEO_CONFIGURE_CURRENT &h0010
#define VIDEO_CONFIGURE_NOMINAL &h0020
#define VIDEO_CONFIGURE_MIN &h0040
#define VIDEO_CONFIGURE_MAX &h0080
#define DVM_USER &h4000
#define DVM_CONFIGURE_START &h1000
#define DVM_CONFIGURE_END &h1FFF
#define DVM_PALETTE (DVM_CONFIGURE_START + 1)
#define DVM_FORMAT (DVM_CONFIGURE_START + 2)
#define DVM_PALETTERGB555 (DVM_CONFIGURE_START + 3)
#define DVM_SRC_RECT (DVM_CONFIGURE_START + 4)
#define DVM_DST_RECT (DVM_CONFIGURE_START + 5)
#define AVICapSM(hwnd, m, w, l) iif(IsWindow(hwnd), SendMessage(hwnd, m, w, l), 0)
#define WM_CAP_START WM_USER
#define WM_CAP_UNICODE_START (WM_USER + 100)
#define WM_CAP_GET_CAPSTREAMPTR (WM_CAP_START + 1)
#define WM_CAP_SET_CALLBACK_ERRORW (WM_CAP_UNICODE_START + 2)
#define WM_CAP_SET_CALLBACK_STATUSW (WM_CAP_UNICODE_START + 3)
#define WM_CAP_SET_CALLBACK_ERRORA (WM_CAP_START + 2)
#define WM_CAP_SET_CALLBACK_STATUSA (WM_CAP_START + 3)
#define WM_CAP_SET_CALLBACK_ERROR __MINGW_NAME_AW(WM_CAP_SET_CALLBACK_ERROR)
#define WM_CAP_SET_CALLBACK_STATUS __MINGW_NAME_AW(WM_CAP_SET_CALLBACK_STATUS)
#define WM_CAP_SET_CALLBACK_YIELD (WM_CAP_START + 4)
#define WM_CAP_SET_CALLBACK_FRAME (WM_CAP_START + 5)
#define WM_CAP_SET_CALLBACK_VIDEOSTREAM (WM_CAP_START + 6)
#define WM_CAP_SET_CALLBACK_WAVESTREAM (WM_CAP_START + 7)
#define WM_CAP_GET_USER_DATA (WM_CAP_START + 8)
#define WM_CAP_SET_USER_DATA (WM_CAP_START + 9)
#define WM_CAP_DRIVER_CONNECT (WM_CAP_START + 10)
#define WM_CAP_DRIVER_DISCONNECT (WM_CAP_START + 11)
#define WM_CAP_DRIVER_GET_NAMEA (WM_CAP_START + 12)
#define WM_CAP_DRIVER_GET_VERSIONA (WM_CAP_START + 13)
#define WM_CAP_DRIVER_GET_NAMEW (WM_CAP_UNICODE_START + 12)
#define WM_CAP_DRIVER_GET_VERSIONW (WM_CAP_UNICODE_START + 13)
#define WM_CAP_DRIVER_GET_NAME __MINGW_NAME_AW(WM_CAP_DRIVER_GET_NAME)
#define WM_CAP_DRIVER_GET_VERSION __MINGW_NAME_AW(WM_CAP_DRIVER_GET_VERSION)
#define WM_CAP_DRIVER_GET_CAPS (WM_CAP_START + 14)
#define WM_CAP_FILE_SET_CAPTURE_FILEA (WM_CAP_START + 20)
#define WM_CAP_FILE_GET_CAPTURE_FILEA (WM_CAP_START + 21)
#define WM_CAP_FILE_SAVEASA (WM_CAP_START + 23)
#define WM_CAP_FILE_SAVEDIBA (WM_CAP_START + 25)
#define WM_CAP_FILE_SET_CAPTURE_FILEW (WM_CAP_UNICODE_START + 20)
#define WM_CAP_FILE_GET_CAPTURE_FILEW (WM_CAP_UNICODE_START + 21)
#define WM_CAP_FILE_SAVEASW (WM_CAP_UNICODE_START + 23)
#define WM_CAP_FILE_SAVEDIBW (WM_CAP_UNICODE_START + 25)
#define WM_CAP_FILE_SET_CAPTURE_FILE __MINGW_NAME_AW(WM_CAP_FILE_SET_CAPTURE_FILE)
#define WM_CAP_FILE_GET_CAPTURE_FILE __MINGW_NAME_AW(WM_CAP_FILE_GET_CAPTURE_FILE)
#define WM_CAP_FILE_SAVEAS __MINGW_NAME_AW(WM_CAP_FILE_SAVEAS)
#define WM_CAP_FILE_SAVEDIB __MINGW_NAME_AW(WM_CAP_FILE_SAVEDIB)
#define WM_CAP_FILE_ALLOCATE (WM_CAP_START + 22)
#define WM_CAP_FILE_SET_INFOCHUNK (WM_CAP_START + 24)
#define WM_CAP_EDIT_COPY (WM_CAP_START + 30)
#define WM_CAP_SET_AUDIOFORMAT (WM_CAP_START + 35)
#define WM_CAP_GET_AUDIOFORMAT (WM_CAP_START + 36)
#define WM_CAP_DLG_VIDEOFORMAT (WM_CAP_START + 41)
#define WM_CAP_DLG_VIDEOSOURCE (WM_CAP_START + 42)
#define WM_CAP_DLG_VIDEODISPLAY (WM_CAP_START + 43)
#define WM_CAP_GET_VIDEOFORMAT (WM_CAP_START + 44)
#define WM_CAP_SET_VIDEOFORMAT (WM_CAP_START + 45)
#define WM_CAP_DLG_VIDEOCOMPRESSION (WM_CAP_START + 46)
#define WM_CAP_SET_PREVIEW (WM_CAP_START + 50)
#define WM_CAP_SET_OVERLAY (WM_CAP_START + 51)
#define WM_CAP_SET_PREVIEWRATE (WM_CAP_START + 52)
#define WM_CAP_SET_SCALE (WM_CAP_START + 53)
#define WM_CAP_GET_STATUS (WM_CAP_START + 54)
#define WM_CAP_SET_SCROLL (WM_CAP_START + 55)
#define WM_CAP_GRAB_FRAME (WM_CAP_START + 60)
#define WM_CAP_GRAB_FRAME_NOSTOP (WM_CAP_START + 61)
#define WM_CAP_SEQUENCE (WM_CAP_START + 62)
#define WM_CAP_SEQUENCE_NOFILE (WM_CAP_START + 63)
#define WM_CAP_SET_SEQUENCE_SETUP (WM_CAP_START + 64)
#define WM_CAP_GET_SEQUENCE_SETUP (WM_CAP_START + 65)
#define WM_CAP_SET_MCI_DEVICEA (WM_CAP_START + 66)
#define WM_CAP_GET_MCI_DEVICEA (WM_CAP_START + 67)
#define WM_CAP_SET_MCI_DEVICEW (WM_CAP_UNICODE_START + 66)
#define WM_CAP_GET_MCI_DEVICEW (WM_CAP_UNICODE_START + 67)
#define WM_CAP_SET_MCI_DEVICE __MINGW_NAME_AW(WM_CAP_SET_MCI_DEVICE)
#define WM_CAP_GET_MCI_DEVICE __MINGW_NAME_AW(WM_CAP_GET_MCI_DEVICE)
#define WM_CAP_STOP (WM_CAP_START + 68)
#define WM_CAP_ABORT (WM_CAP_START + 69)
#define WM_CAP_SINGLE_FRAME_OPEN (WM_CAP_START + 70)
#define WM_CAP_SINGLE_FRAME_CLOSE (WM_CAP_START + 71)
#define WM_CAP_SINGLE_FRAME (WM_CAP_START + 72)
#define WM_CAP_PAL_OPENA (WM_CAP_START + 80)
#define WM_CAP_PAL_SAVEA (WM_CAP_START + 81)
#define WM_CAP_PAL_OPENW (WM_CAP_UNICODE_START + 80)
#define WM_CAP_PAL_SAVEW (WM_CAP_UNICODE_START + 81)
#define WM_CAP_PAL_OPEN __MINGW_NAME_AW(WM_CAP_PAL_OPEN)
#define WM_CAP_PAL_SAVE __MINGW_NAME_AW(WM_CAP_PAL_SAVE)
#define WM_CAP_PAL_PASTE (WM_CAP_START + 82)
#define WM_CAP_PAL_AUTOCREATE (WM_CAP_START + 83)
#define WM_CAP_PAL_MANUALCREATE (WM_CAP_START + 84)
#define WM_CAP_SET_CALLBACK_CAPCONTROL (WM_CAP_START + 85)
#define WM_CAP_UNICODE_END WM_CAP_PAL_SAVEW
#define WM_CAP_END WM_CAP_UNICODE_END
#define capSetCallbackOnError(hwnd, fpProc) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_CALLBACK_ERROR, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, (fpProc)))))
#define capSetCallbackOnStatus(hwnd, fpProc) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_CALLBACK_STATUS, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, (fpProc)))))
#define capSetCallbackOnYield(hwnd, fpProc) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_CALLBACK_YIELD, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, (fpProc)))))
#define capSetCallbackOnFrame(hwnd, fpProc) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_CALLBACK_FRAME, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, (fpProc)))))
#define capSetCallbackOnVideoStream(hwnd, fpProc) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_CALLBACK_VIDEOSTREAM, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, (fpProc)))))
#define capSetCallbackOnWaveStream(hwnd, fpProc) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_CALLBACK_WAVESTREAM, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, (fpProc)))))
#define capSetCallbackOnCapControl(hwnd, fpProc) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_CALLBACK_CAPCONTROL, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, (fpProc)))))
#define capSetUserData(hwnd, lUser) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_USER_DATA, cast(WPARAM, 0), cast(LPARAM, lUser)))
#define capGetUserData(hwnd) AVICapSM(hwnd, WM_CAP_GET_USER_DATA, cast(WPARAM, 0), cast(LPARAM, 0))
#define capDriverConnect(hwnd, i) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_DRIVER_CONNECT, cast(WPARAM, (i)), cast(LPARAM, 0)))
#define capDriverDisconnect(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_DRIVER_DISCONNECT, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capDriverGetName(hwnd, szName, wSize) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_DRIVER_GET_NAME, cast(WPARAM, (wSize)), cast(LPARAM, cast(LPVOID, cast(LPTSTR, (szName))))))
#define capDriverGetVersion(hwnd, szVer, wSize) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_DRIVER_GET_VERSION, cast(WPARAM, (wSize)), cast(LPARAM, cast(LPVOID, cast(LPTSTR, (szVer))))))
#define capDriverGetCaps(hwnd, s, wSize) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_DRIVER_GET_CAPS, cast(WPARAM, (wSize)), cast(LPARAM, cast(LPVOID, cast(LPCAPDRIVERCAPS, (s))))))
#define capFileSetCaptureFile(hwnd, szName) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_FILE_SET_CAPTURE_FILE, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, cast(LPTSTR, (szName))))))
#define capFileGetCaptureFile(hwnd, szName, wSize) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_FILE_GET_CAPTURE_FILE, cast(WPARAM, (wSize)), cast(LPARAM, cast(LPVOID, cast(LPTSTR, (szName))))))
#define capFileAlloc(hwnd, dwSize) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_FILE_ALLOCATE, cast(WPARAM, 0), cast(LPARAM, cast(DWORD, (dwSize)))))
#define capFileSaveAs(hwnd, szName) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_FILE_SAVEAS, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, cast(LPTSTR, (szName))))))
#define capFileSetInfoChunk(hwnd, lpInfoChunk) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_FILE_SET_INFOCHUNK, cast(WPARAM, 0), cast(LPARAM, cast(LPCAPINFOCHUNK, (lpInfoChunk)))))
#define capFileSaveDIB(hwnd, szName) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_FILE_SAVEDIB, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, cast(LPTSTR, (szName))))))
#define capEditCopy(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_EDIT_COPY, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capSetAudioFormat(hwnd, s, wSize) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_AUDIOFORMAT, cast(WPARAM, (wSize)), cast(LPARAM, cast(LPVOID, cast(LPWAVEFORMATEX, (s))))))
#define capGetAudioFormat(hwnd, s, wSize) cast(DWORD, AVICapSM(hwnd, WM_CAP_GET_AUDIOFORMAT, cast(WPARAM, (wSize)), cast(LPARAM, cast(LPVOID, cast(LPWAVEFORMATEX, (s))))))
#define capGetAudioFormatSize(hwnd) cast(DWORD, AVICapSM(hwnd, WM_CAP_GET_AUDIOFORMAT, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capDlgVideoFormat(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_DLG_VIDEOFORMAT, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capDlgVideoSource(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_DLG_VIDEOSOURCE, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capDlgVideoDisplay(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_DLG_VIDEODISPLAY, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capDlgVideoCompression(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_DLG_VIDEOCOMPRESSION, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capGetVideoFormat(hwnd, s, wSize) cast(DWORD, AVICapSM(hwnd, WM_CAP_GET_VIDEOFORMAT, cast(WPARAM, (wSize)), cast(LPARAM, cast(LPVOID, (s)))))
#define capGetVideoFormatSize(hwnd) cast(DWORD, AVICapSM(hwnd, WM_CAP_GET_VIDEOFORMAT, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capSetVideoFormat(hwnd, s, wSize) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_VIDEOFORMAT, cast(WPARAM, (wSize)), cast(LPARAM, cast(LPVOID, (s)))))
#define capPreview(hwnd, f) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_PREVIEW, cast(WPARAM, cast(WINBOOL, (f))), cast(LPARAM, 0)))
#define capPreviewRate(hwnd, wMS) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_PREVIEWRATE, cast(WPARAM, (wMS)), cast(LPARAM, 0)))
#define capOverlay(hwnd, f) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_OVERLAY, cast(WPARAM, cast(WINBOOL, (f))), cast(LPARAM, 0)))
#define capPreviewScale(hwnd, f) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_SCALE, cast(WPARAM, cast(WINBOOL, f)), cast(LPARAM, 0)))
#define capGetStatus(hwnd, s, wSize) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_GET_STATUS, cast(WPARAM, (wSize)), cast(LPARAM, cast(LPVOID, cast(LPCAPSTATUS, (s))))))
#define capSetScrollPos(hwnd, lpP) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_SCROLL, cast(WPARAM, 0), cast(LPARAM, cast(LPPOINT, (lpP)))))
#define capGrabFrame(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_GRAB_FRAME, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capGrabFrameNoStop(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_GRAB_FRAME_NOSTOP, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capCaptureSequence(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SEQUENCE, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capCaptureSequenceNoFile(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SEQUENCE_NOFILE, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capCaptureStop(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_STOP, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capCaptureAbort(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_ABORT, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capCaptureSingleFrameOpen(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SINGLE_FRAME_OPEN, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capCaptureSingleFrameClose(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SINGLE_FRAME_CLOSE, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capCaptureSingleFrame(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SINGLE_FRAME, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capCaptureGetSetup(hwnd, s, wSize) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_GET_SEQUENCE_SETUP, cast(WPARAM, (wSize)), cast(LPARAM, cast(LPVOID, cast(LPCAPTUREPARMS, (s))))))
#define capCaptureSetSetup(hwnd, s, wSize) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_SEQUENCE_SETUP, cast(WPARAM, (wSize)), cast(LPARAM, cast(LPVOID, cast(LPCAPTUREPARMS, (s))))))
#define capSetMCIDeviceName(hwnd, szName) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_SET_MCI_DEVICE, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, cast(LPTSTR, (szName))))))
#define capGetMCIDeviceName(hwnd, szName, wSize) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_GET_MCI_DEVICE, cast(WPARAM, (wSize)), cast(LPARAM, cast(LPVOID, cast(LPTSTR, (szName))))))
#define capPaletteOpen(hwnd, szName) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_PAL_OPEN, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, cast(LPTSTR, (szName))))))
#define capPaletteSave(hwnd, szName) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_PAL_SAVE, cast(WPARAM, 0), cast(LPARAM, cast(LPVOID, cast(LPTSTR, (szName))))))
#define capPalettePaste(hwnd) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_PAL_PASTE, cast(WPARAM, 0), cast(LPARAM, 0)))
#define capPaletteAuto(hwnd, iFrames, iColors) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_PAL_AUTOCREATE, cast(WPARAM, (iFrames)), cast(LPARAM, cast(DWORD, (iColors)))))
#define capPaletteManual(hwnd, fGrab, iColors) cast(WINBOOL, AVICapSM(hwnd, WM_CAP_PAL_MANUALCREATE, cast(WPARAM, (fGrab)), cast(LPARAM, cast(DWORD, (iColors)))))

type tagCapDriverCaps field = 8
	wDeviceIndex as UINT
	fHasOverlay as WINBOOL
	fHasDlgVideoSource as WINBOOL
	fHasDlgVideoFormat as WINBOOL
	fHasDlgVideoDisplay as WINBOOL
	fCaptureInitialized as WINBOOL
	fDriverSuppliesPalettes as WINBOOL
	hVideoIn as HANDLE
	hVideoOut as HANDLE
	hVideoExtIn as HANDLE
	hVideoExtOut as HANDLE
end type

type CAPDRIVERCAPS as tagCapDriverCaps
type PCAPDRIVERCAPS as tagCapDriverCaps ptr
type LPCAPDRIVERCAPS as tagCapDriverCaps ptr

type tagCapStatus field = 8
	uiImageWidth as UINT
	uiImageHeight as UINT
	fLiveWindow as WINBOOL
	fOverlayWindow as WINBOOL
	fScale as WINBOOL
	ptScroll as POINT_
	fUsingDefaultPalette as WINBOOL
	fAudioHardware as WINBOOL
	fCapFileExists as WINBOOL
	dwCurrentVideoFrame as DWORD
	dwCurrentVideoFramesDropped as DWORD
	dwCurrentWaveSamples as DWORD
	dwCurrentTimeElapsedMS as DWORD
	hPalCurrent as HPALETTE
	fCapturingNow as WINBOOL
	dwReturn as DWORD
	wNumVideoAllocated as UINT
	wNumAudioAllocated as UINT
end type

type CAPSTATUS as tagCapStatus
type PCAPSTATUS as tagCapStatus ptr
type LPCAPSTATUS as tagCapStatus ptr

type tagCaptureParms field = 8
	dwRequestMicroSecPerFrame as DWORD
	fMakeUserHitOKToCapture as WINBOOL
	wPercentDropForError as UINT
	fYield as WINBOOL
	dwIndexSize as DWORD
	wChunkGranularity as UINT
	fUsingDOSMemory as WINBOOL
	wNumVideoRequested as UINT
	fCaptureAudio as WINBOOL
	wNumAudioRequested as UINT
	vKeyAbort as UINT
	fAbortLeftMouse as WINBOOL
	fAbortRightMouse as WINBOOL
	fLimitEnabled as WINBOOL
	wTimeLimit as UINT
	fMCIControl as WINBOOL
	fStepMCIDevice as WINBOOL
	dwMCIStartTime as DWORD
	dwMCIStopTime as DWORD
	fStepCaptureAt2x as WINBOOL
	wStepCaptureAverageFrames as UINT
	dwAudioBufferSize as DWORD
	fDisableWriteCache as WINBOOL
	AVStreamMaster as UINT
end type

type CAPTUREPARMS as tagCaptureParms
type PCAPTUREPARMS as tagCaptureParms ptr
type LPCAPTUREPARMS as tagCaptureParms ptr

#define AVSTREAMMASTER_AUDIO 0
#define AVSTREAMMASTER_NONE 1

type tagCapInfoChunk field = 8
	fccInfoID as FOURCC
	lpData as LPVOID
	cbData as LONG_
end type

type CAPINFOCHUNK as tagCapInfoChunk
type PCAPINFOCHUNK as tagCapInfoChunk ptr
type LPCAPINFOCHUNK as tagCapInfoChunk ptr
type CAPYIELDCALLBACK as function(byval hWnd as HWND) as LRESULT
type CAPSTATUSCALLBACKW as function(byval hWnd as HWND, byval nID as long, byval lpsz as LPCWSTR) as LRESULT
type CAPERRORCALLBACKW as function(byval hWnd as HWND, byval nID as long, byval lpsz as LPCWSTR) as LRESULT
type CAPSTATUSCALLBACKA as function(byval hWnd as HWND, byval nID as long, byval lpsz as LPCSTR) as LRESULT
type CAPERRORCALLBACKA as function(byval hWnd as HWND, byval nID as long, byval lpsz as LPCSTR) as LRESULT

#define CAPSTATUSCALLBACK __MINGW_NAME_AW(CAPSTATUSCALLBACK)
#define CAPERRORCALLBACK __MINGW_NAME_AW(CAPERRORCALLBACK)

type CAPVIDEOCALLBACK as function(byval hWnd as HWND, byval lpVHdr as LPVIDEOHDR) as LRESULT
type CAPWAVECALLBACK as function(byval hWnd as HWND, byval lpWHdr as LPWAVEHDR) as LRESULT
type CAPCONTROLCALLBACK as function(byval hWnd as HWND, byval nState as long) as LRESULT

#define CONTROLCALLBACK_PREROLL 1
#define CONTROLCALLBACK_CAPTURING 2

declare function capCreateCaptureWindowA(byval lpszWindowName as LPCSTR, byval dwStyle as DWORD, byval x as long, byval y as long, byval nWidth as long, byval nHeight as long, byval hwndParent as HWND, byval nID as long) as HWND
declare function capGetDriverDescriptionA(byval wDriverIndex as UINT, byval lpszName as LPSTR, byval cbName as long, byval lpszVer as LPSTR, byval cbVer as long) as WINBOOL
declare function capCreateCaptureWindowW(byval lpszWindowName as LPCWSTR, byval dwStyle as DWORD, byval x as long, byval y as long, byval nWidth as long, byval nHeight as long, byval hwndParent as HWND, byval nID as long) as HWND
declare function capGetDriverDescriptionW(byval wDriverIndex as UINT, byval lpszName as LPWSTR, byval cbName as long, byval lpszVer as LPWSTR, byval cbVer as long) as WINBOOL

#define capCreateCaptureWindow __MINGW_NAME_AW(capCreateCaptureWindow)
#define capGetDriverDescription __MINGW_NAME_AW(capGetDriverDescription)
#define infotypeDIGITIZATION_TIME mmioFOURCC(asc("I"), asc("D"), asc("I"), asc("T"))
#define infotypeSMPTE_TIME mmioFOURCC(asc("I"), asc("S"), asc("M"), asc("P"))
#define IDS_CAP_BEGIN 300
#define IDS_CAP_END 301
#define IDS_CAP_INFO 401
#define IDS_CAP_OUTOFMEM 402
#define IDS_CAP_FILEEXISTS 403
#define IDS_CAP_ERRORPALOPEN 404
#define IDS_CAP_ERRORPALSAVE 405
#define IDS_CAP_ERRORDIBSAVE 406
#define IDS_CAP_DEFAVIEXT 407
#define IDS_CAP_DEFPALEXT 408
#define IDS_CAP_CANTOPEN 409
#define IDS_CAP_SEQ_MSGSTART 410
#define IDS_CAP_SEQ_MSGSTOP 411
#define IDS_CAP_VIDEDITERR 412
#define IDS_CAP_READONLYFILE 413
#define IDS_CAP_WRITEERROR 414
#define IDS_CAP_NODISKSPACE 415
#define IDS_CAP_SETFILESIZE 416
#define IDS_CAP_SAVEASPERCENT 417
#define IDS_CAP_DRIVER_ERROR 418
#define IDS_CAP_WAVE_OPEN_ERROR 419
#define IDS_CAP_WAVE_ALLOC_ERROR 420
#define IDS_CAP_WAVE_PREPARE_ERROR 421
#define IDS_CAP_WAVE_ADD_ERROR 422
#define IDS_CAP_WAVE_SIZE_ERROR 423
#define IDS_CAP_VIDEO_OPEN_ERROR 424
#define IDS_CAP_VIDEO_ALLOC_ERROR 425
#define IDS_CAP_VIDEO_PREPARE_ERROR 426
#define IDS_CAP_VIDEO_ADD_ERROR 427
#define IDS_CAP_VIDEO_SIZE_ERROR 428
#define IDS_CAP_FILE_OPEN_ERROR 429
#define IDS_CAP_FILE_WRITE_ERROR 430
#define IDS_CAP_RECORDING_ERROR 431
#define IDS_CAP_RECORDING_ERROR2 432
#define IDS_CAP_AVI_INIT_ERROR 433
#define IDS_CAP_NO_FRAME_CAP_ERROR 434
#define IDS_CAP_NO_PALETTE_WARN 435
#define IDS_CAP_MCI_CONTROL_ERROR 436
#define IDS_CAP_MCI_CANT_STEP_ERROR 437
#define IDS_CAP_NO_AUDIO_CAP_ERROR 438
#define IDS_CAP_AVI_DRAWDIB_ERROR 439
#define IDS_CAP_COMPRESSOR_ERROR 440
#define IDS_CAP_AUDIO_DROP_ERROR 441
#define IDS_CAP_AUDIO_DROP_COMPERROR 442
#define IDS_CAP_STAT_LIVE_MODE 500
#define IDS_CAP_STAT_OVERLAY_MODE 501
#define IDS_CAP_STAT_CAP_INIT 502
#define IDS_CAP_STAT_CAP_FINI 503
#define IDS_CAP_STAT_PALETTE_BUILD 504
#define IDS_CAP_STAT_OPTPAL_BUILD 505
#define IDS_CAP_STAT_I_FRAMES 506
#define IDS_CAP_STAT_L_FRAMES 507
#define IDS_CAP_STAT_CAP_L_FRAMES 508
#define IDS_CAP_STAT_CAP_AUDIO 509
#define IDS_CAP_STAT_VIDEOCURRENT 510
#define IDS_CAP_STAT_VIDEOAUDIO 511
#define IDS_CAP_STAT_VIDEOONLY 512
#define IDS_CAP_STAT_FRAMESDROPPED 513

declare function GetOpenFileNamePreviewA(byval lpofn as LPOPENFILENAMEA) as WINBOOL
declare function GetSaveFileNamePreviewA(byval lpofn as LPOPENFILENAMEA) as WINBOOL
declare function GetOpenFileNamePreviewW(byval lpofn as LPOPENFILENAMEW) as WINBOOL
declare function GetSaveFileNamePreviewW(byval lpofn as LPOPENFILENAMEW) as WINBOOL

#define GetOpenFileNamePreview __MINGW_NAME_AW(GetOpenFileNamePreview)
#define GetSaveFileNamePreview __MINGW_NAME_AW(GetSaveFileNamePreview)

end extern
