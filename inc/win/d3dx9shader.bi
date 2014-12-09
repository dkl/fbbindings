#pragma once

#include once "crt/wchar.bi"
#include once "_mingw_unicode.bi"
#include once "d3dx9.bi"

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

type ID3DXConstantTableVtbl as ID3DXConstantTableVtbl_
type ID3DXIncludeVtbl as ID3DXIncludeVtbl_

#define __D3DX9SHADER_H__
#define D3DXSHADER_DEBUG &h1
#define D3DXSHADER_SKIPVALIDATION &h2
#define D3DXSHADER_SKIPOPTIMIZATION &h4
#define D3DXSHADER_PACKMATRIX_ROWMAJOR &h8
#define D3DXSHADER_PACKMATRIX_COLUMNMAJOR &h10
#define D3DXSHADER_PARTIALPRECISION &h20
#define D3DXSHADER_FORCE_VS_SOFTWARE_NOOPT &h40
#define D3DXSHADER_FORCE_PS_SOFTWARE_NOOPT &h80
#define D3DXSHADER_NO_PRESHADER &h100
#define D3DXSHADER_AVOID_FLOW_CONTROL &h200
#define D3DXSHADER_PREFER_FLOW_CONTROL &h400
#define D3DXSHADER_ENABLE_BACKWARDS_COMPATIBILITY &h1000
#define D3DXSHADER_IEEE_STRICTNESS &h2000
#define D3DXSHADER_OPTIMIZATION_LEVEL0 &h4000
#define D3DXSHADER_OPTIMIZATION_LEVEL1 &h0
#define D3DXSHADER_OPTIMIZATION_LEVEL2 &hC000
#define D3DXSHADER_OPTIMIZATION_LEVEL3 &h8000
#define D3DXSHADER_USE_LEGACY_D3DX9_31_DLL &h10000

type D3DXHANDLE as const zstring ptr

type _D3DXREGISTER_SET as long
enum
	D3DXRS_BOOL
	D3DXRS_INT4
	D3DXRS_FLOAT4
	D3DXRS_SAMPLER
	D3DXRS_FORCE_DWORD = &h7fffffff
end enum

type D3DXREGISTER_SET as _D3DXREGISTER_SET
type LPD3DXREGISTER_SET as _D3DXREGISTER_SET ptr

type D3DXPARAMETER_CLASS as long
enum
	D3DXPC_SCALAR
	D3DXPC_VECTOR
	D3DXPC_MATRIX_ROWS
	D3DXPC_MATRIX_COLUMNS
	D3DXPC_OBJECT
	D3DXPC_STRUCT
	D3DXPC_FORCE_DWORD = &h7fffffff
end enum

type LPD3DXPARAMETER_CLASS as D3DXPARAMETER_CLASS ptr

type D3DXPARAMETER_TYPE as long
enum
	D3DXPT_VOID
	D3DXPT_BOOL
	D3DXPT_INT
	D3DXPT_FLOAT
	D3DXPT_STRING
	D3DXPT_TEXTURE
	D3DXPT_TEXTURE1D
	D3DXPT_TEXTURE2D
	D3DXPT_TEXTURE3D
	D3DXPT_TEXTURECUBE
	D3DXPT_SAMPLER
	D3DXPT_SAMPLER1D
	D3DXPT_SAMPLER2D
	D3DXPT_SAMPLER3D
	D3DXPT_SAMPLERCUBE
	D3DXPT_PIXELSHADER
	D3DXPT_VERTEXSHADER
	D3DXPT_PIXELFRAGMENT
	D3DXPT_VERTEXFRAGMENT
	D3DXPT_UNSUPPORTED
	D3DXPT_FORCE_DWORD = &h7fffffff
end enum

type LPD3DXPARAMETER_TYPE as D3DXPARAMETER_TYPE ptr

type _D3DXCONSTANTTABLE_DESC
	Creator as const zstring ptr
	Version as DWORD
	Constants as UINT
end type

type D3DXCONSTANTTABLE_DESC as _D3DXCONSTANTTABLE_DESC
type LPD3DXCONSTANTTABLE_DESC as _D3DXCONSTANTTABLE_DESC ptr

type _D3DXCONSTANT_DESC
	Name as const zstring ptr
	RegisterSet as D3DXREGISTER_SET
	RegisterIndex as UINT
	RegisterCount as UINT
	Class as D3DXPARAMETER_CLASS
	as D3DXPARAMETER_TYPE Type
	Rows as UINT
	Columns as UINT
	Elements as UINT
	StructMembers as UINT
	Bytes as UINT
	DefaultValue as const any ptr
end type

type D3DXCONSTANT_DESC as _D3DXCONSTANT_DESC
type LPD3DXCONSTANT_DESC as _D3DXCONSTANT_DESC ptr

extern IID_ID3DXConstantTable as const GUID

type ID3DXConstantTable
	lpVtbl as ID3DXConstantTableVtbl ptr
end type

type ID3DXConstantTableVtbl_
	QueryInterface as function(byval This as ID3DXConstantTable ptr, byval iid as const IID const ptr, byval out_ as any ptr ptr) as HRESULT
	AddRef as function(byval This as ID3DXConstantTable ptr) as ULONG_
	Release as function(byval This as ID3DXConstantTable ptr) as ULONG_
	GetBufferPointer as function(byval This as ID3DXConstantTable ptr) as any ptr
	GetBufferSize as function(byval This as ID3DXConstantTable ptr) as DWORD
	GetDesc as function(byval This as ID3DXConstantTable ptr, byval pDesc as D3DXCONSTANTTABLE_DESC ptr) as HRESULT
	GetConstantDesc as function(byval This as ID3DXConstantTable ptr, byval hConstant as D3DXHANDLE, byval pConstantDesc as D3DXCONSTANT_DESC ptr, byval pCount as UINT ptr) as HRESULT
	GetSamplerIndex as function(byval This as ID3DXConstantTable ptr, byval hConstant as D3DXHANDLE) as UINT
	GetConstant as function(byval This as ID3DXConstantTable ptr, byval hConstant as D3DXHANDLE, byval Index as UINT) as D3DXHANDLE
	GetConstantByName as function(byval This as ID3DXConstantTable ptr, byval constant as D3DXHANDLE, byval name_ as const zstring ptr) as D3DXHANDLE
	GetConstantElement as function(byval This as ID3DXConstantTable ptr, byval hConstant as D3DXHANDLE, byval Index as UINT) as D3DXHANDLE
	SetDefaults as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr) as HRESULT
	SetValue as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval data_ as const any ptr, byval data_size as UINT) as HRESULT
	SetBool as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval value as WINBOOL) as HRESULT
	SetBoolArray as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval values as const WINBOOL ptr, byval value_count as UINT) as HRESULT
	SetInt as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval value as INT_) as HRESULT
	SetIntArray as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval values as const INT_ ptr, byval value_count as UINT) as HRESULT
	SetFloat as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval value as single) as HRESULT
	SetFloatArray as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval values as const single ptr, byval value_count as UINT) as HRESULT
	SetVector as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval value as const D3DXVECTOR4 ptr) as HRESULT
	SetVectorArray as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval values as const D3DXVECTOR4 ptr, byval value_count as UINT) as HRESULT
	SetMatrix as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval value as const D3DXMATRIX ptr) as HRESULT
	SetMatrixArray as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval values as const D3DXMATRIX ptr, byval value_count as UINT) as HRESULT
	SetMatrixPointerArray as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval values as const D3DXMATRIX ptr ptr, byval value_count as UINT) as HRESULT
	SetMatrixTranspose as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval value as const D3DXMATRIX ptr) as HRESULT
	SetMatrixTransposeArray as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval values as const D3DXMATRIX ptr, byval value_count as UINT) as HRESULT
	SetMatrixTransposePointerArray as function(byval This as ID3DXConstantTable ptr, byval device as IDirect3DDevice9 ptr, byval constant as D3DXHANDLE, byval values as const D3DXMATRIX ptr ptr, byval value_count as UINT) as HRESULT
end type

#define ID3DXConstantTable_QueryInterface(p, a, b) (p)->lpVtbl->QueryInterface(p, a, b)
#define ID3DXConstantTable_AddRef(p) (p)->lpVtbl->AddRef(p)
#define ID3DXConstantTable_Release(p) (p)->lpVtbl->Release(p)
#define ID3DXConstantTable_GetBufferPointer(p) (p)->lpVtbl->GetBufferPointer(p)
#define ID3DXConstantTable_GetBufferSize(p) (p)->lpVtbl->GetBufferSize(p)
#define ID3DXConstantTable_GetDesc(p, a) (p)->lpVtbl->GetDesc(p, a)
#define ID3DXConstantTable_GetConstantDesc(p, a, b, c) (p)->lpVtbl->GetConstantDesc(p, a, b, c)
#define ID3DXConstantTable_GetSamplerIndex(p, a) (p)->lpVtbl->GetSamplerIndex(p, a)
#define ID3DXConstantTable_GetConstant(p, a, b) (p)->lpVtbl->GetConstant(p, a, b)
#define ID3DXConstantTable_GetConstantByName(p, a, b) (p)->lpVtbl->GetConstantByName(p, a, b)
#define ID3DXConstantTable_GetConstantElement(p, a, b) (p)->lpVtbl->GetConstantElement(p, a, b)
#define ID3DXConstantTable_SetDefaults(p, a) (p)->lpVtbl->SetDefaults(p, a)
#define ID3DXConstantTable_SetValue(p, a, b, c, d) (p)->lpVtbl->SetValue(p, a, b, c, d)
#define ID3DXConstantTable_SetBool(p, a, b, c) (p)->lpVtbl->SetBool(p, a, b, c)
#define ID3DXConstantTable_SetBoolArray(p, a, b, c, d) (p)->lpVtbl->SetBoolArray(p, a, b, c, d)
#define ID3DXConstantTable_SetInt(p, a, b, c) (p)->lpVtbl->SetInt(p, a, b, c)
#define ID3DXConstantTable_SetIntArray(p, a, b, c, d) (p)->lpVtbl->SetIntArray(p, a, b, c, d)
#define ID3DXConstantTable_SetFloat(p, a, b, c) (p)->lpVtbl->SetFloat(p, a, b, c)
#define ID3DXConstantTable_SetFloatArray(p, a, b, c, d) (p)->lpVtbl->SetFloatArray(p, a, b, c, d)
#define ID3DXConstantTable_SetVector(p, a, b, c) (p)->lpVtbl->SetVector(p, a, b, c)
#define ID3DXConstantTable_SetVectorArray(p, a, b, c, d) (p)->lpVtbl->SetVectorArray(p, a, b, c, d)
#define ID3DXConstantTable_SetMatrix(p, a, b, c) (p)->lpVtbl->SetMatrix(p, a, b, c)
#define ID3DXConstantTable_SetMatrixArray(p, a, b, c, d) (p)->lpVtbl->SetMatrixArray(p, a, b, c, d)
#define ID3DXConstantTable_SetMatrixPointerArray(p, a, b, c, d) (p)->lpVtbl->SetMatrixPointerArray(p, a, b, c, d)
#define ID3DXConstantTable_SetMatrixTranspose(p, a, b, c) (p)->lpVtbl->SetMatrixTranspose(p, a, b, c)
#define ID3DXConstantTable_SetMatrixTransposeArray(p, a, b, c, d) (p)->lpVtbl->SetMatrixTransposeArray(p, a, b, c, d)
#define ID3DXConstantTable_SetMatrixTransposePointerArray(p, a, b, c, d) (p)->lpVtbl->SetMatrixTransposePointerArray(p, a, b, c, d)

type LPD3DXCONSTANTTABLE as ID3DXConstantTable ptr

type _D3DXMACRO
	Name as const zstring ptr
	Definition as const zstring ptr
end type

type D3DXMACRO as _D3DXMACRO
type LPD3DXMACRO as _D3DXMACRO ptr

type _D3DXSEMANTIC
	Usage as UINT
	UsageIndex as UINT
end type

type D3DXSEMANTIC as _D3DXSEMANTIC
type LPD3DXSEMANTIC as _D3DXSEMANTIC ptr

type _D3DXINCLUDE_TYPE as long
enum
	D3DXINC_LOCAL
	D3DXINC_SYSTEM
	D3DXINC_FORCE_DWORD = &h7fffffff
end enum

type D3DXINCLUDE_TYPE as _D3DXINCLUDE_TYPE
type LPD3DXINCLUDE_TYPE as _D3DXINCLUDE_TYPE ptr

type ID3DXInclude
	lpVtbl as ID3DXIncludeVtbl ptr
end type

type ID3DXIncludeVtbl_
	Open as function(byval This as ID3DXInclude ptr, byval include_type as D3DXINCLUDE_TYPE, byval filename as const zstring ptr, byval parent_data as const any ptr, byval data_ as const any ptr ptr, byval bytes as UINT ptr) as HRESULT
	Close as function(byval This as ID3DXInclude ptr, byval data_ as const any ptr) as HRESULT
end type

#define ID3DXInclude_Open(p, a, b, c, d, e) (p)->lpVtbl->Open(p, a, b, c, d, e)
#define ID3DXInclude_Close(p, a) (p)->lpVtbl->Close(p, a)

type LPD3DXINCLUDE as ID3DXInclude ptr

declare function D3DXGetPixelShaderProfile(byval device as IDirect3DDevice9 ptr) as const zstring ptr
declare function D3DXGetShaderSize(byval byte_code as const DWORD ptr) as UINT
declare function D3DXGetShaderVersion(byval byte_code as const DWORD ptr) as DWORD
declare function D3DXGetVertexShaderProfile(byval device as IDirect3DDevice9 ptr) as const zstring ptr
declare function D3DXFindShaderComment(byval byte_code as const DWORD ptr, byval fourcc as DWORD, byval data_ as const any ptr ptr, byval size as UINT ptr) as HRESULT
declare function D3DXGetShaderSamplers(byval byte_code as const DWORD ptr, byval samplers as const zstring ptr ptr, byval count as UINT ptr) as HRESULT
declare function D3DXAssembleShaderFromFileA(byval filename as const zstring ptr, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval flags as DWORD, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr) as HRESULT
declare function D3DXAssembleShaderFromFileW(byval filename as const WCHAR ptr, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval flags as DWORD, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr) as HRESULT

#define D3DXAssembleShaderFromFile __MINGW_NAME_AW(D3DXAssembleShaderFromFile)

declare function D3DXAssembleShaderFromResourceA(byval module as HMODULE, byval resource as const zstring ptr, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval flags as DWORD, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr) as HRESULT
declare function D3DXAssembleShaderFromResourceW(byval module as HMODULE, byval resource as const WCHAR ptr, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval flags as DWORD, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr) as HRESULT

#define D3DXAssembleShaderFromResource __MINGW_NAME_AW(D3DXAssembleShaderFromResource)

declare function D3DXAssembleShader(byval data_ as const zstring ptr, byval data_len as UINT, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval flags as DWORD, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr) as HRESULT
declare function D3DXCompileShader(byval src_data as const zstring ptr, byval data_len as UINT, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval function_name as const zstring ptr, byval profile as const zstring ptr, byval flags as DWORD, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr, byval constant_table as ID3DXConstantTable ptr ptr) as HRESULT
declare function D3DXCompileShaderFromFileA(byval filename as const zstring ptr, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval entrypoint as const zstring ptr, byval profile as const zstring ptr, byval flags as DWORD, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr, byval constant_table as ID3DXConstantTable ptr ptr) as HRESULT
declare function D3DXCompileShaderFromFileW(byval filename as const WCHAR ptr, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval entrypoint as const zstring ptr, byval profile as const zstring ptr, byval flags as DWORD, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr, byval constant_table as ID3DXConstantTable ptr ptr) as HRESULT

#define D3DXCompileShaderFromFile __MINGW_NAME_AW(D3DXCompileShaderFromFile)

declare function D3DXCompileShaderFromResourceA(byval module as HMODULE, byval resource as const zstring ptr, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval entrypoint as const zstring ptr, byval profile as const zstring ptr, byval flags as DWORD, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr, byval constant_table as ID3DXConstantTable ptr ptr) as HRESULT
declare function D3DXCompileShaderFromResourceW(byval module as HMODULE, byval resource as const WCHAR ptr, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval entrypoint as const zstring ptr, byval profile as const zstring ptr, byval flags as DWORD, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr, byval constant_table as ID3DXConstantTable ptr ptr) as HRESULT

#define D3DXCompileShaderFromResource __MINGW_NAME_AW(D3DXCompileShaderFromResource)

declare function D3DXPreprocessShader(byval data_ as const zstring ptr, byval data_len as UINT, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr) as HRESULT
declare function D3DXPreprocessShaderFromFileA(byval filename as const zstring ptr, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr) as HRESULT
declare function D3DXPreprocessShaderFromFileW(byval filename as const WCHAR ptr, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr) as HRESULT

#define D3DXPreprocessShaderFromFile __MINGW_NAME_AW(D3DXPreprocessShaderFromFile)

declare function D3DXPreprocessShaderFromResourceA(byval module as HMODULE, byval resource as const zstring ptr, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr) as HRESULT
declare function D3DXPreprocessShaderFromResourceW(byval module as HMODULE, byval resource as const WCHAR ptr, byval defines as const D3DXMACRO ptr, byval include_ as ID3DXInclude ptr, byval shader as ID3DXBuffer ptr ptr, byval error_messages as ID3DXBuffer ptr ptr) as HRESULT

#define D3DXPreprocessShaderFromResource __MINGW_NAME_AW(D3DXPreprocessShaderFromResource)

declare function D3DXGetShaderConstantTableEx(byval byte_code as const DWORD ptr, byval flags as DWORD, byval constant_table as ID3DXConstantTable ptr ptr) as HRESULT
declare function D3DXGetShaderConstantTable(byval byte_code as const DWORD ptr, byval constant_table as ID3DXConstantTable ptr ptr) as HRESULT

type _D3DXSHADER_CONSTANTTABLE
	Size as DWORD
	Creator as DWORD
	Version as DWORD
	Constants as DWORD
	ConstantInfo as DWORD
	Flags as DWORD
	Target as DWORD
end type

type D3DXSHADER_CONSTANTTABLE as _D3DXSHADER_CONSTANTTABLE
type LPD3DXSHADER_CONSTANTTABLE as _D3DXSHADER_CONSTANTTABLE ptr

type _D3DXSHADER_CONSTANTINFO
	Name as DWORD
	RegisterSet as WORD
	RegisterIndex as WORD
	RegisterCount as WORD
	Reserved as WORD
	TypeInfo as DWORD
	DefaultValue as DWORD
end type

type D3DXSHADER_CONSTANTINFO as _D3DXSHADER_CONSTANTINFO
type LPD3DXSHADER_CONSTANTINFO as _D3DXSHADER_CONSTANTINFO ptr

type _D3DXSHADER_TYPEINFO
	Class as WORD
	as WORD Type
	Rows as WORD
	Columns as WORD
	Elements as WORD
	StructMembers as WORD
	StructMemberInfo as DWORD
end type

type D3DXSHADER_TYPEINFO as _D3DXSHADER_TYPEINFO
type LPD3DXSHADER_TYPEINFO as _D3DXSHADER_TYPEINFO ptr

type _D3DXSHADER_STRUCTMEMBERINFO
	Name as DWORD
	TypeInfo as DWORD
end type

type D3DXSHADER_STRUCTMEMBERINFO as _D3DXSHADER_STRUCTMEMBERINFO
type LPD3DXSHADER_STRUCTMEMBERINFO as _D3DXSHADER_STRUCTMEMBERINFO ptr

end extern
