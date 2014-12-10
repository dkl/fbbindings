#pragma once

#include once "crt/long.bi"
#include once "_mingw_unicode.bi"

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

#define __RPCDCEP_H__

#ifdef __FB_64BIT__
	type _RPC_VERSION field = 8
		MajorVersion as ushort
		MinorVersion as ushort
	end type
#else
	type _RPC_VERSION
		MajorVersion as ushort
		MinorVersion as ushort
	end type
#endif

type RPC_VERSION as _RPC_VERSION

#ifdef __FB_64BIT__
	type _RPC_SYNTAX_IDENTIFIER field = 8
		SyntaxGUID as GUID
		SyntaxVersion as RPC_VERSION
	end type
#else
	type _RPC_SYNTAX_IDENTIFIER
		SyntaxGUID as GUID
		SyntaxVersion as RPC_VERSION
	end type
#endif

type RPC_SYNTAX_IDENTIFIER as _RPC_SYNTAX_IDENTIFIER
type PRPC_SYNTAX_IDENTIFIER as _RPC_SYNTAX_IDENTIFIER ptr

#ifdef __FB_64BIT__
	type _RPC_MESSAGE field = 8
		Handle as RPC_BINDING_HANDLE
		DataRepresentation as culong
		Buffer as any ptr
		BufferLength as ulong
		ProcNum as ulong
		TransferSyntax as PRPC_SYNTAX_IDENTIFIER
		RpcInterfaceInformation as any ptr
		ReservedForRuntime as any ptr
		ManagerEpv as any ptr
		ImportContext as any ptr
		RpcFlags as culong
	end type
#else
	type _RPC_MESSAGE
		Handle as RPC_BINDING_HANDLE
		DataRepresentation as culong
		Buffer as any ptr
		BufferLength as ulong
		ProcNum as ulong
		TransferSyntax as PRPC_SYNTAX_IDENTIFIER
		RpcInterfaceInformation as any ptr
		ReservedForRuntime as any ptr
		ManagerEpv as any ptr
		ImportContext as any ptr
		RpcFlags as culong
	end type
#endif

type RPC_MESSAGE as _RPC_MESSAGE
type PRPC_MESSAGE as _RPC_MESSAGE ptr

type RPC_ADDRESS_CHANGE_TYPE as long
enum
	PROTOCOL_NOT_LOADED = 1
	PROTOCOL_LOADED
	PROTOCOL_ADDRESS_CHANGE
end enum

#define RPC_CONTEXT_HANDLE_DEFAULT_GUARD cptr(any ptr, -4083)
#define RPC_CONTEXT_HANDLE_DEFAULT_FLAGS __MSABI_LONG(&h00000000)
#define RPC_CONTEXT_HANDLE_FLAGS __MSABI_LONG(&h30000000)
#define RPC_CONTEXT_HANDLE_SERIALIZE __MSABI_LONG(&h10000000)
#define RPC_CONTEXT_HANDLE_DONT_SERIALIZE __MSABI_LONG(&h20000000)
#define RPC_NCA_FLAGS_DEFAULT &h00000000
#define RPC_NCA_FLAGS_IDEMPOTENT &h00000001
#define RPC_NCA_FLAGS_BROADCAST &h00000002
#define RPC_NCA_FLAGS_MAYBE &h00000004
#define RPC_BUFFER_COMPLETE &h00001000
#define RPC_BUFFER_PARTIAL &h00002000
#define RPC_BUFFER_EXTRA &h00004000
#define RPC_BUFFER_ASYNC &h00008000
#define RPC_BUFFER_NONOTIFY &h00010000
#define RPCFLG_MESSAGE __MSABI_LONG(&h01000000)
#define RPCFLG_AUTO_COMPLETE __MSABI_LONG(&h08000000)
#define RPCFLG_LOCAL_CALL __MSABI_LONG(&h10000000)
#define RPCFLG_INPUT_SYNCHRONOUS __MSABI_LONG(&h20000000)
#define RPCFLG_ASYNCHRONOUS __MSABI_LONG(&h40000000)
#define RPCFLG_NON_NDR __MSABI_LONG(&h80000000)
#define RPCFLG_HAS_MULTI_SYNTAXES __MSABI_LONG(&h02000000)
#define RPCFLG_HAS_CALLBACK __MSABI_LONG(&h04000000)
#define RPC_FLAGS_VALID_BIT &h00008000

type RPC_DISPATCH_FUNCTION as sub(byval Message as PRPC_MESSAGE)

#ifdef __FB_64BIT__
	type RPC_DISPATCH_TABLE field = 8
		DispatchTableCount as ulong
		DispatchTable as RPC_DISPATCH_FUNCTION ptr
		Reserved as LONG_PTR
	end type
#else
	type RPC_DISPATCH_TABLE
		DispatchTableCount as ulong
		DispatchTable as RPC_DISPATCH_FUNCTION ptr
		Reserved as LONG_PTR
	end type
#endif

type PRPC_DISPATCH_TABLE as RPC_DISPATCH_TABLE ptr

#ifdef __FB_64BIT__
	type _RPC_PROTSEQ_ENDPOINT field = 8
		RpcProtocolSequence as ubyte ptr
		Endpoint as ubyte ptr
	end type
#else
	type _RPC_PROTSEQ_ENDPOINT
		RpcProtocolSequence as ubyte ptr
		Endpoint as ubyte ptr
	end type
#endif

type RPC_PROTSEQ_ENDPOINT as _RPC_PROTSEQ_ENDPOINT
type PRPC_PROTSEQ_ENDPOINT as _RPC_PROTSEQ_ENDPOINT ptr

#define NT351_INTERFACE_SIZE &h40
#define RPC_INTERFACE_HAS_PIPES &h0001

#ifdef __FB_64BIT__
	type _RPC_SERVER_INTERFACE field = 8
		Length as ulong
		InterfaceId as RPC_SYNTAX_IDENTIFIER
		TransferSyntax as RPC_SYNTAX_IDENTIFIER
		DispatchTable as PRPC_DISPATCH_TABLE
		RpcProtseqEndpointCount as ulong
		RpcProtseqEndpoint as PRPC_PROTSEQ_ENDPOINT
		DefaultManagerEpv as any ptr
		InterpreterInfo as const any ptr
		Flags as ulong
	end type
#else
	type _RPC_SERVER_INTERFACE
		Length as ulong
		InterfaceId as RPC_SYNTAX_IDENTIFIER
		TransferSyntax as RPC_SYNTAX_IDENTIFIER
		DispatchTable as PRPC_DISPATCH_TABLE
		RpcProtseqEndpointCount as ulong
		RpcProtseqEndpoint as PRPC_PROTSEQ_ENDPOINT
		DefaultManagerEpv as any ptr
		InterpreterInfo as const any ptr
		Flags as ulong
	end type
#endif

type RPC_SERVER_INTERFACE as _RPC_SERVER_INTERFACE
type PRPC_SERVER_INTERFACE as _RPC_SERVER_INTERFACE ptr

#ifdef __FB_64BIT__
	type _RPC_CLIENT_INTERFACE field = 8
		Length as ulong
		InterfaceId as RPC_SYNTAX_IDENTIFIER
		TransferSyntax as RPC_SYNTAX_IDENTIFIER
		DispatchTable as PRPC_DISPATCH_TABLE
		RpcProtseqEndpointCount as ulong
		RpcProtseqEndpoint as PRPC_PROTSEQ_ENDPOINT
		Reserved as ULONG_PTR
		InterpreterInfo as const any ptr
		Flags as ulong
	end type
#else
	type _RPC_CLIENT_INTERFACE
		Length as ulong
		InterfaceId as RPC_SYNTAX_IDENTIFIER
		TransferSyntax as RPC_SYNTAX_IDENTIFIER
		DispatchTable as PRPC_DISPATCH_TABLE
		RpcProtseqEndpointCount as ulong
		RpcProtseqEndpoint as PRPC_PROTSEQ_ENDPOINT
		Reserved as ULONG_PTR
		InterpreterInfo as const any ptr
		Flags as ulong
	end type
#endif

type RPC_CLIENT_INTERFACE as _RPC_CLIENT_INTERFACE
type PRPC_CLIENT_INTERFACE as _RPC_CLIENT_INTERFACE ptr

declare function I_RpcNegotiateTransferSyntax(byval Message as RPC_MESSAGE ptr) as RPC_STATUS
declare function I_RpcGetBuffer(byval Message as RPC_MESSAGE ptr) as RPC_STATUS
declare function I_RpcGetBufferWithObject(byval Message as RPC_MESSAGE ptr, byval ObjectUuid as UUID ptr) as RPC_STATUS
declare function I_RpcSendReceive(byval Message as RPC_MESSAGE ptr) as RPC_STATUS
declare function I_RpcFreeBuffer(byval Message as RPC_MESSAGE ptr) as RPC_STATUS
declare function I_RpcSend(byval Message as PRPC_MESSAGE) as RPC_STATUS
declare function I_RpcReceive(byval Message as PRPC_MESSAGE, byval Size as ulong) as RPC_STATUS
declare function I_RpcFreePipeBuffer(byval Message as RPC_MESSAGE ptr) as RPC_STATUS
declare function I_RpcReallocPipeBuffer(byval Message as PRPC_MESSAGE, byval NewSize as ulong) as RPC_STATUS

type I_RPC_MUTEX as any ptr

#define I_RpcNsBindingSetEntryName __MINGW_NAME_AW(I_RpcNsBindingSetEntryName)
#define I_RpcServerUseProtseqEp2 __MINGW_NAME_AW(I_RpcServerUseProtseqEp2)
#define I_RpcServerUseProtseq2 __MINGW_NAME_AW(I_RpcServerUseProtseq2)
#define I_RpcBindingInqDynamicEndpoint __MINGW_NAME_AW(I_RpcBindingInqDynamicEndpoint)

declare sub I_RpcRequestMutex(byval Mutex as I_RPC_MUTEX ptr)
declare sub I_RpcClearMutex(byval Mutex as I_RPC_MUTEX)
declare sub I_RpcDeleteMutex(byval Mutex as I_RPC_MUTEX)
declare function I_RpcAllocate(byval Size as ulong) as any ptr
declare sub I_RpcFree(byval Object_ as any ptr)
declare sub I_RpcPauseExecution(byval Milliseconds as culong)
declare function I_RpcGetExtendedError() as RPC_STATUS

type PRPC_RUNDOWN as sub(byval AssociationContext as any ptr)

declare function I_RpcMonitorAssociation(byval Handle as RPC_BINDING_HANDLE, byval RundownRoutine as PRPC_RUNDOWN, byval Context as any ptr) as RPC_STATUS
declare function I_RpcStopMonitorAssociation(byval Handle as RPC_BINDING_HANDLE) as RPC_STATUS
declare function I_RpcGetCurrentCallHandle() as RPC_BINDING_HANDLE
declare function I_RpcGetAssociationContext(byval BindingHandle as RPC_BINDING_HANDLE, byval AssociationContext as any ptr ptr) as RPC_STATUS
declare function I_RpcGetServerContextList(byval BindingHandle as RPC_BINDING_HANDLE) as any ptr
declare sub I_RpcSetServerContextList(byval BindingHandle as RPC_BINDING_HANDLE, byval ServerContextList as any ptr)
declare function I_RpcNsInterfaceExported(byval EntryNameSyntax as culong, byval EntryName as ushort ptr, byval RpcInterfaceInformation as RPC_SERVER_INTERFACE ptr) as RPC_STATUS
declare function I_RpcNsInterfaceUnexported(byval EntryNameSyntax as culong, byval EntryName as ushort ptr, byval RpcInterfaceInformation as RPC_SERVER_INTERFACE ptr) as RPC_STATUS
declare function I_RpcBindingToStaticStringBindingW(byval Binding as RPC_BINDING_HANDLE, byval StringBinding as ushort ptr ptr) as RPC_STATUS
declare function I_RpcBindingInqSecurityContext(byval Binding as RPC_BINDING_HANDLE, byval SecurityContextHandle as any ptr ptr) as RPC_STATUS
declare function I_RpcBindingInqWireIdForSnego(byval Binding as RPC_BINDING_HANDLE, byval WireId as RPC_CSTR) as RPC_STATUS
declare function I_RpcBindingInqMarshalledTargetInfo(byval Binding as RPC_BINDING_HANDLE, byval MarshalledTargetInfoLength as culong ptr, byval MarshalledTargetInfo as RPC_CSTR ptr) as RPC_STATUS
declare function I_RpcBindingInqLocalClientPID(byval Binding as RPC_BINDING_HANDLE, byval Pid as culong ptr) as RPC_STATUS
declare function I_RpcBindingHandleToAsyncHandle(byval Binding as RPC_BINDING_HANDLE, byval AsyncHandle as any ptr ptr) as RPC_STATUS
declare function I_RpcNsBindingSetEntryNameW(byval Binding as RPC_BINDING_HANDLE, byval EntryNameSyntax as culong, byval EntryName as RPC_WSTR) as RPC_STATUS
declare function I_RpcNsBindingSetEntryNameA(byval Binding as RPC_BINDING_HANDLE, byval EntryNameSyntax as culong, byval EntryName as RPC_CSTR) as RPC_STATUS
declare function I_RpcServerUseProtseqEp2A(byval NetworkAddress as RPC_CSTR, byval Protseq as RPC_CSTR, byval MaxCalls as ulong, byval Endpoint as RPC_CSTR, byval SecurityDescriptor as any ptr, byval Policy as any ptr) as RPC_STATUS
declare function I_RpcServerUseProtseqEp2W(byval NetworkAddress as RPC_WSTR, byval Protseq as RPC_WSTR, byval MaxCalls as ulong, byval Endpoint as RPC_WSTR, byval SecurityDescriptor as any ptr, byval Policy as any ptr) as RPC_STATUS
declare function I_RpcServerUseProtseq2W(byval NetworkAddress as RPC_WSTR, byval Protseq as RPC_WSTR, byval MaxCalls as ulong, byval SecurityDescriptor as any ptr, byval Policy as any ptr) as RPC_STATUS
declare function I_RpcServerUseProtseq2A(byval NetworkAddress as RPC_CSTR, byval Protseq as RPC_CSTR, byval MaxCalls as ulong, byval SecurityDescriptor as any ptr, byval Policy as any ptr) as RPC_STATUS
declare function I_RpcBindingInqDynamicEndpointW(byval Binding as RPC_BINDING_HANDLE, byval DynamicEndpoint as RPC_WSTR ptr) as RPC_STATUS
declare function I_RpcBindingInqDynamicEndpointA(byval Binding as RPC_BINDING_HANDLE, byval DynamicEndpoint as RPC_CSTR ptr) as RPC_STATUS
declare function I_RpcServerCheckClientRestriction(byval Context as RPC_BINDING_HANDLE) as RPC_STATUS

#define TRANSPORT_TYPE_CN &h01
#define TRANSPORT_TYPE_DG &h02
#define TRANSPORT_TYPE_LPC &h04
#define TRANSPORT_TYPE_WMSG &h08

declare function I_RpcBindingInqTransportType(byval Binding as RPC_BINDING_HANDLE, byval Type_ as ulong ptr) as RPC_STATUS

#ifdef __FB_64BIT__
	type _RPC_TRANSFER_SYNTAX field = 8
		Uuid as UUID
		VersMajor as ushort
		VersMinor as ushort
	end type
#else
	type _RPC_TRANSFER_SYNTAX
		Uuid as UUID
		VersMajor as ushort
		VersMinor as ushort
	end type
#endif

type RPC_TRANSFER_SYNTAX as _RPC_TRANSFER_SYNTAX

declare function I_RpcIfInqTransferSyntaxes(byval RpcIfHandle as RPC_IF_HANDLE, byval TransferSyntaxes as RPC_TRANSFER_SYNTAX ptr, byval TransferSyntaxSize as ulong, byval TransferSyntaxCount as ulong ptr) as RPC_STATUS
declare function I_UuidCreate(byval Uuid as UUID ptr) as RPC_STATUS
declare function I_RpcBindingCopy(byval SourceBinding as RPC_BINDING_HANDLE, byval DestinationBinding as RPC_BINDING_HANDLE ptr) as RPC_STATUS
declare function I_RpcBindingIsClientLocal(byval BindingHandle as RPC_BINDING_HANDLE, byval ClientLocalFlag as ulong ptr) as RPC_STATUS
declare function I_RpcBindingInqConnId(byval Binding as RPC_BINDING_HANDLE, byval ConnId as any ptr ptr, byval pfFirstCall as long ptr) as RPC_STATUS
declare sub I_RpcSsDontSerializeContext()
declare function I_RpcLaunchDatagramReceiveThread(byval pAddress as any ptr) as RPC_STATUS
declare function I_RpcServerRegisterForwardFunction(byval pForwardFunction as function(byval InterfaceId as UUID ptr, byval InterfaceVersion as RPC_VERSION ptr, byval ObjectId as UUID ptr, byval Rpcpro as ubyte ptr, byval ppDestEndpoint as any ptr ptr) as RPC_STATUS) as RPC_STATUS
declare function I_RpcServerInqAddressChangeFn() as sub(byval arg as any ptr)
declare function I_RpcServerSetAddressChangeFn(byval pAddressChangeFn as sub(byval arg as any ptr)) as RPC_STATUS

#define RPC_P_ADDR_FORMAT_TCP_IPV4 1
#define RPC_P_ADDR_FORMAT_TCP_IPV6 2

declare function I_RpcServerInqLocalConnAddress(byval Binding as RPC_BINDING_HANDLE, byval Buffer as any ptr, byval BufferSize as culong ptr, byval AddressFormat as culong ptr) as RPC_STATUS
declare sub I_RpcSessionStrictContextHandle()
declare function I_RpcTurnOnEEInfoPropagation() as RPC_STATUS
declare function I_RpcConnectionInqSockBuffSize(byval RecvBuffSize as culong ptr, byval SendBuffSize as culong ptr) as RPC_STATUS
declare function I_RpcConnectionSetSockBuffSize(byval RecvBuffSize as culong, byval SendBuffSize as culong) as RPC_STATUS

type RPCLT_PDU_FILTER_FUNC as sub cdecl(byval Buffer as any ptr, byval BufferLength as ulong, byval fDatagram as long)
type RPC_SETFILTER_FUNC as sub cdecl(byval pfnFilter as RPCLT_PDU_FILTER_FUNC)

declare function I_RpcServerInqTransportType(byval Type_ as ulong ptr) as RPC_STATUS
declare function I_RpcMapWin32Status(byval Status as RPC_STATUS) as clong

#ifdef __FB_64BIT__
	type _RPC_C_OPT_METADATA_DESCRIPTOR field = 8
		BufferSize as culong
		Buffer as zstring ptr
	end type
#else
	type _RPC_C_OPT_METADATA_DESCRIPTOR
		BufferSize as culong
		Buffer as zstring ptr
	end type
#endif

type RPC_C_OPT_METADATA_DESCRIPTOR as _RPC_C_OPT_METADATA_DESCRIPTOR

#ifdef __FB_64BIT__
	type _RDR_CALLOUT_STATE field = 8
		LastError as RPC_STATUS
		LastEEInfo as any ptr
		LastCalledStage as RPC_HTTP_REDIRECTOR_STAGE
		ServerName as ushort ptr
		ServerPort as ushort ptr
		RemoteUser as ushort ptr
		AuthType as ushort ptr
		ResourceTypePresent as ubyte
		MetadataPresent as ubyte
		SessionIdPresent as ubyte
		InterfacePresent as ubyte
		ResourceType as UUID
		Metadata as RPC_C_OPT_METADATA_DESCRIPTOR
		SessionId as UUID
		Interface as RPC_SYNTAX_IDENTIFIER
		CertContext as any ptr
	end type
#else
	type _RDR_CALLOUT_STATE
		LastError as RPC_STATUS
		LastEEInfo as any ptr
		LastCalledStage as RPC_HTTP_REDIRECTOR_STAGE
		ServerName as ushort ptr
		ServerPort as ushort ptr
		RemoteUser as ushort ptr
		AuthType as ushort ptr
		ResourceTypePresent as ubyte
		MetadataPresent as ubyte
		SessionIdPresent as ubyte
		InterfacePresent as ubyte
		ResourceType as UUID
		Metadata as RPC_C_OPT_METADATA_DESCRIPTOR
		SessionId as UUID
		Interface as RPC_SYNTAX_IDENTIFIER
		CertContext as any ptr
	end type
#endif

type RDR_CALLOUT_STATE as _RDR_CALLOUT_STATE
type I_RpcProxyIsValidMachineFn as function(byval pszMachine as zstring ptr, byval pszDotMachine as zstring ptr, byval dwPortNumber as culong) as RPC_STATUS
type I_RpcProxyGetClientAddressFn as function(byval Context as any ptr, byval Buffer as zstring ptr, byval BufferLength as culong ptr) as RPC_STATUS
type I_RpcProxyGetConnectionTimeoutFn as function(byval ConnectionTimeout as culong ptr) as RPC_STATUS
type I_RpcPerformCalloutFn as function(byval Context as any ptr, byval CallOutState as RDR_CALLOUT_STATE ptr, byval Stage as RPC_HTTP_REDIRECTOR_STAGE) as RPC_STATUS
type I_RpcFreeCalloutStateFn as sub(byval CallOutState as RDR_CALLOUT_STATE ptr)

#ifdef __FB_64BIT__
	type tagI_RpcProxyCallbackInterface field = 8
		IsValidMachineFn as I_RpcProxyIsValidMachineFn
		GetClientAddressFn as I_RpcProxyGetClientAddressFn
		GetConnectionTimeoutFn as I_RpcProxyGetConnectionTimeoutFn
		PerformCalloutFn as I_RpcPerformCalloutFn
		FreeCalloutStateFn as I_RpcFreeCalloutStateFn
	end type
#else
	type tagI_RpcProxyCallbackInterface
		IsValidMachineFn as I_RpcProxyIsValidMachineFn
		GetClientAddressFn as I_RpcProxyGetClientAddressFn
		GetConnectionTimeoutFn as I_RpcProxyGetConnectionTimeoutFn
		PerformCalloutFn as I_RpcPerformCalloutFn
		FreeCalloutStateFn as I_RpcFreeCalloutStateFn
	end type
#endif

type I_RpcProxyCallbackInterface as tagI_RpcProxyCallbackInterface

#define RPC_PROXY_CONNECTION_TYPE_IN_PROXY 0
#define RPC_PROXY_CONNECTION_TYPE_OUT_PROXY 1

declare function I_RpcProxyNewConnection(byval ConnectionType as culong, byval ServerAddress as ushort ptr, byval ServerPort as ushort ptr, byval MinConnTimeout as ushort ptr, byval ConnectionParameter as any ptr, byval CallOutState as RDR_CALLOUT_STATE ptr, byval ProxyCallbackInterface as I_RpcProxyCallbackInterface ptr) as RPC_STATUS
declare function I_RpcReplyToClientWithStatus(byval ConnectionParameter as any ptr, byval RpcStatus as RPC_STATUS) as RPC_STATUS
declare sub I_RpcRecordCalloutFailure(byval RpcStatus as RPC_STATUS, byval CallOutState as RDR_CALLOUT_STATE ptr, byval DllName as ushort ptr)

end extern
