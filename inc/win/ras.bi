'' FreeBASIC binding for mingw-w64-v4.0.1
''
'' based on the C header files:
''   This Software is provided under the Zope Public License (ZPL) Version 2.1.
''
''   Copyright (c) 2009, 2010 by the mingw-w64 project
''
''   See the AUTHORS file for the list of contributors to the mingw-w64 project.
''
''   This license has been certified as open source. It has also been designated
''   as GPL compatible by the Free Software Foundation (FSF).
''
''   Redistribution and use in source and binary forms, with or without
''   modification, are permitted provided that the following conditions are met:
''
''     1. Redistributions in source code must retain the accompanying copyright
''        notice, this list of conditions, and the following disclaimer.
''     2. Redistributions in binary form must reproduce the accompanying
''        copyright notice, this list of conditions, and the following disclaimer
''        in the documentation and/or other materials provided with the
''        distribution.
''     3. Names of the copyright holders must not be used to endorse or promote
''        products derived from this software without prior written permission
''        from the copyright holders.
''     4. The right to distribute this software or to use it for any purpose does
''        not give you the right to use Servicemarks (sm) or Trademarks (tm) of
''        the copyright holders.  Use of them is covered by separate agreement
''        with the copyright holders.
''     5. If any files are modified, you must cause the modified files to carry
''        prominent notices stating that you changed the files and the date of
''        any change.
''
''   Disclaimer
''
''   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY EXPRESSED
''   OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
''   OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
''   EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY DIRECT, INDIRECT,
''   INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
''   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
''   OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
''   LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
''   NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
''   EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
''
'' translated to FreeBASIC by:
''   Copyright © 2015 FreeBASIC development team

#pragma once

#inclib "rasapi32"

#include once "winapifamily.bi"
#include once "_mingw_unicode.bi"
#include once "inaddr.bi"
#include once "in6addr.bi"
#include once "naptypes.bi"

extern "Windows"

#define _RAS_H_
type RASIPV4ADDR as IN_ADDR
type RASIPV6ADDR as IN6_ADDR
const RAS_MaxDeviceType = 16
const RAS_MaxPhoneNumber = 128
const RAS_MaxIpAddress = 15
const RAS_MaxIpxAddress = 21
const RAS_MaxEntryName = 256
const RAS_MaxDeviceName = 128
#define RAS_MaxCallbackNumber RAS_MaxPhoneNumber
const RAS_MaxAreaCode = 10
const RAS_MaxPadType = 32
const RAS_MaxX25Address = 200
const RAS_MaxFacilities = 200
const RAS_MaxUserData = 200
const RAS_MaxReplyMessage = 1024
const RAS_MaxDnsSuffix = 256

type HRASCONN__ field = 4
	unused as long
end type

type HRASCONN as HRASCONN__ ptr
type LPHRASCONN as HRASCONN ptr
const RASCF_AllUsers = &h00000001
const RASCF_GlobalCreds = &h00000002
#define RASCONNW tagRASCONNW

type tagRASCONNW field = 4
	dwSize as DWORD
	hrasconn as HRASCONN
	szEntryName as wstring * 256 + 1
	szDeviceType as wstring * 16 + 1
	szDeviceName as wstring * 128 + 1
	szPhonebook as wstring * 260
	dwSubEntry as DWORD
	guidEntry as GUID
	dwFlags as DWORD
	luid as LUID
end type

#define RASCONNA tagRASCONNA

type tagRASCONNA field = 4
	dwSize as DWORD
	hrasconn as HRASCONN
	szEntryName as zstring * 256 + 1
	szDeviceType as zstring * 16 + 1
	szDeviceName as zstring * 128 + 1
	szPhonebook as zstring * 260
	dwSubEntry as DWORD
	guidEntry as GUID
	dwFlags as DWORD
	luid as LUID
end type

#ifdef UNICODE
	#define RASCONN RASCONNW
#else
	#define RASCONN RASCONNA
#endif

#define LPRASCONNW RASCONNW ptr
#define LPRASCONNA RASCONNA ptr
#define LPRASCONN RASCONN ptr
const RASCS_PAUSED = &h1000
const RASCS_DONE = &h2000
type RASCONNSTATE as tagRASCONNSTATE

type tagRASCONNSTATE as long
enum
	RASCS_OpenPort = 0
	RASCS_PortOpened
	RASCS_ConnectDevice
	RASCS_DeviceConnected
	RASCS_AllDevicesConnected
	RASCS_Authenticate
	RASCS_AuthNotify
	RASCS_AuthRetry
	RASCS_AuthCallback
	RASCS_AuthChangePassword
	RASCS_AuthProject
	RASCS_AuthLinkSpeed
	RASCS_AuthAck
	RASCS_ReAuthenticate
	RASCS_Authenticated
	RASCS_PrepareForCallback
	RASCS_WaitForModemReset
	RASCS_WaitForCallback
	RASCS_Projected
	RASCS_StartAuthentication
	RASCS_CallbackComplete
	RASCS_LogonNetwork
	RASCS_SubEntryConnected
	RASCS_SubEntryDisconnected
	RASCS_Interactive = &h1000
	RASCS_RetryAuthentication
	RASCS_CallbackSetByCaller
	RASCS_PasswordExpired
	RASCS_InvokeEapUI
	RASCS_Connected = &h2000
	RASCS_Disconnected
end enum

#define LPRASCONNSTATE RASCONNSTATE ptr
#define RASCONNSTATUSW tagRASCONNSTATUSW

type tagRASCONNSTATUSW field = 4
	dwSize as DWORD
	rasconnstate as tagRASCONNSTATE
	dwError as DWORD
	szDeviceType as wstring * 16 + 1
	szDeviceName as wstring * 128 + 1
	szPhoneNumber as wstring * 128 + 1
end type

#define RASCONNSTATUSA tagRASCONNSTATUSA

type tagRASCONNSTATUSA field = 4
	dwSize as DWORD
	rasconnstate as tagRASCONNSTATE
	dwError as DWORD
	szDeviceType as zstring * 16 + 1
	szDeviceName as zstring * 128 + 1
	szPhoneNumber as zstring * 128 + 1
end type

#ifdef UNICODE
	#define RASCONNSTATUS RASCONNSTATUSW
#else
	#define RASCONNSTATUS RASCONNSTATUSA
#endif

#define LPRASCONNSTATUSW RASCONNSTATUSW ptr
#define LPRASCONNSTATUSA RASCONNSTATUSA ptr
#define LPRASCONNSTATUS RASCONNSTATUS ptr
#define RASDIALPARAMSW tagRASDIALPARAMSW

type tagRASDIALPARAMSW field = 4
	dwSize as DWORD
	szEntryName as wstring * 256 + 1
	szPhoneNumber as wstring * 128 + 1
	szCallbackNumber as wstring * 128 + 1
	szUserName as wstring * 256 + 1
	szPassword as wstring * 256 + 1
	szDomain as wstring * 15 + 1
	dwSubEntry as DWORD
	dwCallbackId as ULONG_PTR

	#if _WIN32_WINNT = &h0602
		dwIfIndex as DWORD
	#endif
end type

#define RASDIALPARAMSA tagRASDIALPARAMSA

type tagRASDIALPARAMSA field = 4
	dwSize as DWORD
	szEntryName as zstring * 256 + 1
	szPhoneNumber as zstring * 128 + 1
	szCallbackNumber as zstring * 128 + 1
	szUserName as zstring * 256 + 1
	szPassword as zstring * 256 + 1
	szDomain as zstring * 15 + 1
	dwSubEntry as DWORD
	dwCallbackId as ULONG_PTR

	#if _WIN32_WINNT = &h0602
		dwIfIndex as DWORD
	#endif
end type

#ifdef UNICODE
	#define RASDIALPARAMS RASDIALPARAMSW
#else
	#define RASDIALPARAMS RASDIALPARAMSA
#endif

type LPRASDIALPARAMSW as RASDIALPARAMSW ptr
type LPRASDIALPARAMSA as RASDIALPARAMSA ptr
type LPRASDIALPARAMS as RASDIALPARAMS ptr
type RASEAPINFO as tagRASEAPINFO

type tagRASEAPINFO field = 4
	dwSizeofEapInfo as DWORD
	pbEapInfo as UBYTE ptr
end type

#define RASDIALEXTENSIONS tagRASDIALEXTENSIONS

type tagRASDIALEXTENSIONS field = 4
	dwSize as DWORD
	dwfOptions as DWORD
	hwndParent as HWND
	reserved as ULONG_PTR
	reserved1 as ULONG_PTR
	RasEapInfo as tagRASEAPINFO
end type

type LPRASDIALEXTENSIONS as RASDIALEXTENSIONS ptr
const RDEOPT_UsePrefixSuffix = &h00000001
const RDEOPT_PausedStates = &h00000002
const RDEOPT_IgnoreModemSpeaker = &h00000004
const RDEOPT_SetModemSpeaker = &h00000008
const RDEOPT_IgnoreSoftwareCompression = &h00000010
const RDEOPT_SetSoftwareCompression = &h00000020
const RDEOPT_DisableConnectedUI = &h00000040
const RDEOPT_DisableReconnectUI = &h00000080
const RDEOPT_DisableReconnect = &h00000100
const RDEOPT_NoUser = &h00000200
const RDEOPT_PauseOnScript = &h00000400
const RDEOPT_Router = &h00000800
const RDEOPT_CustomDial = &h00001000
const RDEOPT_UseCustomScripting = &h00002000
const REN_User = &h00000000
const REN_AllUsers = &h00000001
#define RASENTRYNAMEW tagRASENTRYNAMEW

type tagRASENTRYNAMEW field = 4
	dwSize as DWORD
	szEntryName as wstring * 256 + 1
	dwFlags as DWORD
	szPhonebookPath as wstring * 260 + 1
end type

#define RASENTRYNAMEA tagRASENTRYNAMEA

type tagRASENTRYNAMEA field = 4
	dwSize as DWORD
	szEntryName as zstring * 256 + 1
	dwFlags as DWORD
	szPhonebookPath as zstring * 260 + 1
end type

#ifdef UNICODE
	#define RASENTRYNAME RASENTRYNAMEW
#else
	#define RASENTRYNAME RASENTRYNAMEA
#endif

#define LPRASENTRYNAMEW RASENTRYNAMEW ptr
#define LPRASENTRYNAMEA RASENTRYNAMEA ptr
#define LPRASENTRYNAME RASENTRYNAME ptr
#define RASPROJECTION tagRASPROJECTION

type tagRASPROJECTION as long
enum
	RASP_Amb = &h10000
	RASP_PppNbf = &h803F
	RASP_PppIpx = &h802B
	RASP_PppIp = &h8021
	RASP_PppCcp = &h80FD
	RASP_PppLcp = &hC021
	RASP_Slip = &h20000
end enum

#define LPRASPROJECTION RASPROJECTION ptr
#define RASAMBW tagRASAMBW

type tagRASAMBW field = 4
	dwSize as DWORD
	dwError as DWORD
	szNetBiosError as wstring * 16 + 1
	bLana as UBYTE
end type

#define RASAMBA tagRASAMBA

type tagRASAMBA field = 4
	dwSize as DWORD
	dwError as DWORD
	szNetBiosError as zstring * 16 + 1
	bLana as UBYTE
end type

#ifdef UNICODE
	#define RASAMB RASAMBW
#else
	#define RASAMB RASAMBA
#endif

#define LPRASAMBW RASAMBW ptr
#define LPRASAMBA RASAMBA ptr
#define LPRASAMB RASAMB ptr
#define RASPPPNBFW tagRASPPPNBFW

type tagRASPPPNBFW field = 4
	dwSize as DWORD
	dwError as DWORD
	dwNetBiosError as DWORD
	szNetBiosError as wstring * 16 + 1
	szWorkstationName as wstring * 16 + 1
	bLana as UBYTE
end type

#define RASPPPNBFA tagRASPPPNBFA

type tagRASPPPNBFA field = 4
	dwSize as DWORD
	dwError as DWORD
	dwNetBiosError as DWORD
	szNetBiosError as zstring * 16 + 1
	szWorkstationName as zstring * 16 + 1
	bLana as UBYTE
end type

#ifdef UNICODE
	#define RASPPPNBF RASPPPNBFW
#else
	#define RASPPPNBF RASPPPNBFA
#endif

#define LPRASPPPNBFW RASPPPNBFW ptr
#define LPRASPPPNBFA RASPPPNBFA ptr
#define LPRASPPPNBF RASPPPNBF ptr
#define RASPPPIPXW tagRASIPXW

type tagRASIPXW field = 4
	dwSize as DWORD
	dwError as DWORD
	szIpxAddress as wstring * 21 + 1
end type

#define RASPPPIPXA tagRASPPPIPXA

type tagRASPPPIPXA field = 4
	dwSize as DWORD
	dwError as DWORD
	szIpxAddress as zstring * 21 + 1
end type

#ifdef UNICODE
	#define RASPPPIPX RASPPPIPXW
#else
	#define RASPPPIPX RASPPPIPXA
#endif

#define LPRASPPPIPXW RASPPPIPXW ptr
#define LPRASPPPIPXA RASPPPIPXA ptr
#define LPRASPPPIPX RASPPPIPX ptr
const RASIPO_VJ = &h00000001
#define RASPPPIPW tagRASPPPIPW

type tagRASPPPIPW field = 4
	dwSize as DWORD
	dwError as DWORD
	szIpAddress as wstring * 15 + 1
	szServerIpAddress as wstring * 15 + 1
	dwOptions as DWORD
	dwServerOptions as DWORD
end type

#define RASPPPIPA tagRASPPPIPA

type tagRASPPPIPA field = 4
	dwSize as DWORD
	dwError as DWORD
	szIpAddress as zstring * 15 + 1
	szServerIpAddress as zstring * 15 + 1
	dwOptions as DWORD
	dwServerOptions as DWORD
end type

#ifdef UNICODE
	#define RASPPPIP RASPPPIPW
#else
	#define RASPPPIP RASPPPIPA
#endif

#define LPRASPPPIPW RASPPPIPW ptr
#define LPRASPPPIPA RASPPPIPA ptr
#define LPRASPPPIP RASPPPIP ptr
const RASLCPAP_PAP = &hC023
const RASLCPAP_SPAP = &hC027
const RASLCPAP_CHAP = &hC223
const RASLCPAP_EAP = &hC227
const RASLCPAD_CHAP_MD5 = &h05
const RASLCPAD_CHAP_MS = &h80
const RASLCPAD_CHAP_MSV2 = &h81
const RASLCPO_PFC = &h00000001
const RASLCPO_ACFC = &h00000002
const RASLCPO_SSHF = &h00000004
const RASLCPO_DES_56 = &h00000008
const RASLCPO_3_DES = &h00000010
#define RASPPPLCPW tagRASPPPLCPW

type tagRASPPPLCPW field = 4
	dwSize as DWORD
	fBundled as WINBOOL
	dwError as DWORD
	dwAuthenticationProtocol as DWORD
	dwAuthenticationData as DWORD
	dwEapTypeId as DWORD
	dwServerAuthenticationProtocol as DWORD
	dwServerAuthenticationData as DWORD
	dwServerEapTypeId as DWORD
	fMultilink as WINBOOL
	dwTerminateReason as DWORD
	dwServerTerminateReason as DWORD
	szReplyMessage as wstring * 1024
	dwOptions as DWORD
	dwServerOptions as DWORD
end type

#define RASPPPLCPA tagRASPPPLCPA

type tagRASPPPLCPA field = 4
	dwSize as DWORD
	fBundled as WINBOOL
	dwError as DWORD
	dwAuthenticationProtocol as DWORD
	dwAuthenticationData as DWORD
	dwEapTypeId as DWORD
	dwServerAuthenticationProtocol as DWORD
	dwServerAuthenticationData as DWORD
	dwServerEapTypeId as DWORD
	fMultilink as WINBOOL
	dwTerminateReason as DWORD
	dwServerTerminateReason as DWORD
	szReplyMessage as zstring * 1024
	dwOptions as DWORD
	dwServerOptions as DWORD
end type

#ifdef UNICODE
	#define RASPPPLCP RASPPPLCPW
#else
	#define RASPPPLCP RASPPPLCPA
#endif

#define LPRASPPPLCPW RASPPPLCPW ptr
#define LPRASPPPLCPA RASPPPLCPA ptr
#define LPRASPPPLCP RASPPPLCP ptr
#define RASSLIPW tagRASSLIPW

type tagRASSLIPW field = 4
	dwSize as DWORD
	dwError as DWORD
	szIpAddress as wstring * 15 + 1
end type

#define RASSLIPA tagRASSLIPA

type tagRASSLIPA field = 4
	dwSize as DWORD
	dwError as DWORD
	szIpAddress as zstring * 15 + 1
end type

#ifdef UNICODE
	#define RASSLIP RASSLIPW
#else
	#define RASSLIP RASSLIPA
#endif

#define LPRASSLIPW RASSLIPW ptr
#define LPRASSLIPA RASSLIPA ptr
#define LPRASSLIP RASSLIP ptr
const RASCCPO_Compression = &h00000001
const RASCCPO_HistoryLess = &h00000002
const RASCCPO_Encryption56bit = &h00000010
const RASCCPO_Encryption40bit = &h00000020
const RASCCPO_Encryption128bit = &h00000040
#define RASPPPCCP tagRASPPPCCP

type tagRASPPPCCP field = 4
	dwSize as DWORD
	dwError as DWORD
	dwCompressionAlgorithm as DWORD
	dwOptions as DWORD
	dwServerCompressionAlgorithm as DWORD
	dwServerOptions as DWORD
end type

#define LPRASPPPCCP RASPPPCCP ptr
#define RASDIALEVENT "RasDialEvent"
const WM_RASDIALEVENT = &hCCCD

type RASDIALFUNC as sub(byval as UINT, byval as tagRASCONNSTATE, byval as DWORD)
type RASDIALFUNC1 as sub(byval as HRASCONN, byval as UINT, byval as tagRASCONNSTATE, byval as DWORD, byval as DWORD)
type RASDIALFUNC2 as function(byval as ULONG_PTR, byval as DWORD, byval as HRASCONN, byval as UINT, byval as tagRASCONNSTATE, byval as DWORD, byval as DWORD) as DWORD
#define RASDEVINFOW tagRASDEVINFOW

type tagRASDEVINFOW field = 4
	dwSize as DWORD
	szDeviceType as wstring * 16 + 1
	szDeviceName as wstring * 128 + 1
end type

#define RASDEVINFOA tagRASDEVINFOA

type tagRASDEVINFOA field = 4
	dwSize as DWORD
	szDeviceType as zstring * 16 + 1
	szDeviceName as zstring * 128 + 1
end type

#ifdef UNICODE
	#define RASDEVINFO RASDEVINFOW
#else
	#define RASDEVINFO RASDEVINFOA
#endif

#define LPRASDEVINFOW RASDEVINFOW ptr
#define LPRASDEVINFOA RASDEVINFOA ptr
#define LPRASDEVINFO RASDEVINFO ptr

type RASCTRYINFO field = 4
	dwSize as DWORD
	dwCountryID as DWORD
	dwNextCountryID as DWORD
	dwCountryCode as DWORD
	dwCountryNameOffset as DWORD
end type

#define RASCTRYINFOW RASCTRYINFO
#define RASCTRYINFOA RASCTRYINFO
#define LPRASCTRYINFOW RASCTRYINFOW ptr
#define LPRASCTRYINFOA RASCTRYINFOW ptr
#define LPRASCTRYINFO RASCTRYINFO ptr

type RASIPADDR field = 4
	a as UBYTE
	b as UBYTE
	c as UBYTE
	d as UBYTE
end type

const ET_None = 0
const ET_Require = 1
const ET_RequireMax = 2
const ET_Optional = 3
const VS_Default = 0
const VS_PptpOnly = 1
const VS_PptpFirst = 2
const VS_L2tpOnly = 3
const VS_L2tpFirst = 4
#define RASENTRYA tagRASENTRYA

type tagRASENTRYA field = 4
	dwSize as DWORD
	dwfOptions as DWORD
	dwCountryID as DWORD
	dwCountryCode as DWORD
	szAreaCode as zstring * 10 + 1
	szLocalPhoneNumber as zstring * 128 + 1
	dwAlternateOffset as DWORD
	ipaddr as RASIPADDR
	ipaddrDns as RASIPADDR
	ipaddrDnsAlt as RASIPADDR
	ipaddrWins as RASIPADDR
	ipaddrWinsAlt as RASIPADDR
	dwFrameSize as DWORD
	dwfNetProtocols as DWORD
	dwFramingProtocol as DWORD
	szScript as zstring * 260
	szAutodialDll as zstring * 260
	szAutodialFunc as zstring * 260
	szDeviceType as zstring * 16 + 1
	szDeviceName as zstring * 128 + 1
	szX25PadType as zstring * 32 + 1
	szX25Address as zstring * 200 + 1
	szX25Facilities as zstring * 200 + 1
	szX25UserData as zstring * 200 + 1
	dwChannels as DWORD
	dwReserved1 as DWORD
	dwReserved2 as DWORD
	dwSubEntries as DWORD
	dwDialMode as DWORD
	dwDialExtraPercent as DWORD
	dwDialExtraSampleSeconds as DWORD
	dwHangUpExtraPercent as DWORD
	dwHangUpExtraSampleSeconds as DWORD
	dwIdleDisconnectSeconds as DWORD
	dwType as DWORD
	dwEncryptionType as DWORD
	dwCustomAuthKey as DWORD
	guidId as GUID
	szCustomDialDll as zstring * 260
	dwVpnStrategy as DWORD
	dwfOptions2 as DWORD
	dwfOptions3 as DWORD
	szDnsSuffix as zstring * 256
	dwTcpWindowSize as DWORD
	szPrerequisitePbk as zstring * 260
	szPrerequisiteEntry as zstring * 256 + 1
	dwRedialCount as DWORD
	dwRedialPause as DWORD
end type

#define RASENTRYW tagRASENTRYW

type tagRASENTRYW field = 4
	dwSize as DWORD
	dwfOptions as DWORD
	dwCountryID as DWORD
	dwCountryCode as DWORD
	szAreaCode as wstring * 10 + 1
	szLocalPhoneNumber as wstring * 128 + 1
	dwAlternateOffset as DWORD
	ipaddr as RASIPADDR
	ipaddrDns as RASIPADDR
	ipaddrDnsAlt as RASIPADDR
	ipaddrWins as RASIPADDR
	ipaddrWinsAlt as RASIPADDR
	dwFrameSize as DWORD
	dwfNetProtocols as DWORD
	dwFramingProtocol as DWORD
	szScript as wstring * 260
	szAutodialDll as wstring * 260
	szAutodialFunc as wstring * 260
	szDeviceType as wstring * 16 + 1
	szDeviceName as wstring * 128 + 1
	szX25PadType as wstring * 32 + 1
	szX25Address as wstring * 200 + 1
	szX25Facilities as wstring * 200 + 1
	szX25UserData as wstring * 200 + 1
	dwChannels as DWORD
	dwReserved1 as DWORD
	dwReserved2 as DWORD
	dwSubEntries as DWORD
	dwDialMode as DWORD
	dwDialExtraPercent as DWORD
	dwDialExtraSampleSeconds as DWORD
	dwHangUpExtraPercent as DWORD
	dwHangUpExtraSampleSeconds as DWORD
	dwIdleDisconnectSeconds as DWORD
	dwType as DWORD
	dwEncryptionType as DWORD
	dwCustomAuthKey as DWORD
	guidId as GUID
	szCustomDialDll as wstring * 260
	dwVpnStrategy as DWORD
	dwfOptions2 as DWORD
	dwfOptions3 as DWORD
	szDnsSuffix as wstring * 256
	dwTcpWindowSize as DWORD
	szPrerequisitePbk as wstring * 260
	szPrerequisiteEntry as wstring * 256 + 1
	dwRedialCount as DWORD
	dwRedialPause as DWORD
end type

#ifdef UNICODE
	#define RASENTRY RASENTRYW
#else
	#define RASENTRY RASENTRYA
#endif

#define LPRASENTRYW RASENTRYW ptr
#define LPRASENTRYA RASENTRYA ptr
#define LPRASENTRY RASENTRY ptr
const RASEO_UseCountryAndAreaCodes = &h00000001
const RASEO_SpecificIpAddr = &h00000002
const RASEO_SpecificNameServers = &h00000004
const RASEO_IpHeaderCompression = &h00000008
const RASEO_RemoteDefaultGateway = &h00000010
const RASEO_DisableLcpExtensions = &h00000020
const RASEO_TerminalBeforeDial = &h00000040
const RASEO_TerminalAfterDial = &h00000080
const RASEO_ModemLights = &h00000100
const RASEO_SwCompression = &h00000200
const RASEO_RequireEncryptedPw = &h00000400
const RASEO_RequireMsEncryptedPw = &h00000800
const RASEO_RequireDataEncryption = &h00001000
const RASEO_NetworkLogon = &h00002000
const RASEO_UseLogonCredentials = &h00004000
const RASEO_PromoteAlternates = &h00008000
const RASEO_SecureLocalFiles = &h00010000
const RASEO_RequireEAP = &h00020000
const RASEO_RequirePAP = &h00040000
const RASEO_RequireSPAP = &h00080000
const RASEO_Custom = &h00100000
const RASEO_PreviewPhoneNumber = &h00200000
const RASEO_SharedPhoneNumbers = &h00800000
const RASEO_PreviewUserPw = &h01000000
const RASEO_PreviewDomain = &h02000000
const RASEO_ShowDialingProgress = &h04000000
const RASEO_RequireCHAP = &h08000000
const RASEO_RequireMsCHAP = &h10000000
const RASEO_RequireMsCHAP2 = &h20000000
const RASEO_RequireW95MSCHAP = &h40000000
const RASEO_CustomScript = &h80000000
const RASEO2_SecureFileAndPrint = &h00000001
const RASEO2_SecureClientForMSNet = &h00000002
const RASEO2_DontNegotiateMultilink = &h00000004
const RASEO2_DontUseRasCredentials = &h00000008
const RASEO2_UsePreSharedKey = &h00000010
const RASEO2_Internet = &h00000020
const RASEO2_DisableNbtOverIP = &h00000040
const RASEO2_UseGlobalDeviceSettings = &h00000080
const RASEO2_ReconnectIfDropped = &h00000100
const RASEO2_SharePhoneNumbers = &h00000200
const RASNP_NetBEUI = &h00000001
const RASNP_Ipx = &h00000002
const RASNP_Ip = &h00000004
const RASFP_Ppp = &h00000001
const RASFP_Slip = &h00000002
const RASFP_Ras = &h00000004
#define RASDT_Modem __TEXT("modem")
#define RASDT_Isdn __TEXT("isdn")
#define RASDT_X25 __TEXT("x25")
#define RASDT_Vpn __TEXT("vpn")
#define RASDT_Pad __TEXT("pad")
#define RASDT_Generic __TEXT("GENERIC")
#define RASDT_Serial __TEXT("SERIAL")
#define RASDT_FrameRelay __TEXT("FRAMERELAY")
#define RASDT_Atm __TEXT("ATM")
#define RASDT_Sonet __TEXT("SONET")
#define RASDT_SW56 __TEXT("SW56")
#define RASDT_Irda __TEXT("IRDA")
#define RASDT_Parallel __TEXT("PARALLEL")
#define RASDT_PPPoE __TEXT("PPPoE")
const RASET_Phone = 1
const RASET_Vpn = 2
const RASET_Direct = 3
const RASET_Internet = 4
const RASET_Broadband = 5
type ORASADFUNC as function(byval as HWND, byval as LPSTR, byval as DWORD, byval as LPDWORD) as WINBOOL
const RASCN_Connection = &h00000001
const RASCN_Disconnection = &h00000002
const RASCN_BandwidthAdded = &h00000004
const RASCN_BandwidthRemoved = &h00000008
const RASEDM_DialAll = 1
const RASEDM_DialAsNeeded = 2
const RASIDS_Disabled = &hffffffff
const RASIDS_UseGlobalValue = 0
#define RASADPARAMS tagRASADPARAMS

type tagRASADPARAMS field = 4
	dwSize as DWORD
	hwndOwner as HWND
	dwFlags as DWORD
	xDlg as LONG
	yDlg as LONG
end type

#define LPRASADPARAMS RASADPARAMS ptr
const RASADFLG_PositionDlg = &h00000001
type RASADFUNCA as function(byval as LPSTR, byval as LPSTR, byval as tagRASADPARAMS ptr, byval as LPDWORD) as WINBOOL
type RASADFUNCW as function(byval as LPWSTR, byval as LPWSTR, byval as tagRASADPARAMS ptr, byval as LPDWORD) as WINBOOL

#ifdef UNICODE
	#define RASADFUNC RASADFUNCW
#else
	#define RASADFUNC RASADFUNCA
#endif

#define RASSUBENTRYA tagRASSUBENTRYA

type tagRASSUBENTRYA field = 4
	dwSize as DWORD
	dwfFlags as DWORD
	szDeviceType as zstring * 16 + 1
	szDeviceName as zstring * 128 + 1
	szLocalPhoneNumber as zstring * 128 + 1
	dwAlternateOffset as DWORD
end type

#define RASSUBENTRYW tagRASSUBENTRYW

type tagRASSUBENTRYW field = 4
	dwSize as DWORD
	dwfFlags as DWORD
	szDeviceType as wstring * 16 + 1
	szDeviceName as wstring * 128 + 1
	szLocalPhoneNumber as wstring * 128 + 1
	dwAlternateOffset as DWORD
end type

#ifdef UNICODE
	#define RASSUBENTRY RASSUBENTRYW
#else
	#define RASSUBENTRY RASSUBENTRYA
#endif

#define LPRASSUBENTRYW RASSUBENTRYW ptr
#define LPRASSUBENTRYA RASSUBENTRYA ptr
#define LPRASSUBENTRY RASSUBENTRY ptr
#define RASCREDENTIALSA tagRASCREDENTIALSA

type tagRASCREDENTIALSA field = 4
	dwSize as DWORD
	dwMask as DWORD
	szUserName as zstring * 256 + 1
	szPassword as zstring * 256 + 1
	szDomain as zstring * 15 + 1
end type

#define RASCREDENTIALSW tagRASCREDENTIALSW

type tagRASCREDENTIALSW field = 4
	dwSize as DWORD
	dwMask as DWORD
	szUserName as wstring * 256 + 1
	szPassword as wstring * 256 + 1
	szDomain as wstring * 15 + 1
end type

#ifdef UNICODE
	#define RASCREDENTIALS RASCREDENTIALSW
#else
	#define RASCREDENTIALS RASCREDENTIALSA
#endif

#define LPRASCREDENTIALSW RASCREDENTIALSW ptr
#define LPRASCREDENTIALSA RASCREDENTIALSA ptr
#define LPRASCREDENTIALS RASCREDENTIALS ptr
const RASCM_UserName = &h00000001
const RASCM_Password = &h00000002
const RASCM_Domain = &h00000004
const RASCM_DefaultCreds = &h00000008
const RASCM_PreSharedKey = &h00000010
const RASCM_ServerPreSharedKey = &h00000020
const RASCM_DDMPreSharedKey = &h00000040
#define RASAUTODIALENTRYA tagRASAUTODIALENTRYA

type tagRASAUTODIALENTRYA field = 4
	dwSize as DWORD
	dwFlags as DWORD
	dwDialingLocation as DWORD
	szEntry as zstring * 256 + 1
end type

#define RASAUTODIALENTRYW tagRASAUTODIALENTRYW

type tagRASAUTODIALENTRYW field = 4
	dwSize as DWORD
	dwFlags as DWORD
	dwDialingLocation as DWORD
	szEntry as wstring * 256 + 1
end type

#ifdef UNICODE
	#define RASAUTODIALENTRY RASAUTODIALENTRYW
#else
	#define RASAUTODIALENTRY RASAUTODIALENTRYA
#endif

#define LPRASAUTODIALENTRYW RASAUTODIALENTRYW ptr
#define LPRASAUTODIALENTRYA RASAUTODIALENTRYA ptr
#define LPRASAUTODIALENTRY RASAUTODIALENTRY ptr
const RASADP_DisableConnectionQuery = 0
const RASADP_LoginSessionDisable = 1
const RASADP_SavedAddressesLimit = 2
const RASADP_FailedConnectionTimeout = 3
const RASADP_ConnectionQueryTimeout = 4
const RASEAPF_NonInteractive = &h00000002
const RASEAPF_Logon = &h00000004
const RASEAPF_Preview = &h00000008
#define RASEAPUSERIDENTITYA tagRASEAPUSERIDENTITYA

type tagRASEAPUSERIDENTITYA field = 4
	szUserName as zstring * 256 + 1
	dwSizeofEapInfo as DWORD
	pbEapInfo(0 to 0) as UBYTE
end type

#define RASEAPUSERIDENTITYW tagRASEAPUSERIDENTITYW

type tagRASEAPUSERIDENTITYW field = 4
	szUserName as wstring * 256 + 1
	dwSizeofEapInfo as DWORD
	pbEapInfo(0 to 0) as UBYTE
end type

#ifdef UNICODE
	#define RASEAPUSERIDENTITY RASEAPUSERIDENTITYW
#else
	#define RASEAPUSERIDENTITY RASEAPUSERIDENTITYA
#endif

#define LPRASEAPUSERIDENTITYW RASEAPUSERIDENTITYW ptr
#define LPRASEAPUSERIDENTITYA RASEAPUSERIDENTITYA ptr
type PFNRASGETBUFFER as function(byval ppBuffer as PBYTE ptr, byval pdwSize as PDWORD) as DWORD
type PFNRASFREEBUFFER as function(byval pBufer as PBYTE) as DWORD
type PFNRASSENDBUFFER as function(byval hPort as HANDLE, byval pBuffer as PBYTE, byval dwSize as DWORD) as DWORD
type PFNRASRECEIVEBUFFER as function(byval hPort as HANDLE, byval pBuffer as PBYTE, byval pdwSize as PDWORD, byval dwTimeOut as DWORD, byval hEvent as HANDLE) as DWORD
type PFNRASRETRIEVEBUFFER as function(byval hPort as HANDLE, byval pBuffer as PBYTE, byval pdwSize as PDWORD) as DWORD

#ifdef UNICODE
	type RasCustomScriptExecuteFn as function(byval hPort as HANDLE, byval lpszPhonebook as LPCWSTR, byval lpszEntryName as LPCWSTR, byval pfnRasGetBuffer as PFNRASGETBUFFER, byval pfnRasFreeBuffer as PFNRASFREEBUFFER, byval pfnRasSendBuffer as PFNRASSENDBUFFER, byval pfnRasReceiveBuffer as PFNRASRECEIVEBUFFER, byval pfnRasRetrieveBuffer as PFNRASRETRIEVEBUFFER, byval hWnd as HWND, byval pRasDialParams as tagRASDIALPARAMSW ptr, byval pvReserved as PVOID) as DWORD
#else
	type RasCustomScriptExecuteFn as function(byval hPort as HANDLE, byval lpszPhonebook as LPCWSTR, byval lpszEntryName as LPCWSTR, byval pfnRasGetBuffer as PFNRASGETBUFFER, byval pfnRasFreeBuffer as PFNRASFREEBUFFER, byval pfnRasSendBuffer as PFNRASSENDBUFFER, byval pfnRasReceiveBuffer as PFNRASRECEIVEBUFFER, byval pfnRasRetrieveBuffer as PFNRASRETRIEVEBUFFER, byval hWnd as HWND, byval pRasDialParams as tagRASDIALPARAMSA ptr, byval pvReserved as PVOID) as DWORD
#endif

#define RASCOMMSETTINGS tagRASCOMMSETTINGS

type tagRASCOMMSETTINGS field = 4
	dwSize as DWORD
	bParity as UBYTE
	bStop as UBYTE
	bByteSize as UBYTE
	bAlign as UBYTE
end type

type PFNRASSETCOMMSETTINGS as function(byval hPort as HANDLE, byval pRasCommSettings as tagRASCOMMSETTINGS ptr, byval pvReserved as PVOID) as DWORD
#define RASCUSTOMSCRIPTEXTENSIONS tagRASCUSTOMSCRIPTEXTENSIONS

type tagRASCUSTOMSCRIPTEXTENSIONS field = 4
	dwSize as DWORD
	pfnRasSetCommSettings as PFNRASSETCOMMSETTINGS
end type

declare function RasDialA(byval as tagRASDIALEXTENSIONS ptr, byval as LPCSTR, byval as tagRASDIALPARAMSA ptr, byval as DWORD, byval as LPVOID, byval as HRASCONN ptr) as DWORD
declare function RasDialW(byval as tagRASDIALEXTENSIONS ptr, byval as LPCWSTR, byval as tagRASDIALPARAMSW ptr, byval as DWORD, byval as LPVOID, byval as HRASCONN ptr) as DWORD
declare function RasEnumConnectionsA(byval as tagRASCONNA ptr, byval as LPDWORD, byval as LPDWORD) as DWORD
declare function RasEnumConnectionsW(byval as tagRASCONNW ptr, byval as LPDWORD, byval as LPDWORD) as DWORD
declare function RasEnumEntriesA(byval as LPCSTR, byval as LPCSTR, byval as tagRASENTRYNAMEA ptr, byval as LPDWORD, byval as LPDWORD) as DWORD
declare function RasEnumEntriesW(byval as LPCWSTR, byval as LPCWSTR, byval as tagRASENTRYNAMEW ptr, byval as LPDWORD, byval as LPDWORD) as DWORD
declare function RasGetConnectStatusA(byval as HRASCONN, byval as tagRASCONNSTATUSA ptr) as DWORD
declare function RasGetConnectStatusW(byval as HRASCONN, byval as tagRASCONNSTATUSW ptr) as DWORD
declare function RasGetErrorStringA(byval as UINT, byval as LPSTR, byval as DWORD) as DWORD
declare function RasGetErrorStringW(byval as UINT, byval as LPWSTR, byval as DWORD) as DWORD
declare function RasHangUpA(byval as HRASCONN) as DWORD
declare function RasHangUpW(byval as HRASCONN) as DWORD
declare function RasGetProjectionInfoA(byval as HRASCONN, byval as tagRASPROJECTION, byval as LPVOID, byval as LPDWORD) as DWORD
declare function RasGetProjectionInfoW(byval as HRASCONN, byval as tagRASPROJECTION, byval as LPVOID, byval as LPDWORD) as DWORD
declare function RasCreatePhonebookEntryA(byval as HWND, byval as LPCSTR) as DWORD
declare function RasCreatePhonebookEntryW(byval as HWND, byval as LPCWSTR) as DWORD
declare function RasEditPhonebookEntryA(byval as HWND, byval as LPCSTR, byval as LPCSTR) as DWORD
declare function RasEditPhonebookEntryW(byval as HWND, byval as LPCWSTR, byval as LPCWSTR) as DWORD
declare function RasSetEntryDialParamsA(byval as LPCSTR, byval as tagRASDIALPARAMSA ptr, byval as WINBOOL) as DWORD
declare function RasSetEntryDialParamsW(byval as LPCWSTR, byval as tagRASDIALPARAMSW ptr, byval as WINBOOL) as DWORD
declare function RasGetEntryDialParamsA(byval as LPCSTR, byval as tagRASDIALPARAMSA ptr, byval as LPBOOL) as DWORD
declare function RasGetEntryDialParamsW(byval as LPCWSTR, byval as tagRASDIALPARAMSW ptr, byval as LPBOOL) as DWORD
declare function RasEnumDevicesA(byval as tagRASDEVINFOA ptr, byval as LPDWORD, byval as LPDWORD) as DWORD
declare function RasEnumDevicesW(byval as tagRASDEVINFOW ptr, byval as LPDWORD, byval as LPDWORD) as DWORD
declare function RasGetCountryInfoA(byval as RASCTRYINFO ptr, byval as LPDWORD) as DWORD
declare function RasGetCountryInfoW(byval as RASCTRYINFO ptr, byval as LPDWORD) as DWORD
declare function RasGetEntryPropertiesA(byval as LPCSTR, byval as LPCSTR, byval as tagRASENTRYA ptr, byval as LPDWORD, byval as LPBYTE, byval as LPDWORD) as DWORD
declare function RasGetEntryPropertiesW(byval as LPCWSTR, byval as LPCWSTR, byval as tagRASENTRYW ptr, byval as LPDWORD, byval as LPBYTE, byval as LPDWORD) as DWORD
declare function RasSetEntryPropertiesA(byval as LPCSTR, byval as LPCSTR, byval as tagRASENTRYA ptr, byval as DWORD, byval as LPBYTE, byval as DWORD) as DWORD
declare function RasSetEntryPropertiesW(byval as LPCWSTR, byval as LPCWSTR, byval as tagRASENTRYW ptr, byval as DWORD, byval as LPBYTE, byval as DWORD) as DWORD
declare function RasRenameEntryA(byval as LPCSTR, byval as LPCSTR, byval as LPCSTR) as DWORD
declare function RasRenameEntryW(byval as LPCWSTR, byval as LPCWSTR, byval as LPCWSTR) as DWORD
declare function RasDeleteEntryA(byval as LPCSTR, byval as LPCSTR) as DWORD
declare function RasDeleteEntryW(byval as LPCWSTR, byval as LPCWSTR) as DWORD
declare function RasValidateEntryNameA(byval as LPCSTR, byval as LPCSTR) as DWORD
declare function RasValidateEntryNameW(byval as LPCWSTR, byval as LPCWSTR) as DWORD
declare function RasConnectionNotificationA(byval as HRASCONN, byval as HANDLE, byval as DWORD) as DWORD
declare function RasConnectionNotificationW(byval as HRASCONN, byval as HANDLE, byval as DWORD) as DWORD
declare function RasGetSubEntryHandleA(byval as HRASCONN, byval as DWORD, byval as HRASCONN ptr) as DWORD
declare function RasGetSubEntryHandleW(byval as HRASCONN, byval as DWORD, byval as HRASCONN ptr) as DWORD
declare function RasGetCredentialsA(byval as LPCSTR, byval as LPCSTR, byval as tagRASCREDENTIALSA ptr) as DWORD
declare function RasGetCredentialsW(byval as LPCWSTR, byval as LPCWSTR, byval as tagRASCREDENTIALSW ptr) as DWORD
declare function RasSetCredentialsA(byval as LPCSTR, byval as LPCSTR, byval as tagRASCREDENTIALSA ptr, byval as WINBOOL) as DWORD
declare function RasSetCredentialsW(byval as LPCWSTR, byval as LPCWSTR, byval as tagRASCREDENTIALSW ptr, byval as WINBOOL) as DWORD
declare function RasGetSubEntryPropertiesA(byval as LPCSTR, byval as LPCSTR, byval as DWORD, byval as tagRASSUBENTRYA ptr, byval as LPDWORD, byval as LPBYTE, byval as LPDWORD) as DWORD
declare function RasGetSubEntryPropertiesW(byval as LPCWSTR, byval as LPCWSTR, byval as DWORD, byval as tagRASSUBENTRYW ptr, byval as LPDWORD, byval as LPBYTE, byval as LPDWORD) as DWORD
declare function RasSetSubEntryPropertiesA(byval as LPCSTR, byval as LPCSTR, byval as DWORD, byval as tagRASSUBENTRYA ptr, byval as DWORD, byval as LPBYTE, byval as DWORD) as DWORD
declare function RasSetSubEntryPropertiesW(byval as LPCWSTR, byval as LPCWSTR, byval as DWORD, byval as tagRASSUBENTRYW ptr, byval as DWORD, byval as LPBYTE, byval as DWORD) as DWORD
declare function RasGetAutodialAddressA(byval as LPCSTR, byval as LPDWORD, byval as tagRASAUTODIALENTRYA ptr, byval as LPDWORD, byval as LPDWORD) as DWORD
declare function RasGetAutodialAddressW(byval as LPCWSTR, byval as LPDWORD, byval as tagRASAUTODIALENTRYW ptr, byval as LPDWORD, byval as LPDWORD) as DWORD
declare function RasSetAutodialAddressA(byval as LPCSTR, byval as DWORD, byval as tagRASAUTODIALENTRYA ptr, byval as DWORD, byval as DWORD) as DWORD
declare function RasSetAutodialAddressW(byval as LPCWSTR, byval as DWORD, byval as tagRASAUTODIALENTRYW ptr, byval as DWORD, byval as DWORD) as DWORD
declare function RasEnumAutodialAddressesA(byval as LPSTR ptr, byval as LPDWORD, byval as LPDWORD) as DWORD
declare function RasEnumAutodialAddressesW(byval as LPWSTR ptr, byval as LPDWORD, byval as LPDWORD) as DWORD
declare function RasGetAutodialEnableA(byval as DWORD, byval as LPBOOL) as DWORD
declare function RasGetAutodialEnableW(byval as DWORD, byval as LPBOOL) as DWORD
declare function RasSetAutodialEnableA(byval as DWORD, byval as WINBOOL) as DWORD
declare function RasSetAutodialEnableW(byval as DWORD, byval as WINBOOL) as DWORD
declare function RasGetAutodialParamA(byval as DWORD, byval as LPVOID, byval as LPDWORD) as DWORD
declare function RasGetAutodialParamW(byval as DWORD, byval as LPVOID, byval as LPDWORD) as DWORD
declare function RasSetAutodialParamA(byval as DWORD, byval as LPVOID, byval as DWORD) as DWORD
declare function RasSetAutodialParamW(byval as DWORD, byval as LPVOID, byval as DWORD) as DWORD

type _RAS_STATS field = 4
	dwSize as DWORD
	dwBytesXmited as DWORD
	dwBytesRcved as DWORD
	dwFramesXmited as DWORD
	dwFramesRcved as DWORD
	dwCrcErr as DWORD
	dwTimeoutErr as DWORD
	dwAlignmentErr as DWORD
	dwHardwareOverrunErr as DWORD
	dwFramingErr as DWORD
	dwBufferOverrunErr as DWORD
	dwCompressionRatioIn as DWORD
	dwCompressionRatioOut as DWORD
	dwBps as DWORD
	dwConnectDuration as DWORD
end type

type RAS_STATS as _RAS_STATS
type PRAS_STATS as _RAS_STATS ptr
type RasCustomHangUpFn as function(byval hRasConn as HRASCONN) as DWORD

#ifdef UNICODE
	type RasCustomDialFn as function(byval hInstDll as HINSTANCE, byval lpRasDialExtensions as tagRASDIALEXTENSIONS ptr, byval lpszPhonebook as LPCWSTR, byval lpRasDialParams as tagRASDIALPARAMSW ptr, byval dwNotifierType as DWORD, byval lpvNotifier as LPVOID, byval lphRasConn as HRASCONN ptr, byval dwFlags as DWORD) as DWORD
#else
	type RasCustomDialFn as function(byval hInstDll as HINSTANCE, byval lpRasDialExtensions as tagRASDIALEXTENSIONS ptr, byval lpszPhonebook as LPCWSTR, byval lpRasDialParams as tagRASDIALPARAMSA ptr, byval dwNotifierType as DWORD, byval lpvNotifier as LPVOID, byval lphRasConn as HRASCONN ptr, byval dwFlags as DWORD) as DWORD
#endif

type RasCustomDeleteEntryNotifyFn as function(byval lpszPhonebook as LPCWSTR, byval lpszEntry as LPCWSTR, byval dwFlags as DWORD) as DWORD
const RCD_SingleUser = 0
const RCD_AllUsers = &h00000001
const RCD_Eap = &h00000002
const RCD_Logon = &h00000004

declare function RasInvokeEapUI(byval as HRASCONN, byval as DWORD, byval as tagRASDIALEXTENSIONS ptr, byval as HWND) as DWORD
declare function RasGetLinkStatistics(byval hRasConn as HRASCONN, byval dwSubEntry as DWORD, byval lpStatistics as RAS_STATS ptr) as DWORD
declare function RasGetConnectionStatistics(byval hRasConn as HRASCONN, byval lpStatistics as RAS_STATS ptr) as DWORD
declare function RasClearLinkStatistics(byval hRasConn as HRASCONN, byval dwSubEntry as DWORD) as DWORD
declare function RasClearConnectionStatistics(byval hRasConn as HRASCONN) as DWORD
declare function RasGetEapUserDataA(byval hToken as HANDLE, byval pszPhonebook as LPCSTR, byval pszEntry as LPCSTR, byval pbEapData as UBYTE ptr, byval pdwSizeofEapData as DWORD ptr) as DWORD
declare function RasGetEapUserDataW(byval hToken as HANDLE, byval pszPhonebook as LPCWSTR, byval pszEntry as LPCWSTR, byval pbEapData as UBYTE ptr, byval pdwSizeofEapData as DWORD ptr) as DWORD
declare function RasSetEapUserDataA(byval hToken as HANDLE, byval pszPhonebook as LPCSTR, byval pszEntry as LPCSTR, byval pbEapData as UBYTE ptr, byval dwSizeofEapData as DWORD) as DWORD
declare function RasSetEapUserDataW(byval hToken as HANDLE, byval pszPhonebook as LPCWSTR, byval pszEntry as LPCWSTR, byval pbEapData as UBYTE ptr, byval dwSizeofEapData as DWORD) as DWORD
declare function RasGetCustomAuthDataA(byval pszPhonebook as LPCSTR, byval pszEntry as LPCSTR, byval pbCustomAuthData as UBYTE ptr, byval pdwSizeofCustomAuthData as DWORD ptr) as DWORD
declare function RasGetCustomAuthDataW(byval pszPhonebook as LPCWSTR, byval pszEntry as LPCWSTR, byval pbCustomAuthData as UBYTE ptr, byval pdwSizeofCustomAuthData as DWORD ptr) as DWORD
declare function RasSetCustomAuthDataA(byval pszPhonebook as LPCSTR, byval pszEntry as LPCSTR, byval pbCustomAuthData as UBYTE ptr, byval dwSizeofCustomAuthData as DWORD) as DWORD
declare function RasSetCustomAuthDataW(byval pszPhonebook as LPCWSTR, byval pszEntry as LPCWSTR, byval pbCustomAuthData as UBYTE ptr, byval dwSizeofCustomAuthData as DWORD) as DWORD
declare function RasGetEapUserIdentityW(byval pszPhonebook as LPCWSTR, byval pszEntry as LPCWSTR, byval dwFlags as DWORD, byval hwnd as HWND, byval ppRasEapUserIdentity as tagRASEAPUSERIDENTITYW ptr ptr) as DWORD
declare function RasGetEapUserIdentityA(byval pszPhonebook as LPCSTR, byval pszEntry as LPCSTR, byval dwFlags as DWORD, byval hwnd as HWND, byval ppRasEapUserIdentity as tagRASEAPUSERIDENTITYA ptr ptr) as DWORD
declare sub RasFreeEapUserIdentityW(byval pRasEapUserIdentity as tagRASEAPUSERIDENTITYW ptr)
declare sub RasFreeEapUserIdentityA(byval pRasEapUserIdentity as tagRASEAPUSERIDENTITYA ptr)
declare function RasDeleteSubEntryA(byval pszPhonebook as LPCSTR, byval pszEntry as LPCSTR, byval dwSubentryId as DWORD) as DWORD
declare function RasDeleteSubEntryW(byval pszPhonebook as LPCWSTR, byval pszEntry as LPCWSTR, byval dwSubEntryId as DWORD) as DWORD

#ifdef UNICODE
	#define RasDial RasDialW
	#define RasEnumConnections RasEnumConnectionsW
	#define RasEnumEntries RasEnumEntriesW
	#define RasGetConnectStatus RasGetConnectStatusW
	#define RasGetErrorString RasGetErrorStringW
	#define RasHangUp RasHangUpW
	#define RasGetProjectionInfo RasGetProjectionInfoW
	#define RasCreatePhonebookEntry RasCreatePhonebookEntryW
	#define RasEditPhonebookEntry RasEditPhonebookEntryW
	#define RasSetEntryDialParams RasSetEntryDialParamsW
	#define RasGetEntryDialParams RasGetEntryDialParamsW
	#define RasEnumDevices RasEnumDevicesW
	#define RasGetCountryInfo RasGetCountryInfoW
	#define RasGetEntryProperties RasGetEntryPropertiesW
	#define RasSetEntryProperties RasSetEntryPropertiesW
	#define RasRenameEntry RasRenameEntryW
	#define RasDeleteEntry RasDeleteEntryW
	#define RasValidateEntryName RasValidateEntryNameW
	#define RasGetSubEntryHandle RasGetSubEntryHandleW
	#define RasConnectionNotification RasConnectionNotificationW
	#define RasGetSubEntryProperties RasGetSubEntryPropertiesW
	#define RasSetSubEntryProperties RasSetSubEntryPropertiesW
	#define RasGetCredentials RasGetCredentialsW
	#define RasSetCredentials RasSetCredentialsW
	#define RasGetAutodialAddress RasGetAutodialAddressW
	#define RasSetAutodialAddress RasSetAutodialAddressW
	#define RasEnumAutodialAddresses RasEnumAutodialAddressesW
	#define RasGetAutodialEnable RasGetAutodialEnableW
	#define RasSetAutodialEnable RasSetAutodialEnableW
	#define RasGetAutodialParam RasGetAutodialParamW
	#define RasSetAutodialParam RasSetAutodialParamW
	#define RasGetEapUserData RasGetEapUserDataW
	#define RasSetEapUserData RasSetEapUserDataW
	#define RasGetCustomAuthData RasGetCustomAuthDataW
	#define RasSetCustomAuthData RasSetCustomAuthDataW
	#define RasGetEapUserIdentity RasGetEapUserIdentityW
	#define RasFreeEapUserIdentity RasFreeEapUserIdentityW
	#define RasDeleteSubEntry RasDeleteSubEntryW
#endif

#if defined(UNICODE) and (_WIN32_WINNT = &h0602)
	type _tagRasNapState field = 4
		dwSize as DWORD
		dwFlags as DWORD
		isolationState as IsolationState
		probationTime as ProbationTime
	end type

	type RASNAPSTATE as _tagRasNapState
	type LPRASNAPSTATE as _tagRasNapState ptr

	type _RASPPPIPV6 field = 4
		dwSize as DWORD
		dwError as DWORD
		bLocalInterfaceIdentifier(0 to 7) as UBYTE
		bPeerInterfaceIdentifier(0 to 7) as UBYTE
		bLocalCompressionProtocol(0 to 1) as UBYTE
		bPeerCompressionProtocol(0 to 1) as UBYTE
	end type

	type RASPPPIPV6 as _RASPPPIPV6
	type LPRASPPPIPV6 as _RASPPPIPV6 ptr
	declare function rasgetnapstatus cdecl(byval hRasConn as HRASCONN, byval pNapState as LPRASNAPSTATE) as DWORD

	type RASAPIVERSION as long
	enum
		RASAPIVERSION_500 = 1
		RASAPIVERSION_501 = 2
		RASAPIVERSION_600 = 3
		RASAPIVERSION_601 = 4
	end enum

	type _RASTUNNELENDPOINT field = 4
		dwType as DWORD

		union field = 4
			ipv4 as RASIPV4ADDR
			ipv6 as RASIPV6ADDR
		end union
	end type

	type RASTUNNELENDPOINT as _RASTUNNELENDPOINT
	type PRASTUNNELENDPOINT as _RASTUNNELENDPOINT ptr

	type _RASUPDATECONN field = 4
		version as RASAPIVERSION
		dwSize as DWORD
		dwFlags as DWORD
		dwIfIndex as DWORD
		localEndPoint as RASTUNNELENDPOINT
		remoteEndPoint as RASTUNNELENDPOINT
	end type

	type RASUPDATECONN as _RASUPDATECONN
	type LPRASUPDATECONN as _RASUPDATECONN ptr
#elseif not defined(UNICODE)
	#define RasDial RasDialA
	#define RasEnumConnections RasEnumConnectionsA
	#define RasEnumEntries RasEnumEntriesA
	#define RasGetConnectStatus RasGetConnectStatusA
	#define RasGetErrorString RasGetErrorStringA
	#define RasHangUp RasHangUpA
	#define RasGetProjectionInfo RasGetProjectionInfoA
	#define RasCreatePhonebookEntry RasCreatePhonebookEntryA
	#define RasEditPhonebookEntry RasEditPhonebookEntryA
	#define RasSetEntryDialParams RasSetEntryDialParamsA
	#define RasGetEntryDialParams RasGetEntryDialParamsA
	#define RasEnumDevices RasEnumDevicesA
	#define RasGetCountryInfo RasGetCountryInfoA
	#define RasGetEntryProperties RasGetEntryPropertiesA
	#define RasSetEntryProperties RasSetEntryPropertiesA
	#define RasRenameEntry RasRenameEntryA
	#define RasDeleteEntry RasDeleteEntryA
	#define RasValidateEntryName RasValidateEntryNameA
	#define RasGetSubEntryHandle RasGetSubEntryHandleA
	#define RasConnectionNotification RasConnectionNotificationA
	#define RasGetSubEntryProperties RasGetSubEntryPropertiesA
	#define RasSetSubEntryProperties RasSetSubEntryPropertiesA
	#define RasGetCredentials RasGetCredentialsA
	#define RasSetCredentials RasSetCredentialsA
	#define RasGetAutodialAddress RasGetAutodialAddressA
	#define RasSetAutodialAddress RasSetAutodialAddressA
	#define RasEnumAutodialAddresses RasEnumAutodialAddressesA
	#define RasGetAutodialEnable RasGetAutodialEnableA
	#define RasSetAutodialEnable RasSetAutodialEnableA
	#define RasGetAutodialParam RasGetAutodialParamA
	#define RasSetAutodialParam RasSetAutodialParamA
	#define RasGetEapUserData RasGetEapUserDataA
	#define RasSetEapUserData RasSetEapUserDataA
	#define RasGetCustomAuthData RasGetCustomAuthDataA
	#define RasSetCustomAuthData RasSetCustomAuthDataA
	#define RasGetEapUserIdentity RasGetEapUserIdentityA
	#define RasFreeEapUserIdentity RasFreeEapUserIdentityA
	#define RasDeleteSubEntry RasDeleteSubEntryA
#endif

#if (not defined(UNICODE)) and (_WIN32_WINNT = &h0602)
	type _tagRasNapState field = 4
		dwSize as DWORD
		dwFlags as DWORD
		isolationState as IsolationState
		probationTime as ProbationTime
	end type

	type RASNAPSTATE as _tagRasNapState
	type LPRASNAPSTATE as _tagRasNapState ptr

	type _RASPPPIPV6 field = 4
		dwSize as DWORD
		dwError as DWORD
		bLocalInterfaceIdentifier(0 to 7) as UBYTE
		bPeerInterfaceIdentifier(0 to 7) as UBYTE
		bLocalCompressionProtocol(0 to 1) as UBYTE
		bPeerCompressionProtocol(0 to 1) as UBYTE
	end type

	type RASPPPIPV6 as _RASPPPIPV6
	type LPRASPPPIPV6 as _RASPPPIPV6 ptr
	declare function rasgetnapstatus cdecl(byval hRasConn as HRASCONN, byval pNapState as LPRASNAPSTATE) as DWORD

	type RASAPIVERSION as long
	enum
		RASAPIVERSION_500 = 1
		RASAPIVERSION_501 = 2
		RASAPIVERSION_600 = 3
		RASAPIVERSION_601 = 4
	end enum

	type _RASTUNNELENDPOINT field = 4
		dwType as DWORD

		union field = 4
			ipv4 as RASIPV4ADDR
			ipv6 as RASIPV6ADDR
		end union
	end type

	type RASTUNNELENDPOINT as _RASTUNNELENDPOINT
	type PRASTUNNELENDPOINT as _RASTUNNELENDPOINT ptr

	type _RASUPDATECONN field = 4
		version as RASAPIVERSION
		dwSize as DWORD
		dwFlags as DWORD
		dwIfIndex as DWORD
		localEndPoint as RASTUNNELENDPOINT
		remoteEndPoint as RASTUNNELENDPOINT
	end type

	type RASUPDATECONN as _RASUPDATECONN
	type LPRASUPDATECONN as _RASUPDATECONN ptr
#endif

end extern
