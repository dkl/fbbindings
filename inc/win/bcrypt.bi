#pragma once

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

#define __BCRYPT_H__
#define _NTSTATUS_PSDK

type NTSTATUS as LONG
type PNTSTATUS as LONG ptr

#define BCRYPT_SUCCESS(Status) (cast(NTSTATUS, (Status)) >= 0)
#define BCRYPT_OBJECT_ALIGNMENT 16
#define BCRYPT_STRUCT_ALIGNMENT
#define BCRYPT_KDF_HASH wstr("HASH")
#define BCRYPT_KDF_HMAC wstr("HMAC")
#define BCRYPT_KDF_TLS_PRF wstr("TLS_PRF")
#define BCRYPT_KDF_SP80056A_CONCAT wstr("SP800_56A_CONCAT")
#define KDF_HASH_ALGORITHM &h0
#define KDF_SECRET_PREPEND &h1
#define KDF_SECRET_APPEND &h2
#define KDF_HMAC_KEY &h3
#define KDF_TLS_PRF_LABEL &h4
#define KDF_TLS_PRF_SEED &h5
#define KDF_SECRET_HANDLE &h6
#define KDF_TLS_PRF_PROTOCOL &h7
#define KDF_ALGORITHMID &h8
#define KDF_PARTYUINFO &h9
#define KDF_PARTYVINFO &ha
#define KDF_SUPPPUBINFO &hb
#define KDF_SUPPPRIVINFO &hc
#define KDF_LABEL &hd
#define KDF_CONTEXT &he
#define KDF_SALT &hf
#define KDF_ITERATION_COUNT &h10
#define KDF_GENERIC_PARAMETER &h11
#define KDF_KEYBITLENGTH &h12
#define KDF_USE_SECRET_AS_HMAC_KEY_FLAG 1
#define BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO_VERSION 1
#define BCRYPT_AUTH_MODE_CHAIN_CALLS_FLAG &h00000001
#define BCRYPT_AUTH_MODE_IN_PROGRESS_FLAG &h00000002
#define BCRYPT_INIT_AUTH_MODE_INFO(_AUTH_INFO_STRUCT_) '' TODO: RtlZeroMemory ((&_AUTH_INFO_STRUCT_), sizeof (BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO)); (_AUTH_INFO_STRUCT_).cbSize = sizeof (BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO); (_AUTH_INFO_STRUCT_).dwInfoVersion = BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO_VERSION;
#define BCRYPT_OPAQUE_KEY_BLOB wstr("OpaqueKeyBlob")
#define BCRYPT_KEY_DATA_BLOB wstr("KeyDataBlob")
#define BCRYPT_AES_WRAP_KEY_BLOB wstr("Rfc3565KeyWrapBlob")
#define BCRYPT_ALGORITHM_NAME wstr("AlgorithmName")
#define BCRYPT_AUTH_TAG_LENGTH wstr("AuthTagLength")
#define BCRYPT_BLOCK_LENGTH wstr("BlockLength")
#define BCRYPT_BLOCK_SIZE_LIST wstr("BlockSizeList")
#define BCRYPT_CHAINING_MODE wstr("ChainingMode")
#define BCRYPT_CHAIN_MODE_CBC wstr("ChainingModeCBC")
#define BCRYPT_CHAIN_MODE_CCM wstr("ChainingModeCCM")
#define BCRYPT_CHAIN_MODE_CFB wstr("ChainingModeCFB")
#define BCRYPT_CHAIN_MODE_ECB wstr("ChainingModeECB")
#define BCRYPT_CHAIN_MODE_GCM wstr("ChainingModeGCM")
#define BCRYPT_CHAIN_MODE_NA wstr("ChainingModeN/A")
#define BCRYPT_EFFECTIVE_KEY_LENGTH wstr("EffectiveKeyLength")
#define BCRYPT_HASH_BLOCK_LENGTH wstr("HashBlockLength")
#define BCRYPT_HASH_LENGTH wstr("HashDigestLength")
#define BCRYPT_HASH_OID_LIST wstr("HashOIDList")
#define BCRYPT_INITIALIZATION_VECTOR wstr("IV")
#define BCRYPT_IS_KEYED_HASH wstr("IsKeyedHash")
#define BCRYPT_IS_REUSABLE_HASH wstr("IsReusableHash")
#define BCRYPT_KEY_LENGTH wstr("KeyLength")
#define BCRYPT_KEY_LENGTHS wstr("KeyLengths")
#define BCRYPT_KEY_OBJECT_LENGTH wstr("KeyObjectLength")
#define BCRYPT_KEY_STRENGTH wstr("KeyStrength")
#define BCRYPT_MESSAGE_BLOCK_LENGTH wstr("MessageBlockLength")
#define BCRYPT_OBJECT_LENGTH wstr("ObjectLength")
#define BCRYPT_PADDING_SCHEMES wstr("PaddingSchemes")
#define BCRYPT_PCP_PLATFORM_TYPE_PROPERTY wstr("PCP_PLATFORM_TYPE")
#define BCRYPT_PCP_PROVIDER_VERSION_PROPERTY wstr("PCP_PROVIDER_VERSION")
#define BCRYPT_PRIMITIVE_TYPE wstr("PrimitiveType")
#define BCRYPT_PROVIDER_HANDLE wstr("ProviderHandle")
#define BCRYPT_SIGNATURE_LENGTH wstr("SignatureLength")
#define BCRYPT_SUPPORTED_PAD_ROUTER &h00000001
#define BCRYPT_SUPPORTED_PAD_PKCS1_ENC &h00000002
#define BCRYPT_SUPPORTED_PAD_PKCS1_SIG &h00000004
#define BCRYPT_SUPPORTED_PAD_OAEP &h00000008
#define BCRYPT_SUPPORTED_PAD_PSS &h00000010
#define BCRYPT_PROV_DISPATCH &h00000001
#define BCRYPT_BLOCK_PADDING &h00000001
#define BCRYPT_PAD_NONE &h00000001
#define BCRYPT_PAD_PKCS1 &h00000002
#define BCRYPT_PAD_OAEP &h00000004
#define BCRYPT_PAD_PSS &h00000008
#define BCRYPTBUFFER_VERSION 0

type __BCRYPT_KEY_LENGTHS_STRUCT
	dwMinLength as ULONG
	dwMaxLength as ULONG
	dwIncrement as ULONG
end type

type BCRYPT_KEY_LENGTHS_STRUCT as __BCRYPT_KEY_LENGTHS_STRUCT
type BCRYPT_AUTH_TAG_LENGTHS_STRUCT as BCRYPT_KEY_LENGTHS_STRUCT

type _BCRYPT_OID
	cbOID as ULONG
	pbOID as PUCHAR
end type

type BCRYPT_OID as _BCRYPT_OID

type _BCRYPT_OID_LIST
	dwOIDCount as ULONG
	pOIDs as BCRYPT_OID ptr
end type

type BCRYPT_OID_LIST as _BCRYPT_OID_LIST

type _BCRYPT_PKCS1_PADDING_INFO
	pszAlgId as LPCWSTR
end type

type BCRYPT_PKCS1_PADDING_INFO as _BCRYPT_PKCS1_PADDING_INFO

type _BCRYPT_PSS_PADDING_INFO
	pszAlgId as LPCWSTR
	cbSalt as ULONG
end type

type BCRYPT_PSS_PADDING_INFO as _BCRYPT_PSS_PADDING_INFO

type _BCRYPT_OAEP_PADDING_INFO
	pszAlgId as LPCWSTR
	pbLabel as PUCHAR
	cbLabel as ULONG
end type

type BCRYPT_OAEP_PADDING_INFO as _BCRYPT_OAEP_PADDING_INFO

type _BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
	cbSize as ULONG
	dwInfoVersion as ULONG
	pbNonce as PUCHAR
	cbNonce as ULONG
	pbAuthData as PUCHAR
	cbAuthData as ULONG
	pbTag as PUCHAR
	cbTag as ULONG
	pbMacContext as PUCHAR
	cbMacContext as ULONG
	cbAAD as ULONG
	cbData as ULONGLONG
	dwFlags as ULONG
end type

type BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO as _BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
type PBCRYPT_AUTHENTICATED_CIPHER_MODE_INFO as _BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO ptr

type _BCryptBuffer
	cbBuffer as ULONG
	BufferType as ULONG
	pvBuffer as PVOID
end type

type BCryptBuffer as _BCryptBuffer
type PBCryptBuffer as _BCryptBuffer ptr

type _BCryptBufferDesc
	ulVersion as ULONG
	cBuffers as ULONG
	pBuffers as PBCryptBuffer
end type

type BCryptBufferDesc as _BCryptBufferDesc
type PBCryptBufferDesc as _BCryptBufferDesc ptr

#define BCRYPT_PUBLIC_KEY_BLOB wstr("PUBLICBLOB")
#define BCRYPT_PRIVATE_KEY_BLOB wstr("PRIVATEBLOB")
#define BCRYPT_RSAPUBLIC_BLOB wstr("RSAPUBLICBLOB")
#define BCRYPT_RSAPRIVATE_BLOB wstr("RSAPRIVATEBLOB")
#define LEGACY_RSAPUBLIC_BLOB wstr("CAPIPUBLICBLOB")
#define LEGACY_RSAPRIVATE_BLOB wstr("CAPIPRIVATEBLOB")
#define BCRYPT_RSAPUBLIC_MAGIC &h31415352
#define BCRYPT_RSAPRIVATE_MAGIC &h32415352
#define BCRYPT_RSAFULLPRIVATE_BLOB wstr("RSAFULLPRIVATEBLOB")
#define BCRYPT_RSAFULLPRIVATE_MAGIC &h33415352
#define BCRYPT_GLOBAL_PARAMETERS wstr("SecretAgreementParam")
#define BCRYPT_PRIVATE_KEY wstr("PrivKeyVal")
#define BCRYPT_ECCPUBLIC_BLOB wstr("ECCPUBLICBLOB")
#define BCRYPT_ECCPRIVATE_BLOB wstr("ECCPRIVATEBLOB")
#define BCRYPT_ECDH_PUBLIC_P256_MAGIC &h314b4345
#define BCRYPT_ECDH_PRIVATE_P256_MAGIC &h324b4345
#define BCRYPT_ECDH_PUBLIC_P384_MAGIC &h334b4345
#define BCRYPT_ECDH_PRIVATE_P384_MAGIC &h344b4345
#define BCRYPT_ECDH_PUBLIC_P521_MAGIC &h354b4345
#define BCRYPT_ECDH_PRIVATE_P521_MAGIC &h364b4345
#define BCRYPT_ECDSA_PUBLIC_P256_MAGIC &h31534345
#define BCRYPT_ECDSA_PRIVATE_P256_MAGIC &h32534345
#define BCRYPT_ECDSA_PUBLIC_P384_MAGIC &h33534345
#define BCRYPT_ECDSA_PRIVATE_P384_MAGIC &h34534345
#define BCRYPT_ECDSA_PUBLIC_P521_MAGIC &h35534345
#define BCRYPT_ECDSA_PRIVATE_P521_MAGIC &h36534345
#define BCRYPT_DH_PUBLIC_BLOB wstr("DHPUBLICBLOB")
#define BCRYPT_DH_PRIVATE_BLOB wstr("DHPRIVATEBLOB")
#define LEGACY_DH_PUBLIC_BLOB wstr("CAPIDHPUBLICBLOB")
#define LEGACY_DH_PRIVATE_BLOB wstr("CAPIDHPRIVATEBLOB")
#define BCRYPT_DH_PUBLIC_MAGIC &h42504844
#define BCRYPT_DH_PRIVATE_MAGIC &h56504844
#define BCRYPT_DH_PARAMETERS wstr("DHParameters")
#define BCRYPT_DH_PARAMETERS_MAGIC &h4d504844
#define BCRYPT_DSA_PUBLIC_BLOB wstr("DSAPUBLICBLOB")
#define BCRYPT_DSA_PRIVATE_BLOB wstr("DSAPRIVATEBLOB")
#define LEGACY_DSA_PUBLIC_BLOB wstr("CAPIDSAPUBLICBLOB")
#define LEGACY_DSA_PRIVATE_BLOB wstr("CAPIDSAPRIVATEBLOB")
#define LEGACY_DSA_V2_PUBLIC_BLOB wstr("V2CAPIDSAPUBLICBLOB")
#define LEGACY_DSA_V2_PRIVATE_BLOB wstr("V2CAPIDSAPRIVATEBLOB")
#define BCRYPT_DSA_PUBLIC_MAGIC &h42505344
#define BCRYPT_DSA_PRIVATE_MAGIC &h56505344
#define BCRYPT_DSA_PUBLIC_MAGIC_V2 &h32425044
#define BCRYPT_DSA_PRIVATE_MAGIC_V2 &h32565044
#define BCRYPT_KEY_DATA_BLOB_MAGIC &h4d42444b
#define BCRYPT_KEY_DATA_BLOB_VERSION1 &h1
#define BCRYPT_DSA_PARAMETERS wstr("DSAParameters")
#define BCRYPT_DSA_PARAMETERS_MAGIC &h4d505344
#define BCRYPT_DSA_PARAMETERS_MAGIC_V2 &h324d5044
#define MS_PRIMITIVE_PROVIDER wstr("Microsoft Primitive Provider")
#define MS_PLATFORM_CRYPTO_PROVIDER wstr("Microsoft Platform Crypto Provider")
#define BCRYPT_RSA_ALGORITHM wstr("RSA")
#define BCRYPT_RSA_SIGN_ALGORITHM wstr("RSA_SIGN")
#define BCRYPT_DH_ALGORITHM wstr("DH")
#define BCRYPT_DSA_ALGORITHM wstr("DSA")
#define BCRYPT_RC2_ALGORITHM wstr("RC2")
#define BCRYPT_RC4_ALGORITHM wstr("RC4")
#define BCRYPT_AES_ALGORITHM wstr("AES")
#define BCRYPT_DES_ALGORITHM wstr("DES")
#define BCRYPT_DESX_ALGORITHM wstr("DESX")
#define BCRYPT_3DES_ALGORITHM wstr("3DES")
#define BCRYPT_3DES_112_ALGORITHM wstr("3DES_112")
#define BCRYPT_MD2_ALGORITHM wstr("MD2")
#define BCRYPT_MD4_ALGORITHM wstr("MD4")
#define BCRYPT_MD5_ALGORITHM wstr("MD5")
#define BCRYPT_SHA1_ALGORITHM wstr("SHA1")
#define BCRYPT_SHA256_ALGORITHM wstr("SHA256")
#define BCRYPT_SHA384_ALGORITHM wstr("SHA384")
#define BCRYPT_SHA512_ALGORITHM wstr("SHA512")
#define BCRYPT_AES_GMAC_ALGORITHM wstr("AES-GMAC")
#define BCRYPT_AES_CMAC_ALGORITHM wstr("AES-CMAC")
#define BCRYPT_ECDSA_P256_ALGORITHM wstr("ECDSA_P256")
#define BCRYPT_ECDSA_P384_ALGORITHM wstr("ECDSA_P384")
#define BCRYPT_ECDSA_P521_ALGORITHM wstr("ECDSA_P521")
#define BCRYPT_ECDH_P256_ALGORITHM wstr("ECDH_P256")
#define BCRYPT_ECDH_P384_ALGORITHM wstr("ECDH_P384")
#define BCRYPT_ECDH_P521_ALGORITHM wstr("ECDH_P521")
#define BCRYPT_RNG_ALGORITHM wstr("RNG")
#define BCRYPT_RNG_FIPS186_DSA_ALGORITHM wstr("FIPS186DSARNG")
#define BCRYPT_RNG_DUAL_EC_ALGORITHM wstr("DUALECRNG")
#define BCRYPT_SP800108_CTR_HMAC_ALGORITHM wstr("SP800_108_CTR_HMAC")
#define BCRYPT_SP80056A_CONCAT_ALGORITHM wstr("SP800_56A_CONCAT")
#define BCRYPT_PBKDF2_ALGORITHM wstr("PBKDF2")
#define BCRYPT_CAPI_KDF_ALGORITHM wstr("CAPI_KDF")
#define BCRYPT_CIPHER_INTERFACE &h00000001
#define BCRYPT_HASH_INTERFACE &h00000002
#define BCRYPT_ASYMMETRIC_ENCRYPTION_INTERFACE &h00000003
#define BCRYPT_SECRET_AGREEMENT_INTERFACE &h00000004
#define BCRYPT_SIGNATURE_INTERFACE &h00000005
#define BCRYPT_RNG_INTERFACE &h00000006
#define BCRYPT_KEY_DERIVATION_INTERFACE &h00000007
#define BCRYPT_ALG_HANDLE_HMAC_FLAG &h00000008
#define BCRYPT_CAPI_AES_FLAG &h00000010
#define BCRYPT_HASH_REUSABLE_FLAG &h00000020
#define BCRYPT_BUFFERS_LOCKED_FLAG &h00000040
#define BCRYPT_CIPHER_OPERATION &h00000001
#define BCRYPT_HASH_OPERATION &h00000002
#define BCRYPT_ASYMMETRIC_ENCRYPTION_OPERATION &h00000004
#define BCRYPT_SECRET_AGREEMENT_OPERATION &h00000008
#define BCRYPT_SIGNATURE_OPERATION &h00000010
#define BCRYPT_RNG_OPERATION &h00000020
#define BCRYPT_KEY_DERIVATION_OPERATION &h00000040
#define BCRYPT_PUBLIC_KEY_FLAG &h00000001
#define BCRYPT_PRIVATE_KEY_FLAG &h00000002
#define BCRYPT_NO_KEY_VALIDATION &h00000008
#define BCRYPT_RNG_USE_ENTROPY_IN_BUFFER &h00000001
#define BCRYPT_USE_SYSTEM_PREFERRED_RNG &h00000002
#define BCRYPT_MAKE_INTERFACE_VERSION(major, minor) (cast(USHORT, major), cast(USHORT, minor))
#define BCRYPT_IS_INTERFACE_VERSION_COMPATIBLE(loader, provider) ((loader).MajorVersion <= (provider).MajorVersion)
#define BCRYPT_CIPHER_INTERFACE_VERSION_1 BCRYPT_MAKE_INTERFACE_VERSION(1, 0)
#define BCRYPT_HASH_INTERFACE_VERSION_1 BCRYPT_MAKE_INTERFACE_VERSION(1, 0)
#define BCRYPT_ASYMMETRIC_ENCRYPTION_INTERFACE_VERSION_1 BCRYPT_MAKE_INTERFACE_VERSION(1, 0)
#define BCRYPT_SECRET_AGREEMENT_INTERFACE_VERSION_1 BCRYPT_MAKE_INTERFACE_VERSION(1, 0)
#define BCRYPT_SIGNATURE_INTERFACE_VERSION_1 BCRYPT_MAKE_INTERFACE_VERSION(1, 0)
#define BCRYPT_RNG_INTERFACE_VERSION_1 BCRYPT_MAKE_INTERFACE_VERSION(1, 0)
#define CRYPT_MIN_DEPENDENCIES &h00000001
#define CRYPT_PROCESS_ISOLATE &h00010000
#define CRYPT_UM &h00000001
#define CRYPT_KM &h00000002
#define CRYPT_MM &h00000003
#define CRYPT_ANY &h00000004
#define CRYPT_OVERWRITE &h00000001
#define CRYPT_LOCAL &h00000001
#define CRYPT_DOMAIN &h00000002
#define CRYPT_EXCLUSIVE &h00000001
#define CRYPT_OVERRIDE &h00010000
#define CRYPT_ALL_FUNCTIONS &h00000001
#define CRYPT_ALL_PROVIDERS &h00000002
#define CRYPT_PRIORITY_TOP &h00000000
#define CRYPT_PRIORITY_BOTTOM &hffffffff
#define CRYPT_DEFAULT_CONTEXT wstr("Default")

type BCRYPT_HANDLE as PVOID
type BCRYPT_ALG_HANDLE as PVOID
type BCRYPT_KEY_HANDLE as PVOID
type BCRYPT_HASH_HANDLE as PVOID
type BCRYPT_SECRET_HANDLE as PVOID

type _BCRYPT_KEY_BLOB
	Magic as ULONG
end type

type BCRYPT_KEY_BLOB as _BCRYPT_KEY_BLOB

type _BCRYPT_RSAKEY_BLOB
	Magic as ULONG
	BitLength as ULONG
	cbPublicExp as ULONG
	cbModulus as ULONG
	cbPrime1 as ULONG
	cbPrime2 as ULONG
end type

type BCRYPT_RSAKEY_BLOB as _BCRYPT_RSAKEY_BLOB

type _BCRYPT_ECCKEY_BLOB
	dwMagic as ULONG
	cbKey as ULONG
end type

type BCRYPT_ECCKEY_BLOB as _BCRYPT_ECCKEY_BLOB
type PBCRYPT_ECCKEY_BLOB as _BCRYPT_ECCKEY_BLOB ptr

type _BCRYPT_DH_KEY_BLOB
	dwMagic as ULONG
	cbKey as ULONG
end type

type BCRYPT_DH_KEY_BLOB as _BCRYPT_DH_KEY_BLOB
type PBCRYPT_DH_KEY_BLOB as _BCRYPT_DH_KEY_BLOB ptr

type _BCRYPT_DH_PARAMETER_HEADER
	cbLength as ULONG
	dwMagic as ULONG
	cbKeyLength as ULONG
end type

type BCRYPT_DH_PARAMETER_HEADER as _BCRYPT_DH_PARAMETER_HEADER

type _BCRYPT_DSA_KEY_BLOB
	dwMagic as ULONG
	cbKey as ULONG
	Count(0 to 3) as UCHAR
	Seed(0 to 19) as UCHAR
	q(0 to 19) as UCHAR
end type

type BCRYPT_DSA_KEY_BLOB as _BCRYPT_DSA_KEY_BLOB
type PBCRYPT_DSA_KEY_BLOB as _BCRYPT_DSA_KEY_BLOB ptr

type HASHALGORITHM_ENUM as long
enum
	DSA_HASH_ALGORITHM_SHA1
	DSA_HASH_ALGORITHM_SHA256
	DSA_HASH_ALGORITHM_SHA512
end enum

type DSAFIPSVERSION_ENUM as long
enum
	DSA_FIPS186_2
	DSA_FIPS186_3
end enum

type _BCRYPT_DSA_KEY_BLOB_V2
	dwMagic as ULONG
	cbKey as ULONG
	hashAlgorithm as HASHALGORITHM_ENUM
	standardVersion as DSAFIPSVERSION_ENUM
	cbSeedLength as ULONG
	cbGroupSize as ULONG
	Count(0 to 3) as UCHAR
end type

type BCRYPT_DSA_KEY_BLOB_V2 as _BCRYPT_DSA_KEY_BLOB_V2
type PBCRYPT_DSA_KEY_BLOB_V2 as _BCRYPT_DSA_KEY_BLOB_V2 ptr

type _BCRYPT_KEY_DATA_BLOB_HEADER
	dwMagic as ULONG
	dwVersion as ULONG
	cbKeyData as ULONG
end type

type BCRYPT_KEY_DATA_BLOB_HEADER as _BCRYPT_KEY_DATA_BLOB_HEADER
type PBCRYPT_KEY_DATA_BLOB_HEADER as _BCRYPT_KEY_DATA_BLOB_HEADER ptr

type _BCRYPT_DSA_PARAMETER_HEADER
	cbLength as ULONG
	dwMagic as ULONG
	cbKeyLength as ULONG
	Count(0 to 3) as UCHAR
	Seed(0 to 19) as UCHAR
	q(0 to 19) as UCHAR
end type

type BCRYPT_DSA_PARAMETER_HEADER as _BCRYPT_DSA_PARAMETER_HEADER

type _BCRYPT_DSA_PARAMETER_HEADER_V2
	cbLength as ULONG
	dwMagic as ULONG
	cbKeyLength as ULONG
	hashAlgorithm as HASHALGORITHM_ENUM
	standardVersion as DSAFIPSVERSION_ENUM
	cbSeedLength as ULONG
	cbGroupSize as ULONG
	Count(0 to 3) as UCHAR
end type

type BCRYPT_DSA_PARAMETER_HEADER_V2 as _BCRYPT_DSA_PARAMETER_HEADER_V2

type _BCRYPT_ALGORITHM_IDENTIFIER
	pszName as LPWSTR
	dwClass as ULONG
	dwFlags as ULONG
end type

type BCRYPT_ALGORITHM_IDENTIFIER as _BCRYPT_ALGORITHM_IDENTIFIER

type _BCRYPT_PROVIDER_NAME
	pszProviderName as LPWSTR
end type

type BCRYPT_PROVIDER_NAME as _BCRYPT_PROVIDER_NAME

type _BCRYPT_INTERFACE_VERSION
	MajorVersion as USHORT
	MinorVersion as USHORT
end type

type BCRYPT_INTERFACE_VERSION as _BCRYPT_INTERFACE_VERSION
type PBCRYPT_INTERFACE_VERSION as _BCRYPT_INTERFACE_VERSION ptr

type _CRYPT_INTERFACE_REG
	dwInterface as ULONG
	dwFlags as ULONG
	cFunctions as ULONG
	rgpszFunctions as PWSTR ptr
end type

type CRYPT_INTERFACE_REG as _CRYPT_INTERFACE_REG
type PCRYPT_INTERFACE_REG as _CRYPT_INTERFACE_REG ptr

type _CRYPT_IMAGE_REG
	pszImage as PWSTR
	cInterfaces as ULONG
	rgpInterfaces as PCRYPT_INTERFACE_REG ptr
end type

type CRYPT_IMAGE_REG as _CRYPT_IMAGE_REG
type PCRYPT_IMAGE_REG as _CRYPT_IMAGE_REG ptr

type _CRYPT_PROVIDER_REG
	cAliases as ULONG
	rgpszAliases as PWSTR ptr
	pUM as PCRYPT_IMAGE_REG
	pKM as PCRYPT_IMAGE_REG
end type

type CRYPT_PROVIDER_REG as _CRYPT_PROVIDER_REG
type PCRYPT_PROVIDER_REG as _CRYPT_PROVIDER_REG ptr

type _CRYPT_PROVIDERS
	cProviders as ULONG
	rgpszProviders as PWSTR ptr
end type

type CRYPT_PROVIDERS as _CRYPT_PROVIDERS
type PCRYPT_PROVIDERS as _CRYPT_PROVIDERS ptr

type _CRYPT_CONTEXT_CONFIG
	dwFlags as ULONG
	dwReserved as ULONG
end type

type CRYPT_CONTEXT_CONFIG as _CRYPT_CONTEXT_CONFIG
type PCRYPT_CONTEXT_CONFIG as _CRYPT_CONTEXT_CONFIG ptr

type _CRYPT_CONTEXT_FUNCTION_CONFIG
	dwFlags as ULONG
	dwReserved as ULONG
end type

type CRYPT_CONTEXT_FUNCTION_CONFIG as _CRYPT_CONTEXT_FUNCTION_CONFIG
type PCRYPT_CONTEXT_FUNCTION_CONFIG as _CRYPT_CONTEXT_FUNCTION_CONFIG ptr

type _CRYPT_CONTEXTS
	cContexts as ULONG
	rgpszContexts as PWSTR ptr
end type

type CRYPT_CONTEXTS as _CRYPT_CONTEXTS
type PCRYPT_CONTEXTS as _CRYPT_CONTEXTS ptr

type _CRYPT_CONTEXT_FUNCTIONS
	cFunctions as ULONG
	rgpszFunctions as PWSTR ptr
end type

type CRYPT_CONTEXT_FUNCTIONS as _CRYPT_CONTEXT_FUNCTIONS
type PCRYPT_CONTEXT_FUNCTIONS as _CRYPT_CONTEXT_FUNCTIONS ptr

type _CRYPT_CONTEXT_FUNCTION_PROVIDERS
	cProviders as ULONG
	rgpszProviders as PWSTR ptr
end type

type CRYPT_CONTEXT_FUNCTION_PROVIDERS as _CRYPT_CONTEXT_FUNCTION_PROVIDERS
type PCRYPT_CONTEXT_FUNCTION_PROVIDERS as _CRYPT_CONTEXT_FUNCTION_PROVIDERS ptr

type _CRYPT_PROPERTY_REF
	pszProperty as PWSTR
	cbValue as ULONG
	pbValue as PUCHAR
end type

type CRYPT_PROPERTY_REF as _CRYPT_PROPERTY_REF
type PCRYPT_PROPERTY_REF as _CRYPT_PROPERTY_REF ptr

type _CRYPT_IMAGE_REF
	pszImage as PWSTR
	dwFlags as ULONG
end type

type CRYPT_IMAGE_REF as _CRYPT_IMAGE_REF
type PCRYPT_IMAGE_REF as _CRYPT_IMAGE_REF ptr

type _CRYPT_PROVIDER_REF
	dwInterface as ULONG
	pszFunction as PWSTR
	pszProvider as PWSTR
	cProperties as ULONG
	rgpProperties as PCRYPT_PROPERTY_REF ptr
	pUM as PCRYPT_IMAGE_REF
	pKM as PCRYPT_IMAGE_REF
end type

type CRYPT_PROVIDER_REF as _CRYPT_PROVIDER_REF
type PCRYPT_PROVIDER_REF as _CRYPT_PROVIDER_REF ptr

type _CRYPT_PROVIDER_REFS
	cProviders as ULONG
	rgpProviders as PCRYPT_PROVIDER_REF ptr
end type

type CRYPT_PROVIDER_REFS as _CRYPT_PROVIDER_REFS
type PCRYPT_PROVIDER_REFS as _CRYPT_PROVIDER_REFS ptr

declare function BCryptOpenAlgorithmProvider(byval phAlgorithm as BCRYPT_ALG_HANDLE ptr, byval pszAlgId as LPCWSTR, byval pszImplementation as LPCWSTR, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptEnumAlgorithms(byval dwAlgOperations as ULONG, byval pAlgCount as ULONG ptr, byval ppAlgList as BCRYPT_ALGORITHM_IDENTIFIER ptr ptr, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptEnumProviders(byval pszAlgId as LPCWSTR, byval pImplCount as ULONG ptr, byval ppImplList as BCRYPT_PROVIDER_NAME ptr ptr, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptGetProperty(byval hObject as BCRYPT_HANDLE, byval pszProperty as LPCWSTR, byval pbOutput as PUCHAR, byval cbOutput as ULONG, byval pcbResult as ULONG ptr, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptSetProperty(byval hObject as BCRYPT_HANDLE, byval pszProperty as LPCWSTR, byval pbInput as PUCHAR, byval cbInput as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptCloseAlgorithmProvider(byval hAlgorithm as BCRYPT_ALG_HANDLE, byval dwFlags as ULONG) as NTSTATUS
declare sub BCryptFreeBuffer(byval pvBuffer as PVOID)
declare function BCryptGenerateSymmetricKey(byval hAlgorithm as BCRYPT_ALG_HANDLE, byval phKey as BCRYPT_KEY_HANDLE ptr, byval pbKeyObject as PUCHAR, byval cbKeyObject as ULONG, byval pbSecret as PUCHAR, byval cbSecret as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptGenerateKeyPair(byval hAlgorithm as BCRYPT_ALG_HANDLE, byval phKey as BCRYPT_KEY_HANDLE ptr, byval dwLength as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptEncrypt(byval hKey as BCRYPT_KEY_HANDLE, byval pbInput as PUCHAR, byval cbInput as ULONG, byval pPaddingInfo as any ptr, byval pbIV as PUCHAR, byval cbIV as ULONG, byval pbOutput as PUCHAR, byval cbOutput as ULONG, byval pcbResult as ULONG ptr, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptDecrypt(byval hKey as BCRYPT_KEY_HANDLE, byval pbInput as PUCHAR, byval cbInput as ULONG, byval pPaddingInfo as any ptr, byval pbIV as PUCHAR, byval cbIV as ULONG, byval pbOutput as PUCHAR, byval cbOutput as ULONG, byval pcbResult as ULONG ptr, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptExportKey(byval hKey as BCRYPT_KEY_HANDLE, byval hExportKey as BCRYPT_KEY_HANDLE, byval pszBlobType as LPCWSTR, byval pbOutput as PUCHAR, byval cbOutput as ULONG, byval pcbResult as ULONG ptr, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptImportKey(byval hAlgorithm as BCRYPT_ALG_HANDLE, byval hImportKey as BCRYPT_KEY_HANDLE, byval pszBlobType as LPCWSTR, byval phKey as BCRYPT_KEY_HANDLE ptr, byval pbKeyObject as PUCHAR, byval cbKeyObject as ULONG, byval pbInput as PUCHAR, byval cbInput as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptImportKeyPair(byval hAlgorithm as BCRYPT_ALG_HANDLE, byval hImportKey as BCRYPT_KEY_HANDLE, byval pszBlobType as LPCWSTR, byval phKey as BCRYPT_KEY_HANDLE ptr, byval pbInput as PUCHAR, byval cbInput as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptDuplicateKey(byval hKey as BCRYPT_KEY_HANDLE, byval phNewKey as BCRYPT_KEY_HANDLE ptr, byval pbKeyObject as PUCHAR, byval cbKeyObject as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptFinalizeKeyPair(byval hKey as BCRYPT_KEY_HANDLE, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptDestroyKey(byval hKey as BCRYPT_KEY_HANDLE) as NTSTATUS
declare function BCryptDestroySecret(byval hSecret as BCRYPT_SECRET_HANDLE) as NTSTATUS
declare function BCryptSignHash(byval hKey as BCRYPT_KEY_HANDLE, byval pPaddingInfo as any ptr, byval pbInput as PUCHAR, byval cbInput as ULONG, byval pbOutput as PUCHAR, byval cbOutput as ULONG, byval pcbResult as ULONG ptr, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptVerifySignature(byval hKey as BCRYPT_KEY_HANDLE, byval pPaddingInfo as any ptr, byval pbHash as PUCHAR, byval cbHash as ULONG, byval pbSignature as PUCHAR, byval cbSignature as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptSecretAgreement(byval hPrivKey as BCRYPT_KEY_HANDLE, byval hPubKey as BCRYPT_KEY_HANDLE, byval phAgreedSecret as BCRYPT_SECRET_HANDLE ptr, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptDeriveKey(byval hSharedSecret as BCRYPT_SECRET_HANDLE, byval pwszKDF as LPCWSTR, byval pParameterList as BCryptBufferDesc ptr, byval pbDerivedKey as PUCHAR, byval cbDerivedKey as ULONG, byval pcbResult as ULONG ptr, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptKeyDerivation(byval hKey as BCRYPT_KEY_HANDLE, byval pParameterList as BCryptBufferDesc ptr, byval pbDerivedKey as PUCHAR, byval cbDerivedKey as ULONG, byval pcbResult as ULONG ptr, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptCreateHash(byval hAlgorithm as BCRYPT_ALG_HANDLE, byval phHash as BCRYPT_HASH_HANDLE ptr, byval pbHashObject as PUCHAR, byval cbHashObject as ULONG, byval pbSecret as PUCHAR, byval cbSecret as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptHashData(byval hHash as BCRYPT_HASH_HANDLE, byval pbInput as PUCHAR, byval cbInput as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptFinishHash(byval hHash as BCRYPT_HASH_HANDLE, byval pbOutput as PUCHAR, byval cbOutput as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptDuplicateHash(byval hHash as BCRYPT_HASH_HANDLE, byval phNewHash as BCRYPT_HASH_HANDLE ptr, byval pbHashObject as PUCHAR, byval cbHashObject as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptDestroyHash(byval hHash as BCRYPT_HASH_HANDLE) as NTSTATUS
declare function BCryptGenRandom(byval hAlgorithm as BCRYPT_ALG_HANDLE, byval pbBuffer as PUCHAR, byval cbBuffer as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptDeriveKeyCapi(byval hHash as BCRYPT_HASH_HANDLE, byval hTargetAlg as BCRYPT_ALG_HANDLE, byval pbDerivedKey as PUCHAR, byval cbDerivedKey as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptDeriveKeyPBKDF2(byval hPrf as BCRYPT_ALG_HANDLE, byval pbPassword as PUCHAR, byval cbPassword as ULONG, byval pbSalt as PUCHAR, byval cbSalt as ULONG, byval cIterations as ULONGLONG, byval pbDerivedKey as PUCHAR, byval cbDerivedKey as ULONG, byval dwFlags as ULONG) as NTSTATUS
declare function BCryptResolveProviders(byval pszContext as LPCWSTR, byval dwInterface as ULONG, byval pszFunction as LPCWSTR, byval pszProvider as LPCWSTR, byval dwMode as ULONG, byval dwFlags as ULONG, byval pcbBuffer as ULONG ptr, byval ppBuffer as PCRYPT_PROVIDER_REFS ptr) as NTSTATUS
declare function BCryptGetFipsAlgorithmMode(byval pfEnabled as BOOLEAN ptr) as NTSTATUS
declare function BCryptQueryProviderRegistration(byval pszProvider as LPCWSTR, byval dwMode as ULONG, byval dwInterface as ULONG, byval pcbBuffer as ULONG ptr, byval ppBuffer as PCRYPT_PROVIDER_REG ptr) as NTSTATUS
declare function BCryptEnumRegisteredProviders(byval pcbBuffer as ULONG ptr, byval ppBuffer as PCRYPT_PROVIDERS ptr) as NTSTATUS
declare function BCryptCreateContext(byval dwTable as ULONG, byval pszContext as LPCWSTR, byval pConfig as PCRYPT_CONTEXT_CONFIG) as NTSTATUS
declare function BCryptDeleteContext(byval dwTable as ULONG, byval pszContext as LPCWSTR) as NTSTATUS
declare function BCryptEnumContexts(byval dwTable as ULONG, byval pcbBuffer as ULONG ptr, byval ppBuffer as PCRYPT_CONTEXTS ptr) as NTSTATUS
declare function BCryptConfigureContext(byval dwTable as ULONG, byval pszContext as LPCWSTR, byval pConfig as PCRYPT_CONTEXT_CONFIG) as NTSTATUS
declare function BCryptQueryContextConfiguration(byval dwTable as ULONG, byval pszContext as LPCWSTR, byval pcbBuffer as ULONG ptr, byval ppBuffer as PCRYPT_CONTEXT_CONFIG ptr) as NTSTATUS
declare function BCryptAddContextFunction(byval dwTable as ULONG, byval pszContext as LPCWSTR, byval dwInterface as ULONG, byval pszFunction as LPCWSTR, byval dwPosition as ULONG) as NTSTATUS
declare function BCryptRemoveContextFunction(byval dwTable as ULONG, byval pszContext as LPCWSTR, byval dwInterface as ULONG, byval pszFunction as LPCWSTR) as NTSTATUS
declare function BCryptEnumContextFunctions(byval dwTable as ULONG, byval pszContext as LPCWSTR, byval dwInterface as ULONG, byval pcbBuffer as ULONG ptr, byval ppBuffer as PCRYPT_CONTEXT_FUNCTIONS ptr) as NTSTATUS
declare function BCryptConfigureContextFunction(byval dwTable as ULONG, byval pszContext as LPCWSTR, byval dwInterface as ULONG, byval pszFunction as LPCWSTR, byval pConfig as PCRYPT_CONTEXT_FUNCTION_CONFIG) as NTSTATUS
declare function BCryptQueryContextFunctionConfiguration(byval dwTable as ULONG, byval pszContext as LPCWSTR, byval dwInterface as ULONG, byval pszFunction as LPCWSTR, byval pcbBuffer as ULONG ptr, byval ppBuffer as PCRYPT_CONTEXT_FUNCTION_CONFIG ptr) as NTSTATUS
declare function BCryptEnumContextFunctionProviders(byval dwTable as ULONG, byval pszContext as LPCWSTR, byval dwInterface as ULONG, byval pszFunction as LPCWSTR, byval pcbBuffer as ULONG ptr, byval ppBuffer as PCRYPT_CONTEXT_FUNCTION_PROVIDERS ptr) as NTSTATUS
declare function BCryptSetContextFunctionProperty(byval dwTable as ULONG, byval pszContext as LPCWSTR, byval dwInterface as ULONG, byval pszFunction as LPCWSTR, byval pszProperty as LPCWSTR, byval cbValue as ULONG, byval pbValue as PUCHAR) as NTSTATUS
declare function BCryptQueryContextFunctionProperty(byval dwTable as ULONG, byval pszContext as LPCWSTR, byval dwInterface as ULONG, byval pszFunction as LPCWSTR, byval pszProperty as LPCWSTR, byval pcbValue as ULONG ptr, byval ppbValue as PUCHAR ptr) as NTSTATUS
declare function BCryptRegisterConfigChangeNotify(byval phEvent as HANDLE ptr) as NTSTATUS

end extern
