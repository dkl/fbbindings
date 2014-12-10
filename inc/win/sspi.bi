#pragma once

#include once "crt/wchar.bi"
#include once "crt/long.bi"
#include once "_mingw_unicode.bi"
#include once "ntsecapi.bi"

'' The following symbols have been renamed:
''     enum constant Unlock => Unlock_

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

#define __SSPI_H__
#define ISSP_LEVEL 32
#define ISSP_MODE 1
#define KSECDDDECLSPEC __declspec(dllimport)

type SEC_WCHAR as WCHAR
type SEC_CHAR as CHAR
type SECURITY_STATUS as LONG

#define __SECSTATUS_DEFINED__
#define WINAPI __stdcall
#define SEC_TEXT TEXT
#define SEC_FAR
#define __SEC_FAR
#define SEC_ENTRY WINAPI

#ifdef UNICODE
	type SECURITY_PSTR as SEC_WCHAR ptr

	'' TODO: typedef CONST SEC_WCHAR *SECURITY_PCSTR;
#else
	type SECURITY_PSTR as SEC_CHAR ptr

	'' TODO: typedef CONST SEC_CHAR *SECURITY_PCSTR;
#endif

'' TODO: #define SecInvalidateHandle(x) ((PSecHandle) x)->dwLower = ((ULONG_PTR) ((INT_PTR)-1)); ((PSecHandle) x)->dwUpper = ((ULONG_PTR) ((INT_PTR)-1));
'' TODO: #define SecIsValidHandle(x) ((((PSecHandle) x)->dwLower!=((ULONG_PTR) ((INT_PTR) -1))) && (((PSecHandle) x)->dwUpper!=((ULONG_PTR) ((INT_PTR) -1))))

type CredHandle as SecHandle
type PCredHandle as PSecHandle
type CtxtHandle as SecHandle
type PCtxtHandle as PSecHandle

type _SECURITY_INTEGER
	LowPart as culong
	HighPart as clong
end type

type SECURITY_INTEGER as _SECURITY_INTEGER
type PSECURITY_INTEGER as _SECURITY_INTEGER ptr
type TimeStamp as SECURITY_INTEGER
type PTimeStamp as SECURITY_INTEGER ptr

type _SECURITY_STRING
	Length as ushort
	MaximumLength as ushort
	Buffer as ushort ptr
end type

type SECURITY_STRING as _SECURITY_STRING
type PSECURITY_STRING as _SECURITY_STRING ptr

type _SecPkgInfoW
	fCapabilities as culong
	wVersion as ushort
	wRPCID as ushort
	cbMaxToken as culong
	Name as SEC_WCHAR ptr
	Comment as SEC_WCHAR ptr
end type

type SecPkgInfoW as _SecPkgInfoW
type PSecPkgInfoW as _SecPkgInfoW ptr

type _SecPkgInfoA
	fCapabilities as culong
	wVersion as ushort
	wRPCID as ushort
	cbMaxToken as culong
	Name as SEC_CHAR ptr
	Comment as SEC_CHAR ptr
end type

type SecPkgInfoA as _SecPkgInfoA
type PSecPkgInfoA as _SecPkgInfoA ptr

#define SecPkgInfo __MINGW_NAME_AW(SecPkgInfo)
#define PSecPkgInfo __MINGW_NAME_AW(PSecPkgInfo)
#define SECPKG_FLAG_INTEGRITY &h00000001
#define SECPKG_FLAG_PRIVACY &h00000002
#define SECPKG_FLAG_TOKEN_ONLY &h00000004
#define SECPKG_FLAG_DATAGRAM &h00000008
#define SECPKG_FLAG_CONNECTION &h00000010
#define SECPKG_FLAG_MULTI_REQUIRED &h00000020
#define SECPKG_FLAG_CLIENT_ONLY &h00000040
#define SECPKG_FLAG_EXTENDED_ERROR &h00000080
#define SECPKG_FLAG_IMPERSONATION &h00000100
#define SECPKG_FLAG_ACCEPT_WIN32_NAME &h00000200
#define SECPKG_FLAG_STREAM &h00000400
#define SECPKG_FLAG_NEGOTIABLE &h00000800
#define SECPKG_FLAG_GSS_COMPATIBLE &h00001000
#define SECPKG_FLAG_LOGON &h00002000
#define SECPKG_FLAG_ASCII_BUFFERS &h00004000
#define SECPKG_FLAG_FRAGMENT &h00008000
#define SECPKG_FLAG_MUTUAL_AUTH &h00010000
#define SECPKG_FLAG_DELEGATION &h00020000
#define SECPKG_FLAG_READONLY_WITH_CHECKSUM &h00040000
#define SECPKG_ID_NONE &hFFFF

type _SecBuffer
	cbBuffer as culong
	BufferType as culong
	pvBuffer as any ptr
end type

type SecBuffer as _SecBuffer
type PSecBuffer as _SecBuffer ptr

type _SecBufferDesc
	ulVersion as culong
	cBuffers as culong
	pBuffers as PSecBuffer
end type

type SecBufferDesc as _SecBufferDesc
type PSecBufferDesc as _SecBufferDesc ptr

#define SECBUFFER_VERSION 0
#define SECBUFFER_EMPTY 0
#define SECBUFFER_DATA 1
#define SECBUFFER_TOKEN 2
#define SECBUFFER_PKG_PARAMS 3
#define SECBUFFER_MISSING 4
#define SECBUFFER_EXTRA 5
#define SECBUFFER_STREAM_TRAILER 6
#define SECBUFFER_STREAM_HEADER 7
#define SECBUFFER_NEGOTIATION_INFO 8
#define SECBUFFER_PADDING 9
#define SECBUFFER_STREAM 10
#define SECBUFFER_MECHLIST 11
#define SECBUFFER_MECHLIST_SIGNATURE 12
#define SECBUFFER_TARGET 13
#define SECBUFFER_CHANNEL_BINDINGS 14
#define SECBUFFER_ATTRMASK &hF0000000
#define SECBUFFER_READONLY &h80000000
#define SECBUFFER_READONLY_WITH_CHECKSUM &h10000000
#define SECBUFFER_RESERVED &h60000000

type _SEC_NEGOTIATION_INFO
	Size as culong
	NameLength as culong
	Name as SEC_WCHAR ptr
	Reserved as any ptr
end type

type SEC_NEGOTIATION_INFO as _SEC_NEGOTIATION_INFO
type PSEC_NEGOTIATION_INFO as _SEC_NEGOTIATION_INFO ptr

type _SEC_CHANNEL_BINDINGS
	dwInitiatorAddrType as culong
	cbInitiatorLength as culong
	dwInitiatorOffset as culong
	dwAcceptorAddrType as culong
	cbAcceptorLength as culong
	dwAcceptorOffset as culong
	cbApplicationDataLength as culong
	dwApplicationDataOffset as culong
end type

type SEC_CHANNEL_BINDINGS as _SEC_CHANNEL_BINDINGS
type PSEC_CHANNEL_BINDINGS as _SEC_CHANNEL_BINDINGS ptr

#define SECURITY_NATIVE_DREP &h00000010
#define SECURITY_NETWORK_DREP &h00000000
#define SECPKG_CRED_INBOUND &h00000001
#define SECPKG_CRED_OUTBOUND &h00000002
#define SECPKG_CRED_BOTH &h00000003
#define SECPKG_CRED_DEFAULT &h00000004
#define SECPKG_CRED_RESERVED &hF0000000
#define ISC_REQ_DELEGATE &h00000001
#define ISC_REQ_MUTUAL_AUTH &h00000002
#define ISC_REQ_REPLAY_DETECT &h00000004
#define ISC_REQ_SEQUENCE_DETECT &h00000008
#define ISC_REQ_CONFIDENTIALITY &h00000010
#define ISC_REQ_USE_SESSION_KEY &h00000020
#define ISC_REQ_PROMPT_FOR_CREDS &h00000040
#define ISC_REQ_USE_SUPPLIED_CREDS &h00000080
#define ISC_REQ_ALLOCATE_MEMORY &h00000100
#define ISC_REQ_USE_DCE_STYLE &h00000200
#define ISC_REQ_DATAGRAM &h00000400
#define ISC_REQ_CONNECTION &h00000800
#define ISC_REQ_CALL_LEVEL &h00001000
#define ISC_REQ_FRAGMENT_SUPPLIED &h00002000
#define ISC_REQ_EXTENDED_ERROR &h00004000
#define ISC_REQ_STREAM &h00008000
#define ISC_REQ_INTEGRITY &h00010000
#define ISC_REQ_IDENTIFY &h00020000
#define ISC_REQ_NULL_SESSION &h00040000
#define ISC_REQ_MANUAL_CRED_VALIDATION &h00080000
#define ISC_REQ_RESERVED1 &h00100000
#define ISC_REQ_FRAGMENT_TO_FIT &h00200000
#define ISC_RET_DELEGATE &h00000001
#define ISC_RET_MUTUAL_AUTH &h00000002
#define ISC_RET_REPLAY_DETECT &h00000004
#define ISC_RET_SEQUENCE_DETECT &h00000008
#define ISC_RET_CONFIDENTIALITY &h00000010
#define ISC_RET_USE_SESSION_KEY &h00000020
#define ISC_RET_USED_COLLECTED_CREDS &h00000040
#define ISC_RET_USED_SUPPLIED_CREDS &h00000080
#define ISC_RET_ALLOCATED_MEMORY &h00000100
#define ISC_RET_USED_DCE_STYLE &h00000200
#define ISC_RET_DATAGRAM &h00000400
#define ISC_RET_CONNECTION &h00000800
#define ISC_RET_INTERMEDIATE_RETURN &h00001000
#define ISC_RET_CALL_LEVEL &h00002000
#define ISC_RET_EXTENDED_ERROR &h00004000
#define ISC_RET_STREAM &h00008000
#define ISC_RET_INTEGRITY &h00010000
#define ISC_RET_IDENTIFY &h00020000
#define ISC_RET_NULL_SESSION &h00040000
#define ISC_RET_MANUAL_CRED_VALIDATION &h00080000
#define ISC_RET_RESERVED1 &h00100000
#define ISC_RET_FRAGMENT_ONLY &h00200000
#define ASC_REQ_DELEGATE &h00000001
#define ASC_REQ_MUTUAL_AUTH &h00000002
#define ASC_REQ_REPLAY_DETECT &h00000004
#define ASC_REQ_SEQUENCE_DETECT &h00000008
#define ASC_REQ_CONFIDENTIALITY &h00000010
#define ASC_REQ_USE_SESSION_KEY &h00000020
#define ASC_REQ_ALLOCATE_MEMORY &h00000100
#define ASC_REQ_USE_DCE_STYLE &h00000200
#define ASC_REQ_DATAGRAM &h00000400
#define ASC_REQ_CONNECTION &h00000800
#define ASC_REQ_CALL_LEVEL &h00001000
#define ASC_REQ_EXTENDED_ERROR &h00008000
#define ASC_REQ_STREAM &h00010000
#define ASC_REQ_INTEGRITY &h00020000
#define ASC_REQ_LICENSING &h00040000
#define ASC_REQ_IDENTIFY &h00080000
#define ASC_REQ_ALLOW_NULL_SESSION &h00100000
#define ASC_REQ_ALLOW_NON_USER_LOGONS &h00200000
#define ASC_REQ_ALLOW_CONTEXT_REPLAY &h00400000
#define ASC_REQ_FRAGMENT_TO_FIT &h00800000
#define ASC_REQ_FRAGMENT_SUPPLIED &h00002000
#define ASC_REQ_NO_TOKEN &h01000000
#define ASC_RET_DELEGATE &h00000001
#define ASC_RET_MUTUAL_AUTH &h00000002
#define ASC_RET_REPLAY_DETECT &h00000004
#define ASC_RET_SEQUENCE_DETECT &h00000008
#define ASC_RET_CONFIDENTIALITY &h00000010
#define ASC_RET_USE_SESSION_KEY &h00000020
#define ASC_RET_ALLOCATED_MEMORY &h00000100
#define ASC_RET_USED_DCE_STYLE &h00000200
#define ASC_RET_DATAGRAM &h00000400
#define ASC_RET_CONNECTION &h00000800
#define ASC_RET_CALL_LEVEL &h00002000
#define ASC_RET_THIRD_LEG_FAILED &h00004000
#define ASC_RET_EXTENDED_ERROR &h00008000
#define ASC_RET_STREAM &h00010000
#define ASC_RET_INTEGRITY &h00020000
#define ASC_RET_LICENSING &h00040000
#define ASC_RET_IDENTIFY &h00080000
#define ASC_RET_NULL_SESSION &h00100000
#define ASC_RET_ALLOW_NON_USER_LOGONS &h00200000
#define ASC_RET_ALLOW_CONTEXT_REPLAY &h00400000
#define ASC_RET_FRAGMENT_ONLY &h00800000
#define ASC_RET_NO_TOKEN &h01000000
#define SECPKG_CRED_ATTR_NAMES 1
#define SECPKG_CRED_ATTR_SSI_PROVIDER 2

type _SecPkgCredentials_NamesW
	sUserName as SEC_WCHAR ptr
end type

type SecPkgCredentials_NamesW as _SecPkgCredentials_NamesW
type PSecPkgCredentials_NamesW as _SecPkgCredentials_NamesW ptr

type _SecPkgCredentials_NamesA
	sUserName as SEC_CHAR ptr
end type

type SecPkgCredentials_NamesA as _SecPkgCredentials_NamesA
type PSecPkgCredentials_NamesA as _SecPkgCredentials_NamesA ptr

#define SecPkgCredentials_Names __MINGW_NAME_AW(SecPkgCredentials_Names)
#define PSecPkgCredentials_Names __MINGW_NAME_AW(PSecPkgCredentials_Names)

type _SecPkgCredentials_SSIProviderW
	sProviderName as SEC_WCHAR ptr
	ProviderInfoLength as culong
	ProviderInfo as zstring ptr
end type

type SecPkgCredentials_SSIProviderW as _SecPkgCredentials_SSIProviderW
type PSecPkgCredentials_SSIProviderW as _SecPkgCredentials_SSIProviderW ptr

type _SecPkgCredentials_SSIProviderA
	sProviderName as SEC_CHAR ptr
	ProviderInfoLength as culong
	ProviderInfo as zstring ptr
end type

type SecPkgCredentials_SSIProviderA as _SecPkgCredentials_SSIProviderA
type PSecPkgCredentials_SSIProviderA as _SecPkgCredentials_SSIProviderA ptr

#define SecPkgCredentials_SSIProvider __MINGW_NAME_AW(SecPkgCredentials_SSIProvider)
#define PSecPkgCredentials_SSIProvider __MINGW_NAME_AW(PSecPkgCredentials_SSIProvider)
#define SECPKG_ATTR_SIZES 0
#define SECPKG_ATTR_NAMES 1
#define SECPKG_ATTR_LIFESPAN 2
#define SECPKG_ATTR_DCE_INFO 3
#define SECPKG_ATTR_STREAM_SIZES 4
#define SECPKG_ATTR_KEY_INFO 5
#define SECPKG_ATTR_AUTHORITY 6
#define SECPKG_ATTR_PROTO_INFO 7
#define SECPKG_ATTR_PASSWORD_EXPIRY 8
#define SECPKG_ATTR_SESSION_KEY 9
#define SECPKG_ATTR_PACKAGE_INFO 10
#define SECPKG_ATTR_USER_FLAGS 11
#define SECPKG_ATTR_NEGOTIATION_INFO 12
#define SECPKG_ATTR_NATIVE_NAMES 13
#define SECPKG_ATTR_FLAGS 14
#define SECPKG_ATTR_USE_VALIDATED 15
#define SECPKG_ATTR_CREDENTIAL_NAME 16
#define SECPKG_ATTR_TARGET_INFORMATION 17
#define SECPKG_ATTR_ACCESS_TOKEN 18
#define SECPKG_ATTR_TARGET 19
#define SECPKG_ATTR_AUTHENTICATION_ID 20
#define SECPKG_ATTR_LOGOFF_TIME 21

type _SecPkgContext_Sizes
	cbMaxToken as culong
	cbMaxSignature as culong
	cbBlockSize as culong
	cbSecurityTrailer as culong
end type

type SecPkgContext_Sizes as _SecPkgContext_Sizes
type PSecPkgContext_Sizes as _SecPkgContext_Sizes ptr

type _SecPkgContext_StreamSizes
	cbHeader as culong
	cbTrailer as culong
	cbMaximumMessage as culong
	cBuffers as culong
	cbBlockSize as culong
end type

type SecPkgContext_StreamSizes as _SecPkgContext_StreamSizes
type PSecPkgContext_StreamSizes as _SecPkgContext_StreamSizes ptr

type _SecPkgContext_NamesW
	sUserName as SEC_WCHAR ptr
end type

type SecPkgContext_NamesW as _SecPkgContext_NamesW
type PSecPkgContext_NamesW as _SecPkgContext_NamesW ptr

type _SecPkgContext_NamesA
	sUserName as SEC_CHAR ptr
end type

type SecPkgContext_NamesA as _SecPkgContext_NamesA
type PSecPkgContext_NamesA as _SecPkgContext_NamesA ptr

#define SecPkgContext_Names __MINGW_NAME_AW(SecPkgContext_Names)
#define PSecPkgContext_Names __MINGW_NAME_AW(PSecPkgContext_Names)

type _SecPkgContext_Lifespan
	tsStart as TimeStamp
	tsExpiry as TimeStamp
end type

type SecPkgContext_Lifespan as _SecPkgContext_Lifespan
type PSecPkgContext_Lifespan as _SecPkgContext_Lifespan ptr

type _SecPkgContext_DceInfo
	AuthzSvc as culong
	pPac as any ptr
end type

type SecPkgContext_DceInfo as _SecPkgContext_DceInfo
type PSecPkgContext_DceInfo as _SecPkgContext_DceInfo ptr

type _SecPkgContext_KeyInfoA
	sSignatureAlgorithmName as SEC_CHAR ptr
	sEncryptAlgorithmName as SEC_CHAR ptr
	KeySize as culong
	SignatureAlgorithm as culong
	EncryptAlgorithm as culong
end type

type SecPkgContext_KeyInfoA as _SecPkgContext_KeyInfoA
type PSecPkgContext_KeyInfoA as _SecPkgContext_KeyInfoA ptr

type _SecPkgContext_KeyInfoW
	sSignatureAlgorithmName as SEC_WCHAR ptr
	sEncryptAlgorithmName as SEC_WCHAR ptr
	KeySize as culong
	SignatureAlgorithm as culong
	EncryptAlgorithm as culong
end type

type SecPkgContext_KeyInfoW as _SecPkgContext_KeyInfoW
type PSecPkgContext_KeyInfoW as _SecPkgContext_KeyInfoW ptr

#define SecPkgContext_KeyInfo __MINGW_NAME_AW(SecPkgContext_KeyInfo)
#define PSecPkgContext_KeyInfo __MINGW_NAME_AW(PSecPkgContext_KeyInfo)

type _SecPkgContext_AuthorityA
	sAuthorityName as SEC_CHAR ptr
end type

type SecPkgContext_AuthorityA as _SecPkgContext_AuthorityA
type PSecPkgContext_AuthorityA as _SecPkgContext_AuthorityA ptr

type _SecPkgContext_AuthorityW
	sAuthorityName as SEC_WCHAR ptr
end type

type SecPkgContext_AuthorityW as _SecPkgContext_AuthorityW
type PSecPkgContext_AuthorityW as _SecPkgContext_AuthorityW ptr

#define SecPkgContext_Authority __MINGW_NAME_AW(SecPkgContext_Authority)
#define PSecPkgContext_Authority __MINGW_NAME_AW(PSecPkgContext_Authority)

type _SecPkgContext_ProtoInfoA
	sProtocolName as SEC_CHAR ptr
	majorVersion as culong
	minorVersion as culong
end type

type SecPkgContext_ProtoInfoA as _SecPkgContext_ProtoInfoA
type PSecPkgContext_ProtoInfoA as _SecPkgContext_ProtoInfoA ptr

type _SecPkgContext_ProtoInfoW
	sProtocolName as SEC_WCHAR ptr
	majorVersion as culong
	minorVersion as culong
end type

type SecPkgContext_ProtoInfoW as _SecPkgContext_ProtoInfoW
type PSecPkgContext_ProtoInfoW as _SecPkgContext_ProtoInfoW ptr

#define SecPkgContext_ProtoInfo __MINGW_NAME_AW(SecPkgContext_ProtoInfo)
#define PSecPkgContext_ProtoInfo __MINGW_NAME_AW(PSecPkgContext_ProtoInfo)

type _SecPkgContext_PasswordExpiry
	tsPasswordExpires as TimeStamp
end type

type SecPkgContext_PasswordExpiry as _SecPkgContext_PasswordExpiry
type PSecPkgContext_PasswordExpiry as _SecPkgContext_PasswordExpiry ptr

type _SecPkgContext_LogoffTime
	tsLogoffTime as TimeStamp
end type

type SecPkgContext_LogoffTime as _SecPkgContext_LogoffTime
type PSecPkgContext_LogoffTime as _SecPkgContext_LogoffTime ptr

type _SecPkgContext_SessionKey
	SessionKeyLength as culong
	SessionKey as ubyte ptr
end type

type SecPkgContext_SessionKey as _SecPkgContext_SessionKey
type PSecPkgContext_SessionKey as _SecPkgContext_SessionKey ptr

type _SecPkgContext_PackageInfoW
	PackageInfo as PSecPkgInfoW
end type

type SecPkgContext_PackageInfoW as _SecPkgContext_PackageInfoW
type PSecPkgContext_PackageInfoW as _SecPkgContext_PackageInfoW ptr

type _SecPkgContext_PackageInfoA
	PackageInfo as PSecPkgInfoA
end type

type SecPkgContext_PackageInfoA as _SecPkgContext_PackageInfoA
type PSecPkgContext_PackageInfoA as _SecPkgContext_PackageInfoA ptr

type _SecPkgContext_UserFlags
	UserFlags as culong
end type

type SecPkgContext_UserFlags as _SecPkgContext_UserFlags
type PSecPkgContext_UserFlags as _SecPkgContext_UserFlags ptr

type _SecPkgContext_Flags
	Flags as culong
end type

type SecPkgContext_Flags as _SecPkgContext_Flags
type PSecPkgContext_Flags as _SecPkgContext_Flags ptr

#define SecPkgContext_PackageInfo __MINGW_NAME_AW(SecPkgContext_PackageInfo)
#define PSecPkgContext_PackageInfo __MINGW_NAME_AW(PSecPkgContext_PackageInfo)

type _SecPkgContext_NegotiationInfoA
	PackageInfo as PSecPkgInfoA
	NegotiationState as culong
end type

type SecPkgContext_NegotiationInfoA as _SecPkgContext_NegotiationInfoA
type PSecPkgContext_NegotiationInfoA as _SecPkgContext_NegotiationInfoA ptr

type _SecPkgContext_NegotiationInfoW
	PackageInfo as PSecPkgInfoW
	NegotiationState as culong
end type

type SecPkgContext_NegotiationInfoW as _SecPkgContext_NegotiationInfoW
type PSecPkgContext_NegotiationInfoW as _SecPkgContext_NegotiationInfoW ptr

#define SecPkgContext_NegotiationInfo __MINGW_NAME_AW(SecPkgContext_NegotiationInfo)
#define PSecPkgContext_NegotiationInfo __MINGW_NAME_AW(PSecPkgContext_NegotiationInfo)
#define SECPKG_NEGOTIATION_COMPLETE 0
#define SECPKG_NEGOTIATION_OPTIMISTIC 1
#define SECPKG_NEGOTIATION_IN_PROGRESS 2
#define SECPKG_NEGOTIATION_DIRECT 3
#define SECPKG_NEGOTIATION_TRY_MULTICRED 4

type _SecPkgContext_NativeNamesW
	sClientName as SEC_WCHAR ptr
	sServerName as SEC_WCHAR ptr
end type

type SecPkgContext_NativeNamesW as _SecPkgContext_NativeNamesW
type PSecPkgContext_NativeNamesW as _SecPkgContext_NativeNamesW ptr

type _SecPkgContext_NativeNamesA
	sClientName as SEC_CHAR ptr
	sServerName as SEC_CHAR ptr
end type

type SecPkgContext_NativeNamesA as _SecPkgContext_NativeNamesA
type PSecPkgContext_NativeNamesA as _SecPkgContext_NativeNamesA ptr

#define SecPkgContext_NativeNames __MINGW_NAME_AW(SecPkgContext_NativeNames)
#define PSecPkgContext_NativeNames __MINGW_NAME_AW(PSecPkgContext_NativeNames)

type _SecPkgContext_CredentialNameW
	CredentialType as culong
	sCredentialName as SEC_WCHAR ptr
end type

type SecPkgContext_CredentialNameW as _SecPkgContext_CredentialNameW
type PSecPkgContext_CredentialNameW as _SecPkgContext_CredentialNameW ptr

type _SecPkgContext_CredentialNameA
	CredentialType as culong
	sCredentialName as SEC_CHAR ptr
end type

type SecPkgContext_CredentialNameA as _SecPkgContext_CredentialNameA
type PSecPkgContext_CredentialNameA as _SecPkgContext_CredentialNameA ptr

#define SecPkgContext_CredentialName __MINGW_NAME_AW(SecPkgContext_CredentialName)
#define PSecPkgContext_CredentialName __MINGW_NAME_AW(PSecPkgContext_CredentialName)

type _SecPkgContext_AccessToken
	AccessToken as any ptr
end type

type SecPkgContext_AccessToken as _SecPkgContext_AccessToken
type PSecPkgContext_AccessToken as _SecPkgContext_AccessToken ptr

type _SecPkgContext_TargetInformation
	MarshalledTargetInfoLength as culong
	MarshalledTargetInfo as ubyte ptr
end type

type SecPkgContext_TargetInformation as _SecPkgContext_TargetInformation
type PSecPkgContext_TargetInformation as _SecPkgContext_TargetInformation ptr

type _SecPkgContext_AuthzID
	AuthzIDLength as culong
	AuthzID as zstring ptr
end type

type SecPkgContext_AuthzID as _SecPkgContext_AuthzID
type PSecPkgContext_AuthzID as _SecPkgContext_AuthzID ptr

type _SecPkgContext_Target
	TargetLength as culong
	Target as zstring ptr
end type

type SecPkgContext_Target as _SecPkgContext_Target
type PSecPkgContext_Target as _SecPkgContext_Target ptr
type SEC_GET_KEY_FN as sub(byval Arg as any ptr, byval Principal as any ptr, byval KeyVer as culong, byval Key as any ptr ptr, byval Status as SECURITY_STATUS ptr)

#define SECPKG_CONTEXT_EXPORT_RESET_NEW &h00000001
#define SECPKG_CONTEXT_EXPORT_DELETE_OLD &h00000002
#define SECPKG_CONTEXT_EXPORT_TO_KERNEL &h00000004

declare function AcquireCredentialsHandleW(byval pszPrincipal as SEC_WCHAR ptr, byval pszPackage as SEC_WCHAR ptr, byval fCredentialUse as culong, byval pvLogonId as any ptr, byval pAuthData as any ptr, byval pGetKeyFn as SEC_GET_KEY_FN, byval pvGetKeyArgument as any ptr, byval phCredential as PCredHandle, byval ptsExpiry as PTimeStamp) as SECURITY_STATUS

type ACQUIRE_CREDENTIALS_HANDLE_FN_W as function(byval as SEC_WCHAR ptr, byval as SEC_WCHAR ptr, byval as culong, byval as any ptr, byval as any ptr, byval as SEC_GET_KEY_FN, byval as any ptr, byval as PCredHandle, byval as PTimeStamp) as SECURITY_STATUS

declare function AcquireCredentialsHandleA(byval pszPrincipal as SEC_CHAR ptr, byval pszPackage as SEC_CHAR ptr, byval fCredentialUse as culong, byval pvLogonId as any ptr, byval pAuthData as any ptr, byval pGetKeyFn as SEC_GET_KEY_FN, byval pvGetKeyArgument as any ptr, byval phCredential as PCredHandle, byval ptsExpiry as PTimeStamp) as SECURITY_STATUS

type ACQUIRE_CREDENTIALS_HANDLE_FN_A as function(byval as SEC_CHAR ptr, byval as SEC_CHAR ptr, byval as culong, byval as any ptr, byval as any ptr, byval as SEC_GET_KEY_FN, byval as any ptr, byval as PCredHandle, byval as PTimeStamp) as SECURITY_STATUS

#define AcquireCredentialsHandle __MINGW_NAME_AW(AcquireCredentialsHandle)
#define ACQUIRE_CREDENTIALS_HANDLE_FN __MINGW_NAME_UAW(ACQUIRE_CREDENTIALS_HANDLE_FN)

declare function FreeCredentialsHandle(byval phCredential as PCredHandle) as SECURITY_STATUS

type FREE_CREDENTIALS_HANDLE_FN as function(byval as PCredHandle) as SECURITY_STATUS

declare function AddCredentialsW(byval hCredentials as PCredHandle, byval pszPrincipal as SEC_WCHAR ptr, byval pszPackage as SEC_WCHAR ptr, byval fCredentialUse as culong, byval pAuthData as any ptr, byval pGetKeyFn as SEC_GET_KEY_FN, byval pvGetKeyArgument as any ptr, byval ptsExpiry as PTimeStamp) as SECURITY_STATUS

type ADD_CREDENTIALS_FN_W as function(byval as PCredHandle, byval as SEC_WCHAR ptr, byval as SEC_WCHAR ptr, byval as culong, byval as any ptr, byval as SEC_GET_KEY_FN, byval as any ptr, byval as PTimeStamp) as SECURITY_STATUS

declare function AddCredentialsA(byval hCredentials as PCredHandle, byval pszPrincipal as SEC_CHAR ptr, byval pszPackage as SEC_CHAR ptr, byval fCredentialUse as culong, byval pAuthData as any ptr, byval pGetKeyFn as SEC_GET_KEY_FN, byval pvGetKeyArgument as any ptr, byval ptsExpiry as PTimeStamp) as SECURITY_STATUS

type ADD_CREDENTIALS_FN_A as function(byval as PCredHandle, byval as SEC_CHAR ptr, byval as SEC_CHAR ptr, byval as culong, byval as any ptr, byval as SEC_GET_KEY_FN, byval as any ptr, byval as PTimeStamp) as SECURITY_STATUS

#define AddCredentials __MINGW_NAME_AW(AddCredentials)
#define ADD_CREDENTIALS_FN __MINGW_NAME_UAW(ADD_CREDENTIALS_FN)

declare function InitializeSecurityContextW(byval phCredential as PCredHandle, byval phContext as PCtxtHandle, byval pszTargetName as SEC_WCHAR ptr, byval fContextReq as culong, byval Reserved1 as culong, byval TargetDataRep as culong, byval pInput as PSecBufferDesc, byval Reserved2 as culong, byval phNewContext as PCtxtHandle, byval pOutput as PSecBufferDesc, byval pfContextAttr as culong ptr, byval ptsExpiry as PTimeStamp) as SECURITY_STATUS

type INITIALIZE_SECURITY_CONTEXT_FN_W as function(byval as PCredHandle, byval as PCtxtHandle, byval as SEC_WCHAR ptr, byval as culong, byval as culong, byval as culong, byval as PSecBufferDesc, byval as culong, byval as PCtxtHandle, byval as PSecBufferDesc, byval as culong ptr, byval as PTimeStamp) as SECURITY_STATUS

declare function InitializeSecurityContextA(byval phCredential as PCredHandle, byval phContext as PCtxtHandle, byval pszTargetName as SEC_CHAR ptr, byval fContextReq as culong, byval Reserved1 as culong, byval TargetDataRep as culong, byval pInput as PSecBufferDesc, byval Reserved2 as culong, byval phNewContext as PCtxtHandle, byval pOutput as PSecBufferDesc, byval pfContextAttr as culong ptr, byval ptsExpiry as PTimeStamp) as SECURITY_STATUS

type INITIALIZE_SECURITY_CONTEXT_FN_A as function(byval as PCredHandle, byval as PCtxtHandle, byval as SEC_CHAR ptr, byval as culong, byval as culong, byval as culong, byval as PSecBufferDesc, byval as culong, byval as PCtxtHandle, byval as PSecBufferDesc, byval as culong ptr, byval as PTimeStamp) as SECURITY_STATUS

#define InitializeSecurityContext __MINGW_NAME_AW(InitializeSecurityContext)
#define INITIALIZE_SECURITY_CONTEXT_FN __MINGW_NAME_UAW(INITIALIZE_SECURITY_CONTEXT_FN)

declare function AcceptSecurityContext(byval phCredential as PCredHandle, byval phContext as PCtxtHandle, byval pInput as PSecBufferDesc, byval fContextReq as culong, byval TargetDataRep as culong, byval phNewContext as PCtxtHandle, byval pOutput as PSecBufferDesc, byval pfContextAttr as culong ptr, byval ptsExpiry as PTimeStamp) as SECURITY_STATUS

type ACCEPT_SECURITY_CONTEXT_FN as function(byval as PCredHandle, byval as PCtxtHandle, byval as PSecBufferDesc, byval as culong, byval as culong, byval as PCtxtHandle, byval as PSecBufferDesc, byval as culong ptr, byval as PTimeStamp) as SECURITY_STATUS

declare function CompleteAuthToken(byval phContext as PCtxtHandle, byval pToken as PSecBufferDesc) as SECURITY_STATUS

type COMPLETE_AUTH_TOKEN_FN as function(byval as PCtxtHandle, byval as PSecBufferDesc) as SECURITY_STATUS

declare function ImpersonateSecurityContext(byval phContext as PCtxtHandle) as SECURITY_STATUS

type IMPERSONATE_SECURITY_CONTEXT_FN as function(byval as PCtxtHandle) as SECURITY_STATUS

declare function RevertSecurityContext(byval phContext as PCtxtHandle) as SECURITY_STATUS

type REVERT_SECURITY_CONTEXT_FN as function(byval as PCtxtHandle) as SECURITY_STATUS

declare function QuerySecurityContextToken(byval phContext as PCtxtHandle, byval Token as HANDLE ptr) as SECURITY_STATUS

type QUERY_SECURITY_CONTEXT_TOKEN_FN as function(byval as PCtxtHandle, byval as HANDLE ptr) as SECURITY_STATUS

declare function DeleteSecurityContext(byval phContext as PCtxtHandle) as SECURITY_STATUS

type DELETE_SECURITY_CONTEXT_FN as function(byval as PCtxtHandle) as SECURITY_STATUS

declare function ApplyControlToken(byval phContext as PCtxtHandle, byval pInput as PSecBufferDesc) as SECURITY_STATUS

type APPLY_CONTROL_TOKEN_FN as function(byval as PCtxtHandle, byval as PSecBufferDesc) as SECURITY_STATUS

declare function QueryContextAttributesW(byval phContext as PCtxtHandle, byval ulAttribute as culong, byval pBuffer as any ptr) as SECURITY_STATUS

type QUERY_CONTEXT_ATTRIBUTES_FN_W as function(byval as PCtxtHandle, byval as culong, byval as any ptr) as SECURITY_STATUS

declare function QueryContextAttributesA(byval phContext as PCtxtHandle, byval ulAttribute as culong, byval pBuffer as any ptr) as SECURITY_STATUS

type QUERY_CONTEXT_ATTRIBUTES_FN_A as function(byval as PCtxtHandle, byval as culong, byval as any ptr) as SECURITY_STATUS

#define QueryContextAttributes __MINGW_NAME_AW(QueryContextAttributes)
#define QUERY_CONTEXT_ATTRIBUTES_FN __MINGW_NAME_UAW(QUERY_CONTEXT_ATTRIBUTES_FN)

declare function SetContextAttributesW(byval phContext as PCtxtHandle, byval ulAttribute as culong, byval pBuffer as any ptr, byval cbBuffer as culong) as SECURITY_STATUS

type SET_CONTEXT_ATTRIBUTES_FN_W as function(byval as PCtxtHandle, byval as culong, byval as any ptr, byval as culong) as SECURITY_STATUS

declare function SetContextAttributesA(byval phContext as PCtxtHandle, byval ulAttribute as culong, byval pBuffer as any ptr, byval cbBuffer as culong) as SECURITY_STATUS

type SET_CONTEXT_ATTRIBUTES_FN_A as function(byval as PCtxtHandle, byval as culong, byval as any ptr, byval as culong) as SECURITY_STATUS

#define SetContextAttributes __MINGW_NAME_AW(SetContextAttributes)
#define SET_CONTEXT_ATTRIBUTES_FN __MINGW_NAME_UAW(SET_CONTEXT_ATTRIBUTES_FN)

declare function QueryCredentialsAttributesW(byval phCredential as PCredHandle, byval ulAttribute as culong, byval pBuffer as any ptr) as SECURITY_STATUS

type QUERY_CREDENTIALS_ATTRIBUTES_FN_W as function(byval as PCredHandle, byval as culong, byval as any ptr) as SECURITY_STATUS

declare function QueryCredentialsAttributesA(byval phCredential as PCredHandle, byval ulAttribute as culong, byval pBuffer as any ptr) as SECURITY_STATUS

type QUERY_CREDENTIALS_ATTRIBUTES_FN_A as function(byval as PCredHandle, byval as culong, byval as any ptr) as SECURITY_STATUS

#define QueryCredentialsAttributes __MINGW_NAME_AW(QueryCredentialsAttributes)
#define QUERY_CREDENTIALS_ATTRIBUTES_FN __MINGW_NAME_UAW(QUERY_CREDENTIALS_ATTRIBUTES_FN)

declare function SetCredentialsAttributesW(byval phCredential as PCredHandle, byval ulAttribute as culong, byval pBuffer as any ptr, byval cbBuffer as culong) as SECURITY_STATUS

type SET_CREDENTIALS_ATTRIBUTES_FN_W as function(byval as PCredHandle, byval as culong, byval as any ptr, byval as culong) as SECURITY_STATUS

declare function SetCredentialsAttributesA(byval phCredential as PCredHandle, byval ulAttribute as culong, byval pBuffer as any ptr, byval cbBuffer as culong) as SECURITY_STATUS

type SET_CREDENTIALS_ATTRIBUTES_FN_A as function(byval as PCredHandle, byval as culong, byval as any ptr, byval as culong) as SECURITY_STATUS

#define SetCredentialsAttributes __MINGW_NAME_AW(SetCredentialsAttributes)
#define SET_CREDENTIALS_ATTRIBUTES_FN __MINGW_NAME_UAW(SET_CREDENTIALS_ATTRIBUTES_FN)

declare function FreeContextBuffer(byval pvContextBuffer as any ptr) as SECURITY_STATUS

type FREE_CONTEXT_BUFFER_FN as function(byval as any ptr) as SECURITY_STATUS

declare function MakeSignature(byval phContext as PCtxtHandle, byval fQOP as culong, byval pMessage as PSecBufferDesc, byval MessageSeqNo as culong) as SECURITY_STATUS

type MAKE_SIGNATURE_FN as function(byval as PCtxtHandle, byval as culong, byval as PSecBufferDesc, byval as culong) as SECURITY_STATUS

declare function VerifySignature(byval phContext as PCtxtHandle, byval pMessage as PSecBufferDesc, byval MessageSeqNo as culong, byval pfQOP as culong ptr) as SECURITY_STATUS

type VERIFY_SIGNATURE_FN as function(byval as PCtxtHandle, byval as PSecBufferDesc, byval as culong, byval as culong ptr) as SECURITY_STATUS

#define SECQOP_WRAP_NO_ENCRYPT &h80000001
#define SECQOP_WRAP_OOB_DATA &h40000000

declare function EncryptMessage(byval phContext as PCtxtHandle, byval fQOP as culong, byval pMessage as PSecBufferDesc, byval MessageSeqNo as culong) as SECURITY_STATUS

type ENCRYPT_MESSAGE_FN as function(byval as PCtxtHandle, byval as culong, byval as PSecBufferDesc, byval as culong) as SECURITY_STATUS

declare function DecryptMessage(byval phContext as PCtxtHandle, byval pMessage as PSecBufferDesc, byval MessageSeqNo as culong, byval pfQOP as culong ptr) as SECURITY_STATUS

type DECRYPT_MESSAGE_FN as function(byval as PCtxtHandle, byval as PSecBufferDesc, byval as culong, byval as culong ptr) as SECURITY_STATUS

declare function EnumerateSecurityPackagesW(byval pcPackages as culong ptr, byval ppPackageInfo as PSecPkgInfoW ptr) as SECURITY_STATUS

type ENUMERATE_SECURITY_PACKAGES_FN_W as function(byval as culong ptr, byval as PSecPkgInfoW ptr) as SECURITY_STATUS

declare function EnumerateSecurityPackagesA(byval pcPackages as culong ptr, byval ppPackageInfo as PSecPkgInfoA ptr) as SECURITY_STATUS

type ENUMERATE_SECURITY_PACKAGES_FN_A as function(byval as culong ptr, byval as PSecPkgInfoA ptr) as SECURITY_STATUS

#define EnumerateSecurityPackages __MINGW_NAME_AW(EnumerateSecurityPackages)
#define ENUMERATE_SECURITY_PACKAGES_FN __MINGW_NAME_UAW(ENUMERATE_SECURITY_PACKAGES_FN)

declare function QuerySecurityPackageInfoW(byval pszPackageName as SEC_WCHAR ptr, byval ppPackageInfo as PSecPkgInfoW ptr) as SECURITY_STATUS

type QUERY_SECURITY_PACKAGE_INFO_FN_W as function(byval as SEC_WCHAR ptr, byval as PSecPkgInfoW ptr) as SECURITY_STATUS

declare function QuerySecurityPackageInfoA(byval pszPackageName as SEC_CHAR ptr, byval ppPackageInfo as PSecPkgInfoA ptr) as SECURITY_STATUS

type QUERY_SECURITY_PACKAGE_INFO_FN_A as function(byval as SEC_CHAR ptr, byval as PSecPkgInfoA ptr) as SECURITY_STATUS

#define QuerySecurityPackageInfo __MINGW_NAME_AW(QuerySecurityPackageInfo)
#define QUERY_SECURITY_PACKAGE_INFO_FN __MINGW_NAME_UAW(QUERY_SECURITY_PACKAGE_INFO_FN)

type _SecDelegationType as long
enum
	SecFull
	SecService
	SecTree
	SecDirectory
	SecObject
end enum

type SecDelegationType as _SecDelegationType
type PSecDelegationType as _SecDelegationType ptr

declare function DelegateSecurityContext(byval phContext as PCtxtHandle, byval pszTarget as SEC_CHAR ptr, byval DelegationType as SecDelegationType, byval pExpiry as PTimeStamp, byval pPackageParameters as PSecBuffer, byval pOutput as PSecBufferDesc) as SECURITY_STATUS
declare function ExportSecurityContext(byval phContext as PCtxtHandle, byval fFlags as ULONG, byval pPackedContext as PSecBuffer, byval pToken as any ptr ptr) as SECURITY_STATUS

type EXPORT_SECURITY_CONTEXT_FN as function(byval as PCtxtHandle, byval as ULONG, byval as PSecBuffer, byval as any ptr ptr) as SECURITY_STATUS

declare function ImportSecurityContextW(byval pszPackage as SEC_WCHAR ptr, byval pPackedContext as PSecBuffer, byval Token as any ptr, byval phContext as PCtxtHandle) as SECURITY_STATUS

type IMPORT_SECURITY_CONTEXT_FN_W as function(byval as SEC_WCHAR ptr, byval as PSecBuffer, byval as VOID ptr, byval as PCtxtHandle) as SECURITY_STATUS

declare function ImportSecurityContextA(byval pszPackage as SEC_CHAR ptr, byval pPackedContext as PSecBuffer, byval Token as VOID ptr, byval phContext as PCtxtHandle) as SECURITY_STATUS

type IMPORT_SECURITY_CONTEXT_FN_A as function(byval as SEC_CHAR ptr, byval as PSecBuffer, byval as any ptr, byval as PCtxtHandle) as SECURITY_STATUS

#define ImportSecurityContext __MINGW_NAME_AW(ImportSecurityContext)
#define IMPORT_SECURITY_CONTEXT_FN __MINGW_NAME_UAW(IMPORT_SECURITY_CONTEXT_FN)
#define SECURITY_ENTRYPOINT_ANSIW "InitSecurityInterfaceW"
#define SECURITY_ENTRYPOINT_ANSIA "InitSecurityInterfaceA"
#define SECURITY_ENTRYPOINTW SEC_TEXT("InitSecurityInterfaceW")
#define SECURITY_ENTRYPOINTA SEC_TEXT("InitSecurityInterfaceA")
#define SECURITY_ENTRYPOINT16 "INITSECURITYINTERFACEA"
#define SECURITY_ENTRYPOINT __MINGW_NAME_AW(SECURITY_ENTRYPOINT)
#define SECURITY_ENTRYPOINT_ANSI __MINGW_NAME_AW(SECURITY_ENTRYPOINT_ANSI)
#define FreeCredentialHandle FreeCredentialsHandle

type _SECURITY_FUNCTION_TABLE_W
	dwVersion as culong
	EnumerateSecurityPackagesW as ENUMERATE_SECURITY_PACKAGES_FN_W
	QueryCredentialsAttributesW as QUERY_CREDENTIALS_ATTRIBUTES_FN_W
	AcquireCredentialsHandleW as ACQUIRE_CREDENTIALS_HANDLE_FN_W
	FreeCredentialsHandle as FREE_CREDENTIALS_HANDLE_FN
	Reserved2 as any ptr
	InitializeSecurityContextW as INITIALIZE_SECURITY_CONTEXT_FN_W
	AcceptSecurityContext as ACCEPT_SECURITY_CONTEXT_FN
	CompleteAuthToken as COMPLETE_AUTH_TOKEN_FN
	DeleteSecurityContext as DELETE_SECURITY_CONTEXT_FN
	ApplyControlToken as APPLY_CONTROL_TOKEN_FN
	QueryContextAttributesW as QUERY_CONTEXT_ATTRIBUTES_FN_W
	ImpersonateSecurityContext as IMPERSONATE_SECURITY_CONTEXT_FN
	RevertSecurityContext as REVERT_SECURITY_CONTEXT_FN
	MakeSignature as MAKE_SIGNATURE_FN
	VerifySignature as VERIFY_SIGNATURE_FN
	FreeContextBuffer as FREE_CONTEXT_BUFFER_FN
	QuerySecurityPackageInfoW as QUERY_SECURITY_PACKAGE_INFO_FN_W
	Reserved3 as any ptr
	Reserved4 as any ptr
	ExportSecurityContext as EXPORT_SECURITY_CONTEXT_FN
	ImportSecurityContextW as IMPORT_SECURITY_CONTEXT_FN_W
	AddCredentialsW as ADD_CREDENTIALS_FN_W
	Reserved8 as any ptr
	QuerySecurityContextToken as QUERY_SECURITY_CONTEXT_TOKEN_FN
	EncryptMessage as ENCRYPT_MESSAGE_FN
	DecryptMessage as DECRYPT_MESSAGE_FN
	SetContextAttributesW as SET_CONTEXT_ATTRIBUTES_FN_W
	SetCredentialsAttributesW as SET_CREDENTIALS_ATTRIBUTES_FN_W
end type

type SecurityFunctionTableW as _SECURITY_FUNCTION_TABLE_W
type PSecurityFunctionTableW as _SECURITY_FUNCTION_TABLE_W ptr

type _SECURITY_FUNCTION_TABLE_A
	dwVersion as culong
	EnumerateSecurityPackagesA as ENUMERATE_SECURITY_PACKAGES_FN_A
	QueryCredentialsAttributesA as QUERY_CREDENTIALS_ATTRIBUTES_FN_A
	AcquireCredentialsHandleA as ACQUIRE_CREDENTIALS_HANDLE_FN_A
	FreeCredentialsHandle as FREE_CREDENTIALS_HANDLE_FN
	Reserved2 as any ptr
	InitializeSecurityContextA as INITIALIZE_SECURITY_CONTEXT_FN_A
	AcceptSecurityContext as ACCEPT_SECURITY_CONTEXT_FN
	CompleteAuthToken as COMPLETE_AUTH_TOKEN_FN
	DeleteSecurityContext as DELETE_SECURITY_CONTEXT_FN
	ApplyControlToken as APPLY_CONTROL_TOKEN_FN
	QueryContextAttributesA as QUERY_CONTEXT_ATTRIBUTES_FN_A
	ImpersonateSecurityContext as IMPERSONATE_SECURITY_CONTEXT_FN
	RevertSecurityContext as REVERT_SECURITY_CONTEXT_FN
	MakeSignature as MAKE_SIGNATURE_FN
	VerifySignature as VERIFY_SIGNATURE_FN
	FreeContextBuffer as FREE_CONTEXT_BUFFER_FN
	QuerySecurityPackageInfoA as QUERY_SECURITY_PACKAGE_INFO_FN_A
	Reserved3 as any ptr
	Reserved4 as any ptr
	ExportSecurityContext as EXPORT_SECURITY_CONTEXT_FN
	ImportSecurityContextA as IMPORT_SECURITY_CONTEXT_FN_A
	AddCredentialsA as ADD_CREDENTIALS_FN_A
	Reserved8 as any ptr
	QuerySecurityContextToken as QUERY_SECURITY_CONTEXT_TOKEN_FN
	EncryptMessage as ENCRYPT_MESSAGE_FN
	DecryptMessage as DECRYPT_MESSAGE_FN
	SetContextAttributesA as SET_CONTEXT_ATTRIBUTES_FN_A
	SetCredentialsAttributesA as SET_CREDENTIALS_ATTRIBUTES_FN_A
end type

type SecurityFunctionTableA as _SECURITY_FUNCTION_TABLE_A
type PSecurityFunctionTableA as _SECURITY_FUNCTION_TABLE_A ptr

#define SecurityFunctionTable __MINGW_NAME_AW(SecurityFunctionTable)
#define PSecurityFunctionTable __MINGW_NAME_AW(PSecurityFunctionTable)
#define SECURITY_
#define SECURITY_SUPPORT_PROVIDER_INTERFACE_VERSION 1
#define SECURITY_SUPPORT_PROVIDER_INTERFACE_VERSION_2 2
#define SECURITY_SUPPORT_PROVIDER_INTERFACE_VERSION_3 3

declare function InitSecurityInterfaceA() as PSecurityFunctionTableA

type INIT_SECURITY_INTERFACE_A as function() as PSecurityFunctionTableA

declare function InitSecurityInterfaceW() as PSecurityFunctionTableW

type INIT_SECURITY_INTERFACE_W as function() as PSecurityFunctionTableW

#define InitSecurityInterface __MINGW_NAME_AW(InitSecurityInterface)
#define INIT_SECURITY_INTERFACE __MINGW_NAME_UAW(INIT_SECURITY_INTERFACE)

declare function SaslEnumerateProfilesA(byval ProfileList as LPSTR ptr, byval ProfileCount as ULONG ptr) as SECURITY_STATUS
declare function SaslEnumerateProfilesW(byval ProfileList as LPWSTR ptr, byval ProfileCount as ULONG ptr) as SECURITY_STATUS

#define SaslEnumerateProfiles __MINGW_NAME_AW(SaslEnumerateProfiles)

declare function SaslGetProfilePackageA(byval ProfileName as LPSTR, byval PackageInfo as PSecPkgInfoA ptr) as SECURITY_STATUS
declare function SaslGetProfilePackageW(byval ProfileName as LPWSTR, byval PackageInfo as PSecPkgInfoW ptr) as SECURITY_STATUS

#define SaslGetProfilePackage __MINGW_NAME_AW(SaslGetProfilePackage)

declare function SaslIdentifyPackageA(byval pInput as PSecBufferDesc, byval PackageInfo as PSecPkgInfoA ptr) as SECURITY_STATUS
declare function SaslIdentifyPackageW(byval pInput as PSecBufferDesc, byval PackageInfo as PSecPkgInfoW ptr) as SECURITY_STATUS

#define SaslIdentifyPackage __MINGW_NAME_AW(SaslIdentifyPackage)

declare function SaslInitializeSecurityContextW(byval phCredential as PCredHandle, byval phContext as PCtxtHandle, byval pszTargetName as LPWSTR, byval fContextReq as culong, byval Reserved1 as culong, byval TargetDataRep as culong, byval pInput as PSecBufferDesc, byval Reserved2 as culong, byval phNewContext as PCtxtHandle, byval pOutput as PSecBufferDesc, byval pfContextAttr as culong ptr, byval ptsExpiry as PTimeStamp) as SECURITY_STATUS
declare function SaslInitializeSecurityContextA(byval phCredential as PCredHandle, byval phContext as PCtxtHandle, byval pszTargetName as LPSTR, byval fContextReq as culong, byval Reserved1 as culong, byval TargetDataRep as culong, byval pInput as PSecBufferDesc, byval Reserved2 as culong, byval phNewContext as PCtxtHandle, byval pOutput as PSecBufferDesc, byval pfContextAttr as culong ptr, byval ptsExpiry as PTimeStamp) as SECURITY_STATUS

#define SaslInitializeSecurityContext __MINGW_NAME_AW(SaslInitializeSecurityContext)

declare function SaslAcceptSecurityContext(byval phCredential as PCredHandle, byval phContext as PCtxtHandle, byval pInput as PSecBufferDesc, byval fContextReq as culong, byval TargetDataRep as culong, byval phNewContext as PCtxtHandle, byval pOutput as PSecBufferDesc, byval pfContextAttr as culong ptr, byval ptsExpiry as PTimeStamp) as SECURITY_STATUS

#define SASL_OPTION_SEND_SIZE 1
#define SASL_OPTION_RECV_SIZE 2
#define SASL_OPTION_AUTHZ_STRING 3
#define SASL_OPTION_AUTHZ_PROCESSING 4

type _SASL_AUTHZID_STATE as long
enum
	Sasl_AuthZIDForbidden
	Sasl_AuthZIDProcessed
end enum

type SASL_AUTHZID_STATE as _SASL_AUTHZID_STATE

declare function SaslSetContextOption(byval ContextHandle as PCtxtHandle, byval Option_ as ULONG, byval Value as PVOID, byval Size as ULONG) as SECURITY_STATUS
declare function SaslGetContextOption(byval ContextHandle as PCtxtHandle, byval Option_ as ULONG, byval Value as PVOID, byval Size as ULONG, byval Needed as PULONG) as SECURITY_STATUS

#define _AUTH_IDENTITY_DEFINED
#define SEC_WINNT_AUTH_IDENTITY_ANSI &h1
#define SEC_WINNT_AUTH_IDENTITY_UNICODE &h2

type _SEC_WINNT_AUTH_IDENTITY_W
	User as ushort ptr
	UserLength as culong
	Domain as ushort ptr
	DomainLength as culong
	Password as ushort ptr
	PasswordLength as culong
	Flags as culong
end type

type SEC_WINNT_AUTH_IDENTITY_W as _SEC_WINNT_AUTH_IDENTITY_W
type PSEC_WINNT_AUTH_IDENTITY_W as _SEC_WINNT_AUTH_IDENTITY_W ptr

type _SEC_WINNT_AUTH_IDENTITY_A
	User as ubyte ptr
	UserLength as culong
	Domain as ubyte ptr
	DomainLength as culong
	Password as ubyte ptr
	PasswordLength as culong
	Flags as culong
end type

type SEC_WINNT_AUTH_IDENTITY_A as _SEC_WINNT_AUTH_IDENTITY_A
type PSEC_WINNT_AUTH_IDENTITY_A as _SEC_WINNT_AUTH_IDENTITY_A ptr

#define SEC_WINNT_AUTH_IDENTITY __MINGW_NAME_UAW(SEC_WINNT_AUTH_IDENTITY)
#define PSEC_WINNT_AUTH_IDENTITY __MINGW_NAME_UAW(PSEC_WINNT_AUTH_IDENTITY)
#define _SEC_WINNT_AUTH_IDENTITY __MINGW_NAME_UAW(_SEC_WINNT_AUTH_IDENTITY)
#define SEC_WINNT_AUTH_IDENTITY_VERSION &h200

type _SEC_WINNT_AUTH_IDENTITY_EXW
	Version as culong
	Length as culong
	User as ushort ptr
	UserLength as culong
	Domain as ushort ptr
	DomainLength as culong
	Password as ushort ptr
	PasswordLength as culong
	Flags as culong
	PackageList as ushort ptr
	PackageListLength as culong
end type

type SEC_WINNT_AUTH_IDENTITY_EXW as _SEC_WINNT_AUTH_IDENTITY_EXW
type PSEC_WINNT_AUTH_IDENTITY_EXW as _SEC_WINNT_AUTH_IDENTITY_EXW ptr

type _SEC_WINNT_AUTH_IDENTITY_EXA
	Version as culong
	Length as culong
	User as ubyte ptr
	UserLength as culong
	Domain as ubyte ptr
	DomainLength as culong
	Password as ubyte ptr
	PasswordLength as culong
	Flags as culong
	PackageList as ubyte ptr
	PackageListLength as culong
end type

type SEC_WINNT_AUTH_IDENTITY_EXA as _SEC_WINNT_AUTH_IDENTITY_EXA
type PSEC_WINNT_AUTH_IDENTITY_EXA as _SEC_WINNT_AUTH_IDENTITY_EXA ptr

#define SEC_WINNT_AUTH_IDENTITY_EX __MINGW_NAME_AW(SEC_WINNT_AUTH_IDENTITY_EX)
#define PSEC_WINNT_AUTH_IDENTITY_EX __MINGW_NAME_AW(PSEC_WINNT_AUTH_IDENTITY_EX)
#define SEC_WINNT_AUTH_IDENTITY_MARSHALLED &h4
#define SEC_WINNT_AUTH_IDENTITY_ONLY &h8

type _SECURITY_PACKAGE_OPTIONS
	Size as culong
	as culong Type
	Flags as culong
	SignatureSize as culong
	Signature as any ptr
end type

type SECURITY_PACKAGE_OPTIONS as _SECURITY_PACKAGE_OPTIONS
type PSECURITY_PACKAGE_OPTIONS as _SECURITY_PACKAGE_OPTIONS ptr

#define SECPKG_OPTIONS_TYPE_UNKNOWN 0
#define SECPKG_OPTIONS_TYPE_LSA 1
#define SECPKG_OPTIONS_TYPE_SSPI 2
#define SECPKG_OPTIONS_PERMANENT &h00000001
#define AddSecurityPackage __MINGW_NAME_AW(AddSecurityPackage)
#define DeleteSecurityPackage __MINGW_NAME_AW(DeleteSecurityPackage)

declare function AddSecurityPackageA(byval pszPackageName as LPSTR, byval pOptions as PSECURITY_PACKAGE_OPTIONS) as SECURITY_STATUS
declare function AddSecurityPackageW(byval pszPackageName as LPWSTR, byval pOptions as PSECURITY_PACKAGE_OPTIONS) as SECURITY_STATUS
declare function DeleteSecurityPackageA(byval pszPackageName as SEC_CHAR ptr) as SECURITY_STATUS
declare function DeleteSecurityPackageW(byval pszPackageName as SEC_WCHAR ptr) as SECURITY_STATUS

end extern
