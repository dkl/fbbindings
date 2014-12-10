#pragma once

#include once "crt/wchar.bi"
#include once "windef.bi"
#include once "schnlsp.bi"

'' The following symbols have been renamed:
''     typedef LDAP => LDAP_
''     typedef BERVAL => BERVAL_
''     typedef LDAPControlA => LDAPControlA_
''     typedef LDAPControlW => LDAPControlW_
''     typedef LDAPModW => LDAPModW_
''     typedef LDAPModA => LDAPModA_
''     #ifdef UNICODE
''         #define ldap_get_option => ldap_get_option_
''         #define ldap_set_option => ldap_set_option_
''     #endif
''     typedef BerElement => BerElement_
''     typedef LDAP_VERSION_INFO => LDAP_VERSION_INFO_
''     typedef LDAPAPIInfoA => LDAPAPIInfoA_
''     typedef LDAPAPIInfoW => LDAPAPIInfoW_
''     typedef LDAPSearch => LDAPSearch_
''     typedef LDAPSortKeyW => LDAPSortKeyW_
''     typedef LDAPSortKeyA => LDAPSortKeyA_
''     typedef LDAPVLVInfo => LDAPVLVInfo_

extern "C"

#define LDAP_CLIENT_DEFINED
#define WINLDAPAPI DECLSPEC_IMPORT
#define LDAPAPI __cdecl

#ifdef UNICODE
	#define LDAP_UNICODE 1
#else
	#define LDAP_UNICODE 0
#endif

#define LDAP_PORT 389
#define LDAP_SSL_PORT 636
#define LDAP_GC_PORT 3268
#define LDAP_SSL_GC_PORT 3269
#define LDAP_VERSION1 1
#define LDAP_VERSION2 2
#define LDAP_VERSION3 3
#define LDAP_VERSION LDAP_VERSION2
#define LDAP_BIND_CMD __MSABI_LONG(&h60)
#define LDAP_UNBIND_CMD __MSABI_LONG(&h42)
#define LDAP_SEARCH_CMD __MSABI_LONG(&h63)
#define LDAP_MODIFY_CMD __MSABI_LONG(&h66)
#define LDAP_ADD_CMD __MSABI_LONG(&h68)
#define LDAP_DELETE_CMD __MSABI_LONG(&h4a)
#define LDAP_MODRDN_CMD __MSABI_LONG(&h6c)
#define LDAP_COMPARE_CMD __MSABI_LONG(&h6e)
#define LDAP_ABANDON_CMD __MSABI_LONG(&h50)
#define LDAP_SESSION_CMD __MSABI_LONG(&h71)
#define LDAP_EXTENDED_CMD __MSABI_LONG(&h77)
#define LDAP_RES_BIND __MSABI_LONG(&h61)
#define LDAP_RES_SEARCH_ENTRY __MSABI_LONG(&h64)
#define LDAP_RES_SEARCH_RESULT __MSABI_LONG(&h65)
#define LDAP_RES_MODIFY __MSABI_LONG(&h67)
#define LDAP_RES_ADD __MSABI_LONG(&h69)
#define LDAP_RES_DELETE __MSABI_LONG(&h6b)
#define LDAP_RES_MODRDN __MSABI_LONG(&h6d)
#define LDAP_RES_COMPARE __MSABI_LONG(&h6f)
#define LDAP_RES_SESSION __MSABI_LONG(&h72)
#define LDAP_RES_REFERRAL __MSABI_LONG(&h73)
#define LDAP_RES_EXTENDED __MSABI_LONG(&h78)
#define LDAP_RES_ANY __MSABI_LONG(-1)
#define LDAP_INVALID_CMD &hff
#define LDAP_INVALID_RES &hff

type LDAP_RETCODE as long
enum
	LDAP_SUCCESS = &h00
	LDAP_OPERATIONS_ERROR = &h01
	LDAP_PROTOCOL_ERROR = &h02
	LDAP_TIMELIMIT_EXCEEDED = &h03
	LDAP_SIZELIMIT_EXCEEDED = &h04
	LDAP_COMPARE_FALSE = &h05
	LDAP_COMPARE_TRUE = &h06
	LDAP_AUTH_METHOD_NOT_SUPPORTED = &h07
	LDAP_STRONG_AUTH_REQUIRED = &h08
	LDAP_REFERRAL_V2 = &h09
	LDAP_PARTIAL_RESULTS = &h09
	LDAP_REFERRAL = &h0a
	LDAP_ADMIN_LIMIT_EXCEEDED = &h0b
	LDAP_UNAVAILABLE_CRIT_EXTENSION = &h0c
	LDAP_CONFIDENTIALITY_REQUIRED = &h0d
	LDAP_SASL_BIND_IN_PROGRESS = &h0e
	LDAP_NO_SUCH_ATTRIBUTE = &h10
	LDAP_UNDEFINED_TYPE = &h11
	LDAP_INAPPROPRIATE_MATCHING = &h12
	LDAP_CONSTRAINT_VIOLATION = &h13
	LDAP_ATTRIBUTE_OR_VALUE_EXISTS = &h14
	LDAP_INVALID_SYNTAX = &h15
	LDAP_NO_SUCH_OBJECT = &h20
	LDAP_ALIAS_PROBLEM = &h21
	LDAP_INVALID_DN_SYNTAX = &h22
	LDAP_IS_LEAF = &h23
	LDAP_ALIAS_DEREF_PROBLEM = &h24
	LDAP_INAPPROPRIATE_AUTH = &h30
	LDAP_INVALID_CREDENTIALS = &h31
	LDAP_INSUFFICIENT_RIGHTS = &h32
	LDAP_BUSY = &h33
	LDAP_UNAVAILABLE = &h34
	LDAP_UNWILLING_TO_PERFORM = &h35
	LDAP_LOOP_DETECT = &h36
	LDAP_SORT_CONTROL_MISSING = &h3C
	LDAP_OFFSET_RANGE_ERROR = &h3D
	LDAP_NAMING_VIOLATION = &h40
	LDAP_OBJECT_CLASS_VIOLATION = &h41
	LDAP_NOT_ALLOWED_ON_NONLEAF = &h42
	LDAP_NOT_ALLOWED_ON_RDN = &h43
	LDAP_ALREADY_EXISTS = &h44
	LDAP_NO_OBJECT_CLASS_MODS = &h45
	LDAP_RESULTS_TOO_LARGE = &h46
	LDAP_AFFECTS_MULTIPLE_DSAS = &h47
	LDAP_VIRTUAL_LIST_VIEW_ERROR = &h4c
	LDAP_OTHER = &h50
	LDAP_SERVER_DOWN = &h51
	LDAP_LOCAL_ERROR = &h52
	LDAP_ENCODING_ERROR = &h53
	LDAP_DECODING_ERROR = &h54
	LDAP_TIMEOUT = &h55
	LDAP_AUTH_UNKNOWN = &h56
	LDAP_FILTER_ERROR = &h57
	LDAP_USER_CANCELLED = &h58
	LDAP_PARAM_ERROR = &h59
	LDAP_NO_MEMORY = &h5a
	LDAP_CONNECT_ERROR = &h5b
	LDAP_NOT_SUPPORTED = &h5c
	LDAP_NO_RESULTS_RETURNED = &h5e
	LDAP_CONTROL_NOT_FOUND = &h5d
	LDAP_MORE_RESULTS_TO_RETURN = &h5f
	LDAP_CLIENT_LOOP = &h60
	LDAP_REFERRAL_LIMIT_EXCEEDED = &h61
end enum

#define LDAP_AUTH_SIMPLE __MSABI_LONG(&h80)
#define LDAP_AUTH_SASL __MSABI_LONG(&h83)
#define LDAP_AUTH_OTHERKIND __MSABI_LONG(&h86)
#define LDAP_AUTH_SICILY (LDAP_AUTH_OTHERKIND or &h0200)
#define LDAP_AUTH_MSN (LDAP_AUTH_OTHERKIND or &h0800)
#define LDAP_AUTH_NTLM (LDAP_AUTH_OTHERKIND or &h1000)
#define LDAP_AUTH_DPA (LDAP_AUTH_OTHERKIND or &h2000)
#define LDAP_AUTH_NEGOTIATE (LDAP_AUTH_OTHERKIND or &h0400)
#define LDAP_AUTH_SSPI LDAP_AUTH_NEGOTIATE
#define LDAP_AUTH_DIGEST (LDAP_AUTH_OTHERKIND or &h4000)
#define LDAP_AUTH_EXTERNAL (LDAP_AUTH_OTHERKIND or &h0020)
#define LDAP_FILTER_AND &ha0
#define LDAP_FILTER_OR &ha1
#define LDAP_FILTER_NOT &ha2
#define LDAP_FILTER_EQUALITY &ha3
#define LDAP_FILTER_SUBSTRINGS &ha4
#define LDAP_FILTER_GE &ha5
#define LDAP_FILTER_LE &ha6
#define LDAP_FILTER_PRESENT &h87
#define LDAP_FILTER_APPROX &ha8
#define LDAP_FILTER_EXTENSIBLE &ha9
#define LDAP_SUBSTRING_INITIAL __MSABI_LONG(&h80)
#define LDAP_SUBSTRING_ANY __MSABI_LONG(&h81)
#define LDAP_SUBSTRING_FINAL __MSABI_LONG(&h82)
#define LDAP_DEREF_NEVER 0
#define LDAP_DEREF_SEARCHING 1
#define LDAP_DEREF_FINDING 2
#define LDAP_DEREF_ALWAYS 3
#define LDAP_NO_LIMIT 0
#define LDAP_OPT_DNS &h00000001
#define LDAP_OPT_CHASE_REFERRALS &h00000002
#define LDAP_OPT_RETURN_REFS &h00000004

#ifdef __FB_64BIT__
	type __ldap_ld_sb
		sb_sd as UINT_PTR
		Reserved1(0 to ((10 * sizeof(ULONG_)) + 1) - 1) as UCHAR
		sb_naddr as ULONG_PTR
		Reserved2(0 to (6 * sizeof(ULONG_)) - 1) as UCHAR
	end type

	type ldap
		ld_sb as __ldap_ld_sb
		ld_host as PCHAR
		ld_version as ULONG_
		ld_lberoptions as UCHAR
		ld_deref as ULONG_
		ld_timelimit as ULONG_
		ld_sizelimit as ULONG_
		ld_errno as ULONG_
		ld_matched as PCHAR
		ld_error as PCHAR
		ld_msgid as ULONG_
		Reserved3(0 to ((6 * sizeof(ULONG_)) + 1) - 1) as UCHAR
		ld_cldaptries as ULONG_
		ld_cldaptimeout as ULONG_
		ld_refhoplimit as ULONG_
		ld_options as ULONG_
	end type
#else
	type __ldap_ld_sb field = 4
		sb_sd as UINT_PTR
		Reserved1(0 to ((10 * sizeof(ULONG_)) + 1) - 1) as UCHAR
		sb_naddr as ULONG_PTR
		Reserved2(0 to (6 * sizeof(ULONG_)) - 1) as UCHAR
	end type

	type ldap field = 4
		ld_sb as __ldap_ld_sb
		ld_host as PCHAR
		ld_version as ULONG_
		ld_lberoptions as UCHAR
		ld_deref as ULONG_
		ld_timelimit as ULONG_
		ld_sizelimit as ULONG_
		ld_errno as ULONG_
		ld_matched as PCHAR
		ld_error as PCHAR
		ld_msgid as ULONG_
		Reserved3(0 to ((6 * sizeof(ULONG_)) + 1) - 1) as UCHAR
		ld_cldaptries as ULONG_
		ld_cldaptimeout as ULONG_
		ld_refhoplimit as ULONG_
		ld_options as ULONG_
	end type
#endif

type LDAP_ as ldap
type PLDAP as ldap ptr

#ifdef __FB_64BIT__
	type l_timeval
		tv_sec as LONG_
		tv_usec as LONG_
	end type
#else
	type l_timeval field = 4
		tv_sec as LONG_
		tv_usec as LONG_
	end type
#endif

type LDAP_TIMEVAL as l_timeval
type PLDAP_TIMEVAL as l_timeval ptr

#ifdef __FB_64BIT__
	type berval
		bv_len as ULONG_
		bv_val as PCHAR
	end type
#else
	type berval field = 4
		bv_len as ULONG_
		bv_val as PCHAR
	end type
#endif

type LDAP_BERVAL as berval
type PLDAP_BERVAL as berval ptr
type BERVAL_ as berval
type PBERVAL as berval ptr
type BerValue as berval

#ifdef __FB_64BIT__
	type ldapmsg
		lm_msgid as ULONG_
		lm_msgtype as ULONG_
		lm_ber as PVOID
		lm_chain as ldapmsg ptr
		lm_next as ldapmsg ptr
		lm_time as ULONG_
		Connection as PLDAP
		Request as PVOID
		lm_returncode as ULONG_
		lm_referral as USHORT_
		lm_chased as BOOLEAN
		lm_eom as BOOLEAN
		ConnectionReferenced as BOOLEAN
	end type
#else
	type ldapmsg field = 4
		lm_msgid as ULONG_
		lm_msgtype as ULONG_
		lm_ber as PVOID
		lm_chain as ldapmsg ptr
		lm_next as ldapmsg ptr
		lm_time as ULONG_
		Connection as PLDAP
		Request as PVOID
		lm_returncode as ULONG_
		lm_referral as USHORT_
		lm_chased as BOOLEAN
		lm_eom as BOOLEAN
		ConnectionReferenced as BOOLEAN
	end type
#endif

type LDAPMessage as ldapmsg
type PLDAPMessage as ldapmsg ptr

#ifdef __FB_64BIT__
	type ldapcontrolA
		ldctl_oid as PCHAR
		ldctl_value as berval
		ldctl_iscritical as BOOLEAN
	end type
#else
	type ldapcontrolA field = 4
		ldctl_oid as PCHAR
		ldctl_value as berval
		ldctl_iscritical as BOOLEAN
	end type
#endif

type LDAPControlA_ as ldapcontrolA
type PLDAPControlA as ldapcontrolA ptr

#ifdef __FB_64BIT__
	type ldapcontrolW
		ldctl_oid as PWCHAR
		ldctl_value as berval
		ldctl_iscritical as BOOLEAN
	end type
#else
	type ldapcontrolW field = 4
		ldctl_oid as PWCHAR
		ldctl_value as berval
		ldctl_iscritical as BOOLEAN
	end type
#endif

type LDAPControlW_ as ldapcontrolW
type PLDAPControlW as ldapcontrolW ptr

#ifdef UNICODE
	#define LDAPControl LDAPControlW_
	#define PLDAPControl PLDAPControlW
#else
	#define LDAPControl LDAPControlA_
	#define PLDAPControl PLDAPControlA
#endif

#define LDAP_CONTROL_REFERRALS_W wstr("1.2.840.113556.1.4.616")
#define LDAP_CONTROL_REFERRALS "1.2.840.113556.1.4.616"
#define LDAP_MOD_ADD &h00
#define LDAP_MOD_DELETE &h01
#define LDAP_MOD_REPLACE &h02
#define LDAP_MOD_BVALUES &h80

#ifdef __FB_64BIT__
	union __ldapmodW_mod_vals
		modv_strvals as PWCHAR ptr
		modv_bvals as berval ptr ptr
	end union

	type ldapmodW
		mod_op as ULONG_
		mod_type as PWCHAR
		mod_vals as __ldapmodW_mod_vals
	end type
#else
	union __ldapmodW_mod_vals field = 4
		modv_strvals as PWCHAR ptr
		modv_bvals as berval ptr ptr
	end union

	type ldapmodW field = 4
		mod_op as ULONG_
		mod_type as PWCHAR
		mod_vals as __ldapmodW_mod_vals
	end type
#endif

type LDAPModW_ as ldapmodW
type PLDAPModW as ldapmodW ptr

#ifdef __FB_64BIT__
	union __ldapmodA_mod_vals
		modv_strvals as PCHAR ptr
		modv_bvals as berval ptr ptr
	end union

	type ldapmodA
		mod_op as ULONG_
		mod_type as PCHAR
		mod_vals as __ldapmodA_mod_vals
	end type
#else
	union __ldapmodA_mod_vals field = 4
		modv_strvals as PCHAR ptr
		modv_bvals as berval ptr ptr
	end union

	type ldapmodA field = 4
		mod_op as ULONG_
		mod_type as PCHAR
		mod_vals as __ldapmodA_mod_vals
	end type
#endif

type LDAPModA_ as ldapmodA
type PLDAPModA as ldapmodA ptr

#ifdef UNICODE
	#define LDAPMod LDAPModW_
	#define PLDAPMod PLDAPModW
#else
	#define LDAPMod LDAPModA_
	#define PLDAPMod PLDAPModA
#endif

#ifndef __FB_64BIT__
	declare function ldap_openW(byval HostName as const PWCHAR, byval PortNumber as ULONG_) as LDAP_ ptr
#endif

#define LDAP_IS_CLDAP(ld) ((ld)->ld_sb.sb_naddr > 0)
#define mod_values mod_vals.modv_strvals
#define mod_bvalues mod_vals.modv_bvals
#define NAME_ERROR(n) ((n and &hf0) = &h20)

#ifdef __FB_64BIT__
	declare function ldap_openW(byval HostName as const PWCHAR, byval PortNumber as ULONG_) as LDAP_ ptr
#endif

declare function ldap_openA(byval HostName as const PCHAR, byval PortNumber as ULONG_) as LDAP_ ptr
declare function ldap_initW(byval HostName as const PWCHAR, byval PortNumber as ULONG_) as LDAP_ ptr
declare function ldap_initA(byval HostName as const PCHAR, byval PortNumber as ULONG_) as LDAP_ ptr
declare function ldap_sslinitW(byval HostName as PWCHAR, byval PortNumber as ULONG_, byval secure as long) as LDAP_ ptr
declare function ldap_sslinitA(byval HostName as PCHAR, byval PortNumber as ULONG_, byval secure as long) as LDAP_ ptr
declare function ldap_connect(byval ld as LDAP_ ptr, byval timeout as l_timeval ptr) as ULONG_

#ifdef UNICODE
	#define ldap_open ldap_openW
	#define ldap_init ldap_initW
	#define ldap_sslinit ldap_sslinitW
#else
	declare function ldap_open(byval HostName as PCHAR, byval PortNumber as ULONG_) as LDAP_ ptr
	declare function ldap_init(byval HostName as PCHAR, byval PortNumber as ULONG_) as LDAP_ ptr
	declare function ldap_sslinit(byval HostName as PCHAR, byval PortNumber as ULONG_, byval secure as long) as LDAP_ ptr
#endif

declare function cldap_openW(byval HostName as PWCHAR, byval PortNumber as ULONG_) as LDAP_ ptr
declare function cldap_openA(byval HostName as PCHAR, byval PortNumber as ULONG_) as LDAP_ ptr

#ifdef UNICODE
	#define cldap_open cldap_openW
#else
	declare function cldap_open(byval HostName as PCHAR, byval PortNumber as ULONG_) as LDAP_ ptr
#endif

declare function ldap_unbind(byval ld as LDAP_ ptr) as ULONG_
declare function ldap_unbind_s(byval ld as LDAP_ ptr) as ULONG_
declare function ldap_get_option(byval ld as LDAP_ ptr, byval option_ as long, byval outvalue as any ptr) as ULONG_
declare function ldap_get_optionW(byval ld as LDAP_ ptr, byval option_ as long, byval outvalue as any ptr) as ULONG_
declare function ldap_set_option(byval ld as LDAP_ ptr, byval option_ as long, byval invalue as const any ptr) as ULONG_
declare function ldap_set_optionW(byval ld as LDAP_ ptr, byval option_ as long, byval invalue as const any ptr) as ULONG_

#ifdef UNICODE
	#define ldap_get_option_ ldap_get_optionW
	#define ldap_set_option_ ldap_set_optionW
#endif

#define LDAP_OPT_API_INFO &h00
#define LDAP_OPT_DESC &h01
#define LDAP_OPT_DEREF &h02
#define LDAP_OPT_SIZELIMIT &h03
#define LDAP_OPT_TIMELIMIT &h04
#define LDAP_OPT_THREAD_FN_PTRS &h05
#define LDAP_OPT_REBIND_FN &h06
#define LDAP_OPT_REBIND_ARG &h07
#define LDAP_OPT_REFERRALS &h08
#define LDAP_OPT_RESTART &h09
#define LDAP_OPT_SSL &h0a
#define LDAP_OPT_IO_FN_PTRS &h0b
#define LDAP_OPT_CACHE_FN_PTRS &h0d
#define LDAP_OPT_CACHE_STRATEGY &h0e
#define LDAP_OPT_CACHE_ENABLE &h0f
#define LDAP_OPT_REFERRAL_HOP_LIMIT &h10
#define LDAP_OPT_PROTOCOL_VERSION &h11
#define LDAP_OPT_VERSION &h11
#define LDAP_OPT_API_FEATURE_INFO &h15
#define LDAP_OPT_HOST_NAME &h30
#define LDAP_OPT_ERROR_NUMBER &h31
#define LDAP_OPT_ERROR_STRING &h32
#define LDAP_OPT_SERVER_ERROR &h33
#define LDAP_OPT_SERVER_EXT_ERROR &h34
#define LDAP_OPT_HOST_REACHABLE &h3E
#define LDAP_OPT_PING_KEEP_ALIVE &h36
#define LDAP_OPT_PING_WAIT_TIME &h37
#define LDAP_OPT_PING_LIMIT &h38
#define LDAP_OPT_DNSDOMAIN_NAME &h3B
#define LDAP_OPT_GETDSNAME_FLAGS &h3D
#define LDAP_OPT_PROMPT_CREDENTIALS &h3F
#define LDAP_OPT_AUTO_RECONNECT &h91
#define LDAP_OPT_SSPI_FLAGS &h92
#define LDAP_OPT_SSL_INFO &h93
#define LDAP_OPT_TLS LDAP_OPT_SSL
#define LDAP_OPT_TLS_INFO LDAP_OPT_SSL_INFO
#define LDAP_OPT_SIGN &h95
#define LDAP_OPT_ENCRYPT &h96
#define LDAP_OPT_SASL_METHOD &h97
#define LDAP_OPT_AREC_EXCLUSIVE &h98
#define LDAP_OPT_SECURITY_CONTEXT &h99
#define LDAP_OPT_ROOTDSE_CACHE &h9a
#define LDAP_OPT_TCP_KEEPALIVE &h40
#define LDAP_OPT_FAST_CONCURRENT_BIND &h41
#define LDAP_OPT_SEND_TIMEOUT &h42
#define LDAP_OPT_ON cptr(any ptr, 1)
#define LDAP_OPT_OFF cptr(any ptr, 0)
#define LDAP_CHASE_SUBORDINATE_REFERRALS &h00000020
#define LDAP_CHASE_EXTERNAL_REFERRALS &h00000040

declare function ldap_simple_bindW(byval ld as LDAP_ ptr, byval dn as PWCHAR, byval passwd as PWCHAR) as ULONG_
declare function ldap_simple_bindA(byval ld as LDAP_ ptr, byval dn as PCHAR, byval passwd as PCHAR) as ULONG_
declare function ldap_simple_bind_sW(byval ld as LDAP_ ptr, byval dn as PWCHAR, byval passwd as PWCHAR) as ULONG_
declare function ldap_simple_bind_sA(byval ld as LDAP_ ptr, byval dn as PCHAR, byval passwd as PCHAR) as ULONG_
declare function ldap_bindW(byval ld as LDAP_ ptr, byval dn as PWCHAR, byval cred as PWCHAR, byval method as ULONG_) as ULONG_
declare function ldap_bindA(byval ld as LDAP_ ptr, byval dn as PCHAR, byval cred as PCHAR, byval method as ULONG_) as ULONG_
declare function ldap_bind_sW(byval ld as LDAP_ ptr, byval dn as PWCHAR, byval cred as PWCHAR, byval method as ULONG_) as ULONG_
declare function ldap_bind_sA(byval ld as LDAP_ ptr, byval dn as PCHAR, byval cred as PCHAR, byval method as ULONG_) as ULONG_
declare function ldap_sasl_bindA(byval ExternalHandle as LDAP_ ptr, byval DistName as const PCHAR, byval AuthMechanism as const PCHAR, byval cred as const BERVAL_ ptr, byval ServerCtrls as PLDAPControlA ptr, byval ClientCtrls as PLDAPControlA ptr, byval MessageNumber as long ptr) as INT_
declare function ldap_sasl_bindW(byval ExternalHandle as LDAP_ ptr, byval DistName as const PWCHAR, byval AuthMechanism as const PWCHAR, byval cred as const BERVAL_ ptr, byval ServerCtrls as PLDAPControlW ptr, byval ClientCtrls as PLDAPControlW ptr, byval MessageNumber as long ptr) as INT_
declare function ldap_sasl_bind_sA(byval ExternalHandle as LDAP_ ptr, byval DistName as const PCHAR, byval AuthMechanism as const PCHAR, byval cred as const BERVAL_ ptr, byval ServerCtrls as PLDAPControlA ptr, byval ClientCtrls as PLDAPControlA ptr, byval ServerData as PBERVAL ptr) as INT_
declare function ldap_sasl_bind_sW(byval ExternalHandle as LDAP_ ptr, byval DistName as const PWCHAR, byval AuthMechanism as const PWCHAR, byval cred as const BERVAL_ ptr, byval ServerCtrls as PLDAPControlW ptr, byval ClientCtrls as PLDAPControlW ptr, byval ServerData as PBERVAL ptr) as INT_

#ifdef UNICODE
	#define ldap_simple_bind ldap_simple_bindW
	#define ldap_simple_bind_s ldap_simple_bind_sW
	#define ldap_bind ldap_bindW
	#define ldap_bind_s ldap_bind_sW
	#define ldap_sasl_bind ldap_sasl_bindW
	#define ldap_sasl_bind_s ldap_sasl_bind_sW
#else
	declare function ldap_simple_bind(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval passwd as const PCHAR) as ULONG_
	declare function ldap_simple_bind_s(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval passwd as const PCHAR) as ULONG_
	declare function ldap_bind(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval cred as const PCHAR, byval method as ULONG_) as ULONG_
	declare function ldap_bind_s(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval cred as const PCHAR, byval method as ULONG_) as ULONG_

	#define ldap_sasl_bind ldap_sasl_bindA
	#define ldap_sasl_bind_s ldap_sasl_bind_sA
#endif

#define LDAP_SCOPE_BASE &h00
#define LDAP_SCOPE_ONELEVEL &h01
#define LDAP_SCOPE_SUBTREE &h02

declare function ldap_searchW(byval ld as LDAP_ ptr, byval base_ as const PWCHAR, byval scope_ as ULONG_, byval filter as const PWCHAR, byval attrs as PWCHAR ptr, byval attrsonly as ULONG_) as ULONG_
declare function ldap_searchA(byval ld as LDAP_ ptr, byval base_ as const PCHAR, byval scope_ as ULONG_, byval filter as const PCHAR, byval attrs as PCHAR ptr, byval attrsonly as ULONG_) as ULONG_
declare function ldap_search_sW(byval ld as LDAP_ ptr, byval base_ as const PWCHAR, byval scope_ as ULONG_, byval filter as const PWCHAR, byval attrs as PWCHAR ptr, byval attrsonly as ULONG_, byval res as LDAPMessage ptr ptr) as ULONG_
declare function ldap_search_sA(byval ld as LDAP_ ptr, byval base_ as const PCHAR, byval scope_ as ULONG_, byval filter as const PCHAR, byval attrs as PCHAR ptr, byval attrsonly as ULONG_, byval res as LDAPMessage ptr ptr) as ULONG_
declare function ldap_search_stW(byval ld as LDAP_ ptr, byval base_ as const PWCHAR, byval scope_ as ULONG_, byval filter as const PWCHAR, byval attrs as PWCHAR ptr, byval attrsonly as ULONG_, byval timeout as l_timeval ptr, byval res as LDAPMessage ptr ptr) as ULONG_
declare function ldap_search_stA(byval ld as LDAP_ ptr, byval base_ as const PCHAR, byval scope_ as ULONG_, byval filter as const PCHAR, byval attrs as PCHAR ptr, byval attrsonly as ULONG_, byval timeout as l_timeval ptr, byval res as LDAPMessage ptr ptr) as ULONG_
declare function ldap_search_extW(byval ld as LDAP_ ptr, byval base_ as const PWCHAR, byval scope_ as ULONG_, byval filter as const PWCHAR, byval attrs as PWCHAR ptr, byval attrsonly as ULONG_, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr, byval TimeLimit as ULONG_, byval SizeLimit as ULONG_, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_search_extA(byval ld as LDAP_ ptr, byval base_ as const PCHAR, byval scope_ as ULONG_, byval filter as const PCHAR, byval attrs as PCHAR ptr, byval attrsonly as ULONG_, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval TimeLimit as ULONG_, byval SizeLimit as ULONG_, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_search_ext_sW(byval ld as LDAP_ ptr, byval base_ as const PWCHAR, byval scope_ as ULONG_, byval filter as const PWCHAR, byval attrs as PWCHAR ptr, byval attrsonly as ULONG_, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr, byval timeout as l_timeval ptr, byval SizeLimit as ULONG_, byval res as LDAPMessage ptr ptr) as ULONG_
declare function ldap_search_ext_sA(byval ld as LDAP_ ptr, byval base_ as const PCHAR, byval scope_ as ULONG_, byval filter as const PCHAR, byval attrs as PCHAR ptr, byval attrsonly as ULONG_, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval timeout as l_timeval ptr, byval SizeLimit as ULONG_, byval res as LDAPMessage ptr ptr) as ULONG_

#ifdef UNICODE
	#define ldap_search ldap_searchW
	#define ldap_search_s ldap_search_sW
	#define ldap_search_st ldap_search_stW
	#define ldap_search_ext ldap_search_extW
	#define ldap_search_ext_s ldap_search_ext_sW
#else
	declare function ldap_search(byval ld as LDAP_ ptr, byval base_ as PCHAR, byval scope_ as ULONG_, byval filter as PCHAR, byval attrs as PCHAR ptr, byval attrsonly as ULONG_) as ULONG_
	declare function ldap_search_s(byval ld as LDAP_ ptr, byval base_ as PCHAR, byval scope_ as ULONG_, byval filter as PCHAR, byval attrs as PCHAR ptr, byval attrsonly as ULONG_, byval res as LDAPMessage ptr ptr) as ULONG_
	declare function ldap_search_st(byval ld as LDAP_ ptr, byval base_ as PCHAR, byval scope_ as ULONG_, byval filter as PCHAR, byval attrs as PCHAR ptr, byval attrsonly as ULONG_, byval timeout as l_timeval ptr, byval res as LDAPMessage ptr ptr) as ULONG_
	declare function ldap_search_ext(byval ld as LDAP_ ptr, byval base_ as PCHAR, byval scope_ as ULONG_, byval filter as PCHAR, byval attrs as PCHAR ptr, byval attrsonly as ULONG_, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval TimeLimit as ULONG_, byval SizeLimit as ULONG_, byval MessageNumber as ULONG_ ptr) as ULONG_
	declare function ldap_search_ext_s(byval ld as LDAP_ ptr, byval base_ as PCHAR, byval scope_ as ULONG_, byval filter as PCHAR, byval attrs as PCHAR ptr, byval attrsonly as ULONG_, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval timeout as l_timeval ptr, byval SizeLimit as ULONG_, byval res as LDAPMessage ptr ptr) as ULONG_
#endif

declare function ldap_check_filterW(byval ld as LDAP_ ptr, byval SearchFilter as PWCHAR) as ULONG_
declare function ldap_check_filterA(byval ld as LDAP_ ptr, byval SearchFilter as PCHAR) as ULONG_

#ifdef UNICODE
	#define ldap_check_filter ldap_check_filterW
#else
	#define ldap_check_filter ldap_check_filterA
#endif

declare function ldap_modifyW(byval ld as LDAP_ ptr, byval dn as PWCHAR, byval mods as LDAPModW_ ptr ptr) as ULONG_
declare function ldap_modifyA(byval ld as LDAP_ ptr, byval dn as PCHAR, byval mods as LDAPModA_ ptr ptr) as ULONG_
declare function ldap_modify_sW(byval ld as LDAP_ ptr, byval dn as PWCHAR, byval mods as LDAPModW_ ptr ptr) as ULONG_
declare function ldap_modify_sA(byval ld as LDAP_ ptr, byval dn as PCHAR, byval mods as LDAPModA_ ptr ptr) as ULONG_
declare function ldap_modify_extW(byval ld as LDAP_ ptr, byval dn as const PWCHAR, byval mods as LDAPModW_ ptr ptr, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_modify_extA(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval mods as LDAPModA_ ptr ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_modify_ext_sW(byval ld as LDAP_ ptr, byval dn as const PWCHAR, byval mods as LDAPModW_ ptr ptr, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr) as ULONG_
declare function ldap_modify_ext_sA(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval mods as LDAPModA_ ptr ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr) as ULONG_

#ifdef UNICODE
	#define ldap_modify ldap_modifyW
	#define ldap_modify_s ldap_modify_sW
	#define ldap_modify_ext ldap_modify_extW
	#define ldap_modify_ext_s ldap_modify_ext_sW
#else
	declare function ldap_modify(byval ld as LDAP_ ptr, byval dn as PCHAR, byval mods as LDAPModA_ ptr ptr) as ULONG_
	declare function ldap_modify_s(byval ld as LDAP_ ptr, byval dn as PCHAR, byval mods as LDAPModA_ ptr ptr) as ULONG_
	declare function ldap_modify_ext(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval mods as LDAPModA_ ptr ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
	declare function ldap_modify_ext_s(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval mods as LDAPModA_ ptr ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr) as ULONG_
#endif

declare function ldap_modrdn2W(byval ExternalHandle as LDAP_ ptr, byval DistinguishedName as const PWCHAR, byval NewDistinguishedName as const PWCHAR, byval DeleteOldRdn as INT_) as ULONG_
declare function ldap_modrdn2A(byval ExternalHandle as LDAP_ ptr, byval DistinguishedName as const PCHAR, byval NewDistinguishedName as const PCHAR, byval DeleteOldRdn as INT_) as ULONG_
declare function ldap_modrdnW(byval ExternalHandle as LDAP_ ptr, byval DistinguishedName as const PWCHAR, byval NewDistinguishedName as const PWCHAR) as ULONG_
declare function ldap_modrdnA(byval ExternalHandle as LDAP_ ptr, byval DistinguishedName as const PCHAR, byval NewDistinguishedName as const PCHAR) as ULONG_
declare function ldap_modrdn2_sW(byval ExternalHandle as LDAP_ ptr, byval DistinguishedName as const PWCHAR, byval NewDistinguishedName as const PWCHAR, byval DeleteOldRdn as INT_) as ULONG_
declare function ldap_modrdn2_sA(byval ExternalHandle as LDAP_ ptr, byval DistinguishedName as const PCHAR, byval NewDistinguishedName as const PCHAR, byval DeleteOldRdn as INT_) as ULONG_
declare function ldap_modrdn_sW(byval ExternalHandle as LDAP_ ptr, byval DistinguishedName as const PWCHAR, byval NewDistinguishedName as const PWCHAR) as ULONG_
declare function ldap_modrdn_sA(byval ExternalHandle as LDAP_ ptr, byval DistinguishedName as const PCHAR, byval NewDistinguishedName as const PCHAR) as ULONG_

#ifdef UNICODE
	#define ldap_modrdn2 ldap_modrdn2W
	#define ldap_modrdn ldap_modrdnW
	#define ldap_modrdn2_s ldap_modrdn2_sW
	#define ldap_modrdn_s ldap_modrdn_sW
#else
	declare function ldap_modrdn2(byval ExternalHandle as LDAP_ ptr, byval DistinguishedName as const PCHAR, byval NewDistinguishedName as const PCHAR, byval DeleteOldRdn as INT_) as ULONG_
	declare function ldap_modrdn(byval ExternalHandle as LDAP_ ptr, byval DistinguishedName as const PCHAR, byval NewDistinguishedName as const PCHAR) as ULONG_
	declare function ldap_modrdn2_s(byval ExternalHandle as LDAP_ ptr, byval DistinguishedName as const PCHAR, byval NewDistinguishedName as const PCHAR, byval DeleteOldRdn as INT_) as ULONG_
	declare function ldap_modrdn_s(byval ExternalHandle as LDAP_ ptr, byval DistinguishedName as const PCHAR, byval NewDistinguishedName as const PCHAR) as ULONG_
#endif

declare function ldap_rename_extW(byval ld as LDAP_ ptr, byval dn as const PWCHAR, byval NewRDN as const PWCHAR, byval NewParent as const PWCHAR, byval DeleteOldRdn as INT_, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_rename_extA(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval NewRDN as const PCHAR, byval NewParent as const PCHAR, byval DeleteOldRdn as INT_, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_rename_ext_sW(byval ld as LDAP_ ptr, byval dn as const PWCHAR, byval NewRDN as const PWCHAR, byval NewParent as const PWCHAR, byval DeleteOldRdn as INT_, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr) as ULONG_
declare function ldap_rename_ext_sA(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval NewRDN as const PCHAR, byval NewParent as const PCHAR, byval DeleteOldRdn as INT_, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr) as ULONG_

#ifdef UNICODE
	#define ldap_rename ldap_rename_extW
	#define ldap_rename_s ldap_rename_ext_sW
	#define ldap_rename_ext ldap_rename_extW
	#define ldap_rename_ext_s ldap_rename_ext_sW
#else
	#define ldap_rename ldap_rename_extA
	#define ldap_rename_s ldap_rename_ext_sA

	declare function ldap_rename_ext(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval NewRDN as const PCHAR, byval NewParent as const PCHAR, byval DeleteOldRdn as INT_, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
	declare function ldap_rename_ext_s(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval NewRDN as const PCHAR, byval NewParent as const PCHAR, byval DeleteOldRdn as INT_, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr) as ULONG_
#endif

declare function ldap_addW(byval ld as LDAP_ ptr, byval dn as PWCHAR, byval attrs as LDAPModW_ ptr ptr) as ULONG_
declare function ldap_addA(byval ld as LDAP_ ptr, byval dn as PCHAR, byval attrs as LDAPModA_ ptr ptr) as ULONG_
declare function ldap_add_sW(byval ld as LDAP_ ptr, byval dn as PWCHAR, byval attrs as LDAPModW_ ptr ptr) as ULONG_
declare function ldap_add_sA(byval ld as LDAP_ ptr, byval dn as PCHAR, byval attrs as LDAPModA_ ptr ptr) as ULONG_
declare function ldap_add_extW(byval ld as LDAP_ ptr, byval dn as const PWCHAR, byval attrs as LDAPModW_ ptr ptr, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_add_extA(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval attrs as LDAPModA_ ptr ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_add_ext_sW(byval ld as LDAP_ ptr, byval dn as const PWCHAR, byval attrs as LDAPModW_ ptr ptr, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr) as ULONG_
declare function ldap_add_ext_sA(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval attrs as LDAPModA_ ptr ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr) as ULONG_

#ifdef UNICODE
	#define ldap_add ldap_addW
	#define ldap_add_s ldap_add_sW
	#define ldap_add_ext ldap_add_extW
	#define ldap_add_ext_s ldap_add_ext_sW
#else
	declare function ldap_add(byval ld as LDAP_ ptr, byval dn as PCHAR, byval attrs as LDAPModA_ ptr ptr) as ULONG_
	declare function ldap_add_s(byval ld as LDAP_ ptr, byval dn as PCHAR, byval attrs as LDAPModA_ ptr ptr) as ULONG_
	declare function ldap_add_ext(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval attrs as LDAPModA_ ptr ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
	declare function ldap_add_ext_s(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval attrs as LDAPModA_ ptr ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr) as ULONG_
#endif

declare function ldap_compareW(byval ld as LDAP_ ptr, byval dn as const PWCHAR, byval attr as const PWCHAR, byval value as PWCHAR) as ULONG_
declare function ldap_compareA(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval attr as const PCHAR, byval value as PCHAR) as ULONG_
declare function ldap_compare_sW(byval ld as LDAP_ ptr, byval dn as const PWCHAR, byval attr as const PWCHAR, byval value as PWCHAR) as ULONG_
declare function ldap_compare_sA(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval attr as const PCHAR, byval value as PCHAR) as ULONG_

#ifdef UNICODE
	#define ldap_compare ldap_compareW
	#define ldap_compare_s ldap_compare_sW
#else
	declare function ldap_compare(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval attr as const PCHAR, byval value as PCHAR) as ULONG_
	declare function ldap_compare_s(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval attr as const PCHAR, byval value as PCHAR) as ULONG_
#endif

declare function ldap_compare_extW(byval ld as LDAP_ ptr, byval dn as const PWCHAR, byval Attr as const PWCHAR, byval Value as const PWCHAR, byval Data_ as berval ptr, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_compare_extA(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval Attr as const PCHAR, byval Value as const PCHAR, byval Data_ as berval ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_compare_ext_sW(byval ld as LDAP_ ptr, byval dn as const PWCHAR, byval Attr as const PWCHAR, byval Value as const PWCHAR, byval Data_ as berval ptr, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr) as ULONG_
declare function ldap_compare_ext_sA(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval Attr as const PCHAR, byval Value as const PCHAR, byval Data_ as berval ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr) as ULONG_

#ifdef UNICODE
	#define ldap_compare_ext ldap_compare_extW
	#define ldap_compare_ext_s ldap_compare_ext_sW
#else
	declare function ldap_compare_ext(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval Attr as const PCHAR, byval Value as const PCHAR, byval Data_ as berval ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
	declare function ldap_compare_ext_s(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval Attr as const PCHAR, byval Value as const PCHAR, byval Data_ as berval ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr) as ULONG_
#endif

declare function ldap_deleteW(byval ld as LDAP_ ptr, byval dn as const PWCHAR) as ULONG_
declare function ldap_deleteA(byval ld as LDAP_ ptr, byval dn as const PCHAR) as ULONG_
declare function ldap_delete_sW(byval ld as LDAP_ ptr, byval dn as const PWCHAR) as ULONG_
declare function ldap_delete_sA(byval ld as LDAP_ ptr, byval dn as const PCHAR) as ULONG_
declare function ldap_delete_extW(byval ld as LDAP_ ptr, byval dn as const PWCHAR, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_delete_extA(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_delete_ext_sW(byval ld as LDAP_ ptr, byval dn as const PWCHAR, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr) as ULONG_
declare function ldap_delete_ext_sA(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr) as ULONG_

#ifdef UNICODE
	#define ldap_delete ldap_deleteW
	#define ldap_delete_ext ldap_delete_extW
	#define ldap_delete_s ldap_delete_sW
	#define ldap_delete_ext_s ldap_delete_ext_sW
#else
	declare function ldap_delete(byval ld as LDAP_ ptr, byval dn as PCHAR) as ULONG_
	declare function ldap_delete_s(byval ld as LDAP_ ptr, byval dn as PCHAR) as ULONG_
	declare function ldap_delete_ext(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
	declare function ldap_delete_ext_s(byval ld as LDAP_ ptr, byval dn as const PCHAR, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr) as ULONG_
#endif

declare function ldap_abandon(byval ld as LDAP_ ptr, byval msgid as ULONG_) as ULONG_

#define LDAP_MSG_ONE 0
#define LDAP_MSG_ALL 1
#define LDAP_MSG_RECEIVED 2

declare function ldap_result(byval ld as LDAP_ ptr, byval msgid as ULONG_, byval all as ULONG_, byval timeout as l_timeval ptr, byval res as LDAPMessage ptr ptr) as ULONG_
declare function ldap_msgfree(byval res as LDAPMessage ptr) as ULONG_
declare function ldap_result2error(byval ld as LDAP_ ptr, byval res as LDAPMessage ptr, byval freeit as ULONG_) as ULONG_
declare function ldap_parse_resultW(byval Connection as LDAP_ ptr, byval ResultMessage as LDAPMessage ptr, byval ReturnCode as ULONG_ ptr, byval MatchedDNs as PWCHAR ptr, byval ErrorMessage as PWCHAR ptr, byval Referrals as PWCHAR ptr ptr, byval ServerControls as PLDAPControlW ptr ptr, byval Freeit as BOOLEAN) as ULONG_
declare function ldap_parse_resultA(byval Connection as LDAP_ ptr, byval ResultMessage as LDAPMessage ptr, byval ReturnCode as ULONG_ ptr, byval MatchedDNs as PCHAR ptr, byval ErrorMessage as PCHAR ptr, byval Referrals as PCHAR ptr ptr, byval ServerControls as PLDAPControlA ptr ptr, byval Freeit as BOOLEAN) as ULONG_
declare function ldap_parse_extended_resultA(byval Connection as LDAP_ ptr, byval ResultMessage as LDAPMessage ptr, byval ResultOID as PCHAR ptr, byval ResultData as berval ptr ptr, byval Freeit as BOOLEAN) as ULONG_
declare function ldap_parse_extended_resultW(byval Connection as LDAP_ ptr, byval ResultMessage as LDAPMessage ptr, byval ResultOID as PWCHAR ptr, byval ResultData as berval ptr ptr, byval Freeit as BOOLEAN) as ULONG_
declare function ldap_controls_freeA(byval Controls as LDAPControlA_ ptr ptr) as ULONG_
declare function ldap_control_freeA(byval Controls as LDAPControlA_ ptr) as ULONG_
declare function ldap_controls_freeW(byval Control as LDAPControlW_ ptr ptr) as ULONG_
declare function ldap_control_freeW(byval Control as LDAPControlW_ ptr) as ULONG_
declare function ldap_free_controlsW(byval Controls as LDAPControlW_ ptr ptr) as ULONG_
declare function ldap_free_controlsA(byval Controls as LDAPControlA_ ptr ptr) as ULONG_

#ifdef UNICODE
	#define ldap_parse_result ldap_parse_resultW
	#define ldap_controls_free ldap_controls_freeW
	#define ldap_control_free ldap_control_freeW
	#define ldap_free_controls ldap_free_controlsW
	#define ldap_parse_extended_result ldap_parse_extended_resultW
#else
	#define ldap_parse_extended_result ldap_parse_extended_resultA

	declare function ldap_parse_result(byval Connection as LDAP_ ptr, byval ResultMessage as LDAPMessage ptr, byval ReturnCode as ULONG_ ptr, byval MatchedDNs as PCHAR ptr, byval ErrorMessage as PCHAR ptr, byval Referrals as PCHAR ptr ptr, byval ServerControls as PLDAPControlA ptr ptr, byval Freeit as BOOLEAN) as ULONG_
	declare function ldap_controls_free(byval Controls as LDAPControlA_ ptr ptr) as ULONG_
	declare function ldap_control_free(byval Control as LDAPControlA_ ptr) as ULONG_
	declare function ldap_free_controls(byval Controls as LDAPControlA_ ptr ptr) as ULONG_
#endif

declare function ldap_err2stringW(byval err_ as ULONG_) as PWCHAR
declare function ldap_err2stringA(byval err_ as ULONG_) as PCHAR

#ifdef UNICODE
	#define ldap_err2string ldap_err2stringW
#else
	declare function ldap_err2string(byval err_ as ULONG_) as PCHAR
#endif

declare sub ldap_perror(byval ld as LDAP_ ptr, byval msg as const PCHAR)
declare function ldap_first_entry(byval ld as LDAP_ ptr, byval res as LDAPMessage ptr) as LDAPMessage ptr
declare function ldap_next_entry(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr) as LDAPMessage ptr
declare function ldap_count_entries(byval ld as LDAP_ ptr, byval res as LDAPMessage ptr) as ULONG_

type berelement
	opaque as PCHAR
end type

type BerElement_ as berelement

#define NULLBER cptr(BerElement_ ptr, 0)

declare function ldap_first_attributeW(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr, byval ptr_ as BerElement_ ptr ptr) as PWCHAR
declare function ldap_first_attributeA(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr, byval ptr_ as BerElement_ ptr ptr) as PCHAR

#ifdef UNICODE
	#define ldap_first_attribute ldap_first_attributeW
#else
	declare function ldap_first_attribute(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr, byval ptr_ as BerElement_ ptr ptr) as PCHAR
#endif

declare function ldap_next_attributeW(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr, byval ptr_ as BerElement_ ptr) as PWCHAR
declare function ldap_next_attributeA(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr, byval ptr_ as BerElement_ ptr) as PCHAR

#ifdef UNICODE
	#define ldap_next_attribute ldap_next_attributeW
#else
	declare function ldap_next_attribute(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr, byval ptr_ as BerElement_ ptr) as PCHAR
#endif

declare function ldap_get_valuesW(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr, byval attr as const PWCHAR) as PWCHAR ptr
declare function ldap_get_valuesA(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr, byval attr as const PCHAR) as PCHAR ptr

#ifdef UNICODE
	#define ldap_get_values ldap_get_valuesW
#else
	declare function ldap_get_values(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr, byval attr as const PCHAR) as PCHAR ptr
#endif

declare function ldap_get_values_lenW(byval ExternalHandle as LDAP_ ptr, byval Message as LDAPMessage ptr, byval attr as const PWCHAR) as berval ptr ptr
declare function ldap_get_values_lenA(byval ExternalHandle as LDAP_ ptr, byval Message as LDAPMessage ptr, byval attr as const PCHAR) as berval ptr ptr

#ifdef UNICODE
	#define ldap_get_values_len ldap_get_values_lenW
#else
	declare function ldap_get_values_len(byval ExternalHandle as LDAP_ ptr, byval Message as LDAPMessage ptr, byval attr as const PCHAR) as berval ptr ptr
#endif

declare function ldap_count_valuesW(byval vals as PWCHAR ptr) as ULONG_
declare function ldap_count_valuesA(byval vals as PCHAR ptr) as ULONG_

#ifdef UNICODE
	#define ldap_count_values ldap_count_valuesW
#else
	declare function ldap_count_values(byval vals as PCHAR ptr) as ULONG_
#endif

declare function ldap_count_values_len(byval vals as berval ptr ptr) as ULONG_
declare function ldap_value_freeW(byval vals as PWCHAR ptr) as ULONG_
declare function ldap_value_freeA(byval vals as PCHAR ptr) as ULONG_

#ifdef UNICODE
	#define ldap_value_free ldap_value_freeW
#else
	declare function ldap_value_free(byval vals as PCHAR ptr) as ULONG_
#endif

declare function ldap_value_free_len(byval vals as berval ptr ptr) as ULONG_
declare function ldap_get_dnW(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr) as PWCHAR
declare function ldap_get_dnA(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr) as PCHAR

#ifdef UNICODE
	#define ldap_get_dn ldap_get_dnW
#else
	declare function ldap_get_dn(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr) as PCHAR
#endif

declare function ldap_explode_dnW(byval dn as const PWCHAR, byval notypes as ULONG_) as PWCHAR ptr
declare function ldap_explode_dnA(byval dn as const PCHAR, byval notypes as ULONG_) as PCHAR ptr

#ifdef UNICODE
	#define ldap_explode_dn ldap_explode_dnW
#else
	declare function ldap_explode_dn(byval dn as const PCHAR, byval notypes as ULONG_) as PCHAR ptr
#endif

declare function ldap_dn2ufnW(byval dn as const PWCHAR) as PWCHAR
declare function ldap_dn2ufnA(byval dn as const PCHAR) as PCHAR

#ifdef UNICODE
	#define ldap_dn2ufn ldap_dn2ufnW
#else
	declare function ldap_dn2ufn(byval dn as const PCHAR) as PCHAR
#endif

declare sub ldap_memfreeW(byval Block as PWCHAR)
declare sub ldap_memfreeA(byval Block as PCHAR)
declare sub ber_bvfree(byval bv as berval ptr)

#ifdef UNICODE
	#define ldap_memfree ldap_memfreeW
#else
	declare sub ldap_memfree(byval Block as PCHAR)
#endif

declare function ldap_ufn2dnW(byval ufn as const PWCHAR, byval pDn as PWCHAR ptr) as ULONG_
declare function ldap_ufn2dnA(byval ufn as const PCHAR, byval pDn as PCHAR ptr) as ULONG_

#ifdef UNICODE
	#define ldap_ufn2dn ldap_ufn2dnW
#else
	declare function ldap_ufn2dn(byval ufn as const PCHAR, byval pDn as PCHAR ptr) as ULONG_
#endif

#define LBER_USE_DER &h01
#define LBER_USE_INDEFINITE_LEN &h02
#define LBER_TRANSLATE_STRINGS &h04
#define LAPI_MAJOR_VER1 1
#define LAPI_MINOR_VER1 1

type ldap_version_info
	lv_size as ULONG_
	lv_major as ULONG_
	lv_minor as ULONG_
end type

type LDAP_VERSION_INFO_ as ldap_version_info
type PLDAP_VERSION_INFO as ldap_version_info ptr

declare function ldap_startup(byval version as PLDAP_VERSION_INFO, byval Instance as HANDLE ptr) as ULONG_

#define LDAP_API_INFO_VERSION 1
#define LDAP_API_VERSION 2004
#define LDAP_VERSION_MIN 2
#define LDAP_VERSION_MAX 3
#define LDAP_VENDOR_NAME "Microsoft Corporation."
#define LDAP_VENDOR_NAME_W wstr("Microsoft Corporation.")
#define LDAP_VENDOR_VERSION 510

type ldapapiinfoA
	ldapai_info_version as long
	ldapai_api_version as long
	ldapai_protocol_version as long
	ldapai_extensions as zstring ptr ptr
	ldapai_vendor_name as zstring ptr
	ldapai_vendor_version as long
end type

type LDAPAPIInfoA_ as ldapapiinfoA

type ldapapiinfoW
	ldapai_info_version as long
	ldapai_api_version as long
	ldapai_protocol_version as long
	ldapai_extensions as PWCHAR ptr
	ldapai_vendor_name as PWCHAR
	ldapai_vendor_version as long
end type

type LDAPAPIInfoW_ as ldapapiinfoW

#define LDAP_FEATURE_INFO_VERSION 1

type ldap_apifeature_infoA
	ldapaif_info_version as long
	ldapaif_name as zstring ptr
	ldapaif_version as long
end type

type LDAPAPIFeatureInfoA as ldap_apifeature_infoA

type ldap_apifeature_infoW
	ldapaif_info_version as long
	ldapaif_name as PWCHAR
	ldapaif_version as long
end type

type LDAPAPIFeatureInfoW as ldap_apifeature_infoW

#ifdef UNICODE
	#define LDAPAPIInfo LDAPAPIInfoW_
	#define LDAPAPIFeatureInfo LDAPAPIFeatureInfoW
#else
	#define LDAPAPIInfo LDAPAPIInfoA_
	#define LDAPAPIFeatureInfo LDAPAPIFeatureInfoA
#endif

declare function ldap_cleanup(byval hInstance as HANDLE) as ULONG_
declare function ldap_escape_filter_elementW(byval sourceFilterElement as PCHAR, byval sourceLength as ULONG_, byval destFilterElement as PWCHAR, byval destLength as ULONG_) as ULONG_
declare function ldap_escape_filter_elementA(byval sourceFilterElement as PCHAR, byval sourceLength as ULONG_, byval destFilterElement as PCHAR, byval destLength as ULONG_) as ULONG_

#ifdef UNICODE
	#define ldap_escape_filter_element ldap_escape_filter_elementW
#else
	declare function ldap_escape_filter_element(byval sourceFilterElement as PCHAR, byval sourceLength as ULONG_, byval destFilterElement as PCHAR, byval destLength as ULONG_) as ULONG_
#endif

declare function ldap_set_dbg_flags(byval NewFlags as ULONG_) as ULONG_

type DBGPRINT as function(byval Format as PCH, ...) as ULONG_

declare sub ldap_set_dbg_routine(byval DebugPrintRoutine as DBGPRINT)
declare function LdapUTF8ToUnicode(byval lpSrcStr as LPCSTR, byval cchSrc as long, byval lpDestStr as LPWSTR, byval cchDest as long) as long
declare function LdapUnicodeToUTF8(byval lpSrcStr as LPCWSTR, byval cchSrc as long, byval lpDestStr as LPSTR, byval cchDest as long) as long

#define LDAP_SERVER_SORT_OID "1.2.840.113556.1.4.473"
#define LDAP_SERVER_SORT_OID_W wstr("1.2.840.113556.1.4.473")
#define LDAP_SERVER_RESP_SORT_OID "1.2.840.113556.1.4.474"
#define LDAP_SERVER_RESP_SORT_OID_W wstr("1.2.840.113556.1.4.474")

type LDAPSearch_ as ldapsearch
type PLDAPSearch as ldapsearch ptr

type ldapsortkeyW
	sk_attrtype as PWCHAR
	sk_matchruleoid as PWCHAR
	sk_reverseorder as BOOLEAN
end type

type LDAPSortKeyW_ as ldapsortkeyW
type PLDAPSortKeyW as ldapsortkeyW ptr

type ldapsortkeyA
	sk_attrtype as PCHAR
	sk_matchruleoid as PCHAR
	sk_reverseorder as BOOLEAN
end type

type LDAPSortKeyA_ as ldapsortkeyA
type PLDAPSortKeyA as ldapsortkeyA ptr

#ifdef UNICODE
	#define LDAPSortKey LDAPSortKeyW_
	#define PLDAPSortKey PLDAPSortKeyW
#else
	#define LDAPSortKey LDAPSortKeyA_
	#define PLDAPSortKey PLDAPSortKeyA
#endif

declare function ldap_create_sort_controlA(byval ExternalHandle as PLDAP, byval SortKeys as PLDAPSortKeyA ptr, byval IsCritical as UCHAR, byval Control as PLDAPControlA ptr) as ULONG_
declare function ldap_create_sort_controlW(byval ExternalHandle as PLDAP, byval SortKeys as PLDAPSortKeyW ptr, byval IsCritical as UCHAR, byval Control as PLDAPControlW ptr) as ULONG_
declare function ldap_parse_sort_controlA(byval ExternalHandle as PLDAP, byval Control as PLDAPControlA ptr, byval Result as ULONG_ ptr, byval Attribute as PCHAR ptr) as ULONG_
declare function ldap_parse_sort_controlW(byval ExternalHandle as PLDAP, byval Control as PLDAPControlW ptr, byval Result as ULONG_ ptr, byval Attribute as PWCHAR ptr) as ULONG_

#ifdef UNICODE
	#define ldap_create_sort_control ldap_create_sort_controlW
	#define ldap_parse_sort_control ldap_parse_sort_controlW
#else
	declare function ldap_create_sort_control(byval ExternalHandle as PLDAP, byval SortKeys as PLDAPSortKeyA ptr, byval IsCritical as UCHAR, byval Control as PLDAPControlA ptr) as ULONG_
	declare function ldap_parse_sort_control(byval ExternalHandle as PLDAP, byval Control as PLDAPControlA ptr, byval Result as ULONG_ ptr, byval Attribute as PCHAR ptr) as ULONG_
#endif

declare function ldap_encode_sort_controlW(byval ExternalHandle as PLDAP, byval SortKeys as PLDAPSortKeyW ptr, byval Control as PLDAPControlW, byval Criticality as BOOLEAN) as ULONG_
declare function ldap_encode_sort_controlA(byval ExternalHandle as PLDAP, byval SortKeys as PLDAPSortKeyA ptr, byval Control as PLDAPControlA, byval Criticality as BOOLEAN) as ULONG_

#ifdef UNICODE
	#define ldap_encode_sort_control ldap_encode_sort_controlW
#else
	declare function ldap_encode_sort_control(byval ExternalHandle as PLDAP, byval SortKeys as PLDAPSortKeyA ptr, byval Control as PLDAPControlA, byval Criticality as BOOLEAN) as ULONG_
#endif

declare function ldap_create_page_controlW(byval ExternalHandle as PLDAP, byval PageSize as ULONG_, byval Cookie as berval ptr, byval IsCritical as UCHAR, byval Control as PLDAPControlW ptr) as ULONG_
declare function ldap_create_page_controlA(byval ExternalHandle as PLDAP, byval PageSize as ULONG_, byval Cookie as berval ptr, byval IsCritical as UCHAR, byval Control as PLDAPControlA ptr) as ULONG_
declare function ldap_parse_page_controlW(byval ExternalHandle as PLDAP, byval ServerControls as PLDAPControlW ptr, byval TotalCount as ULONG_ ptr, byval Cookie as berval ptr ptr) as ULONG_
declare function ldap_parse_page_controlA(byval ExternalHandle as PLDAP, byval ServerControls as PLDAPControlA ptr, byval TotalCount as ULONG_ ptr, byval Cookie as berval ptr ptr) as ULONG_

#ifdef UNICODE
	#define ldap_create_page_control ldap_create_page_controlW
	#define ldap_parse_page_control ldap_parse_page_controlW
#else
	declare function ldap_create_page_control(byval ExternalHandle as PLDAP, byval PageSize as ULONG_, byval Cookie as berval ptr, byval IsCritical as UCHAR, byval Control as PLDAPControlA ptr) as ULONG_
	declare function ldap_parse_page_control(byval ExternalHandle as PLDAP, byval ServerControls as PLDAPControlA ptr, byval TotalCount as ULONG_ ptr, byval Cookie as berval ptr ptr) as ULONG_
#endif

#define LDAP_PAGED_RESULT_OID_STRING "1.2.840.113556.1.4.319"
#define LDAP_PAGED_RESULT_OID_STRING_W wstr("1.2.840.113556.1.4.319")

declare function ldap_search_init_pageW(byval ExternalHandle as PLDAP, byval DistinguishedName as const PWCHAR, byval ScopeOfSearch as ULONG_, byval SearchFilter as const PWCHAR, byval AttributeList as PWCHAR ptr, byval AttributesOnly as ULONG_, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr, byval PageTimeLimit as ULONG_, byval TotalSizeLimit as ULONG_, byval SortKeys as PLDAPSortKeyW ptr) as PLDAPSearch
declare function ldap_search_init_pageA(byval ExternalHandle as PLDAP, byval DistinguishedName as const PCHAR, byval ScopeOfSearch as ULONG_, byval SearchFilter as const PCHAR, byval AttributeList as PCHAR ptr, byval AttributesOnly as ULONG_, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval PageTimeLimit as ULONG_, byval TotalSizeLimit as ULONG_, byval SortKeys as PLDAPSortKeyA ptr) as PLDAPSearch

#ifdef UNICODE
	#define ldap_search_init_page ldap_search_init_pageW
#else
	declare function ldap_search_init_page(byval ExternalHandle as PLDAP, byval DistinguishedName as const PCHAR, byval ScopeOfSearch as ULONG_, byval SearchFilter as const PCHAR, byval AttributeList as PCHAR ptr, byval AttributesOnly as ULONG_, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval PageTimeLimit as ULONG_, byval TotalSizeLimit as ULONG_, byval SortKeys as PLDAPSortKeyA ptr) as PLDAPSearch
#endif

declare function ldap_get_next_page(byval ExternalHandle as PLDAP, byval SearchHandle as PLDAPSearch, byval PageSize as ULONG_, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_get_next_page_s(byval ExternalHandle as PLDAP, byval SearchHandle as PLDAPSearch, byval timeout as l_timeval ptr, byval PageSize as ULONG_, byval TotalCount as ULONG_ ptr, byval Results as LDAPMessage ptr ptr) as ULONG_
declare function ldap_get_paged_count(byval ExternalHandle as PLDAP, byval SearchBlock as PLDAPSearch, byval TotalCount as ULONG_ ptr, byval Results as PLDAPMessage) as ULONG_
declare function ldap_search_abandon_page(byval ExternalHandle as PLDAP, byval SearchBlock as PLDAPSearch) as ULONG_

#define LDAP_CONTROL_VLVREQUEST "2.16.840.1.113730.3.4.9"
#define LDAP_CONTROL_VLVREQUEST_W wstr("2.16.840.1.113730.3.4.9")
#define LDAP_CONTROL_VLVRESPONSE "2.16.840.1.113730.3.4.10"
#define LDAP_CONTROL_VLVRESPONSE_W wstr("2.16.840.1.113730.3.4.10")
#define LDAP_API_FEATURE_VIRTUAL_LIST_VIEW 1001
#define LDAP_VLVINFO_VERSION 1

type ldapvlvinfo
	ldvlv_version as long
	ldvlv_before_count as ULONG_
	ldvlv_after_count as ULONG_
	ldvlv_offset as ULONG_
	ldvlv_count as ULONG_
	ldvlv_attrvalue as PBERVAL
	ldvlv_context as PBERVAL
	ldvlv_extradata as any ptr
end type

type LDAPVLVInfo_ as ldapvlvinfo
type PLDAPVLVInfo as ldapvlvinfo ptr

declare function ldap_create_vlv_controlW(byval ExternalHandle as PLDAP, byval VlvInfo as PLDAPVLVInfo, byval IsCritical as UCHAR, byval Control as PLDAPControlW ptr) as INT_
declare function ldap_create_vlv_controlA(byval ExternalHandle as PLDAP, byval VlvInfo as PLDAPVLVInfo, byval IsCritical as UCHAR, byval Control as PLDAPControlA ptr) as INT_
declare function ldap_parse_vlv_controlW(byval ExternalHandle as PLDAP, byval Control as PLDAPControlW ptr, byval TargetPos as PULONG, byval ListCount as PULONG, byval Context as PBERVAL ptr, byval ErrCode as PINT) as INT_
declare function ldap_parse_vlv_controlA(byval ExternalHandle as PLDAP, byval Control as PLDAPControlA ptr, byval TargetPos as PULONG, byval ListCount as PULONG, byval Context as PBERVAL ptr, byval ErrCode as PINT) as INT_

#ifdef UNICODE
	#define ldap_create_vlv_control ldap_create_vlv_controlW
	#define ldap_parse_vlv_control ldap_parse_vlv_controlW
#else
	#define ldap_create_vlv_control ldap_create_vlv_controlA
	#define ldap_parse_vlv_control ldap_parse_vlv_controlA
#endif

#define LDAP_START_TLS_OID "1.3.6.1.4.1.1466.20037"
#define LDAP_START_TLS_OID_W wstr("1.3.6.1.4.1.1466.20037")

declare function ldap_start_tls_sW(byval ExternalHandle as PLDAP, byval ServerReturnValue as PULONG, byval result as LDAPMessage ptr ptr, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr) as ULONG_
declare function ldap_start_tls_sA(byval ExternalHandle as PLDAP, byval ServerReturnValue as PULONG, byval result as LDAPMessage ptr ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr) as ULONG_
declare function ldap_stop_tls_s(byval ExternalHandle as PLDAP) as BOOLEAN

#ifdef UNICODE
	#define ldap_start_tls_s ldap_start_tls_sW
#else
	#define ldap_start_tls_s ldap_start_tls_sA
#endif

#define LDAP_TTL_EXTENDED_OP_OID "1.3.6.1.4.1.1466.101.119.1"
#define LDAP_TTL_EXTENDED_OP_OID_W wstr("1.3.6.1.4.1.1466.101.119.1")

declare function ldap_first_reference(byval ld as LDAP_ ptr, byval res as LDAPMessage ptr) as LDAPMessage ptr
declare function ldap_next_reference(byval ld as LDAP_ ptr, byval entry as LDAPMessage ptr) as LDAPMessage ptr
declare function ldap_count_references(byval ld as LDAP_ ptr, byval res as LDAPMessage ptr) as ULONG_
declare function ldap_parse_referenceW(byval Connection as LDAP_ ptr, byval ResultMessage as LDAPMessage ptr, byval Referrals as PWCHAR ptr ptr) as ULONG_
declare function ldap_parse_referenceA(byval Connection as LDAP_ ptr, byval ResultMessage as LDAPMessage ptr, byval Referrals as PCHAR ptr ptr) as ULONG_

#ifdef UNICODE
	#define ldap_parse_reference ldap_parse_referenceW
#else
	declare function ldap_parse_reference(byval Connection as LDAP_ ptr, byval ResultMessage as LDAPMessage ptr, byval Referrals as PCHAR ptr ptr) as ULONG_
#endif

declare function ldap_extended_operationW(byval ld as LDAP_ ptr, byval Oid as const PWCHAR, byval Data_ as berval ptr, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_extended_operationA(byval ld as LDAP_ ptr, byval Oid as const PCHAR, byval Data_ as berval ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval MessageNumber as ULONG_ ptr) as ULONG_
declare function ldap_extended_operation_sA(byval ExternalHandle as LDAP_ ptr, byval Oid as PCHAR, byval Data_ as berval ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval ReturnedOid as PCHAR ptr, byval ReturnedData as berval ptr ptr) as ULONG_
declare function ldap_extended_operation_sW(byval ExternalHandle as LDAP_ ptr, byval Oid as PWCHAR, byval Data_ as berval ptr, byval ServerControls as PLDAPControlW ptr, byval ClientControls as PLDAPControlW ptr, byval ReturnedOid as PWCHAR ptr, byval ReturnedData as berval ptr ptr) as ULONG_

#ifdef UNICODE
	#define ldap_extended_operation ldap_extended_operationW
	#define ldap_extended_operation_s ldap_extended_operation_sW
#else
	declare function ldap_extended_operation(byval ld as LDAP_ ptr, byval Oid as const PCHAR, byval Data_ as berval ptr, byval ServerControls as PLDAPControlA ptr, byval ClientControls as PLDAPControlA ptr, byval MessageNumber as ULONG_ ptr) as ULONG_

	#define ldap_extended_operation_s ldap_extended_operation_sA
#endif

declare function ldap_close_extended_op(byval ld as LDAP_ ptr, byval MessageNumber as ULONG_) as ULONG_

#define LDAP_OPT_REFERRAL_CALLBACK &h70

type LdapReferralCallback
	SizeOfCallbacks as ULONG_
	QueryForConnection as function(byval PrimaryConnection as PLDAP, byval ReferralFromConnection as PLDAP, byval NewDN as PWCHAR, byval HostName as PCHAR, byval PortNumber as ULONG_, byval SecAuthIdentity as PVOID, byval CurrentUserToken as PVOID, byval ConnectionToUse as PLDAP ptr) as ULONG_
	NotifyRoutine as function(byval PrimaryConnection as PLDAP, byval ReferralFromConnection as PLDAP, byval NewDN as PWCHAR, byval HostName as PCHAR, byval NewConnection as PLDAP, byval PortNumber as ULONG_, byval SecAuthIdentity as PVOID, byval CurrentUser as PVOID, byval ErrorCodeFromBind as ULONG_) as BOOLEAN
	DereferenceRoutine as function(byval PrimaryConnection as PLDAP, byval ConnectionToDereference as PLDAP) as ULONG_
end type

type LDAP_REFERRAL_CALLBACK as LdapReferralCallback
type PLDAP_REFERRAL_CALLBACK as LdapReferralCallback ptr

declare function LdapGetLastError() as ULONG_
declare function LdapMapErrorToWin32(byval LdapError as ULONG_) as ULONG_

#define LDAP_OPT_CLIENT_CERTIFICATE &h80
#define LDAP_OPT_SERVER_CERTIFICATE &h81
#define LDAP_OPT_REF_DEREF_CONN_PER_MSG &h94

declare function ldap_conn_from_msg(byval PrimaryConn as LDAP_ ptr, byval res as LDAPMessage ptr) as LDAP_ ptr

end extern
