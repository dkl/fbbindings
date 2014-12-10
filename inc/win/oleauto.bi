#pragma once

#include once "crt/long.bi"
#include once "oaidl.bi"

'' The following symbols have been renamed:
''     #define VarI4FromInt => VarI4FromInt_
''     #define VarI8FromInt => VarI8FromInt_

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

extern IID_StdOle as const IID

#define _OLEAUTO_H_
#define STDOLE_MAJORVERNUM &h1
#define STDOLE_MINORVERNUM &h0
#define STDOLE_LCID &h0000
#define STDOLE2_MAJORVERNUM &h2
#define STDOLE2_MINORVERNUM &h0
#define STDOLE2_LCID &h0000

declare function SysAllocString(byval as const OLECHAR ptr) as BSTR
declare function SysReAllocString(byval as BSTR ptr, byval as const OLECHAR ptr) as INT_
declare function SysAllocStringLen(byval as const OLECHAR ptr, byval as UINT) as BSTR
declare function SysReAllocStringLen(byval as BSTR ptr, byval as const OLECHAR ptr, byval as UINT) as INT_
declare sub SysFreeString(byval as BSTR)
declare function SysStringLen(byval as BSTR) as UINT
declare function SysStringByteLen(byval bstr as BSTR) as UINT
declare function SysAllocStringByteLen(byval psz as LPCSTR, byval len_ as UINT) as BSTR
declare function DosDateTimeToVariantTime(byval wDosDate as USHORT_, byval wDosTime as USHORT_, byval pvtime as DOUBLE_ ptr) as INT_
declare function VariantTimeToDosDateTime(byval vtime as DOUBLE_, byval pwDosDate as USHORT_ ptr, byval pwDosTime as USHORT_ ptr) as INT_
declare function SystemTimeToVariantTime(byval lpSystemTime as LPSYSTEMTIME, byval pvtime as DOUBLE_ ptr) as INT_
declare function VariantTimeToSystemTime(byval vtime as DOUBLE_, byval lpSystemTime as LPSYSTEMTIME) as INT_
declare function SafeArrayAllocDescriptor(byval cDims as UINT, byval ppsaOut as SAFEARRAY ptr ptr) as HRESULT
declare function SafeArrayAllocDescriptorEx(byval vt as VARTYPE, byval cDims as UINT, byval ppsaOut as SAFEARRAY ptr ptr) as HRESULT
declare function SafeArrayAllocData(byval psa as SAFEARRAY ptr) as HRESULT
declare function SafeArrayCreate(byval vt as VARTYPE, byval cDims as UINT, byval rgsabound as SAFEARRAYBOUND ptr) as SAFEARRAY ptr
declare function SafeArrayCreateEx(byval vt as VARTYPE, byval cDims as UINT, byval rgsabound as SAFEARRAYBOUND ptr, byval pvExtra as PVOID) as SAFEARRAY ptr
declare function SafeArrayCopyData(byval psaSource as SAFEARRAY ptr, byval psaTarget as SAFEARRAY ptr) as HRESULT
declare function SafeArrayDestroyDescriptor(byval psa as SAFEARRAY ptr) as HRESULT
declare function SafeArrayDestroyData(byval psa as SAFEARRAY ptr) as HRESULT
declare function SafeArrayDestroy(byval psa as SAFEARRAY ptr) as HRESULT
declare function SafeArrayRedim(byval psa as SAFEARRAY ptr, byval psaboundNew as SAFEARRAYBOUND ptr) as HRESULT
declare function SafeArrayGetDim(byval psa as SAFEARRAY ptr) as UINT
declare function SafeArrayGetElemsize(byval psa as SAFEARRAY ptr) as UINT
declare function SafeArrayGetUBound(byval psa as SAFEARRAY ptr, byval nDim as UINT, byval plUbound as LONG_ ptr) as HRESULT
declare function SafeArrayGetLBound(byval psa as SAFEARRAY ptr, byval nDim as UINT, byval plLbound as LONG_ ptr) as HRESULT
declare function SafeArrayLock(byval psa as SAFEARRAY ptr) as HRESULT
declare function SafeArrayUnlock(byval psa as SAFEARRAY ptr) as HRESULT
declare function SafeArrayAccessData(byval psa as SAFEARRAY ptr, byval ppvData as any ptr ptr) as HRESULT
declare function SafeArrayUnaccessData(byval psa as SAFEARRAY ptr) as HRESULT
declare function SafeArrayGetElement(byval psa as SAFEARRAY ptr, byval rgIndices as LONG_ ptr, byval pv as any ptr) as HRESULT
declare function SafeArrayPutElement(byval psa as SAFEARRAY ptr, byval rgIndices as LONG_ ptr, byval pv as any ptr) as HRESULT
declare function SafeArrayCopy(byval psa as SAFEARRAY ptr, byval ppsaOut as SAFEARRAY ptr ptr) as HRESULT
declare function SafeArrayPtrOfIndex(byval psa as SAFEARRAY ptr, byval rgIndices as LONG_ ptr, byval ppvData as any ptr ptr) as HRESULT
declare function SafeArraySetRecordInfo(byval psa as SAFEARRAY ptr, byval prinfo as IRecordInfo ptr) as HRESULT
declare function SafeArrayGetRecordInfo(byval psa as SAFEARRAY ptr, byval prinfo as IRecordInfo ptr ptr) as HRESULT
declare function SafeArraySetIID(byval psa as SAFEARRAY ptr, byval guid as const GUID const ptr) as HRESULT
declare function SafeArrayGetIID(byval psa as SAFEARRAY ptr, byval pguid as GUID ptr) as HRESULT
declare function SafeArrayGetVartype(byval psa as SAFEARRAY ptr, byval pvt as VARTYPE ptr) as HRESULT
declare function SafeArrayCreateVector(byval vt as VARTYPE, byval lLbound as LONG_, byval cElements as ULONG_) as SAFEARRAY ptr
declare function SafeArrayCreateVectorEx(byval vt as VARTYPE, byval lLbound as LONG_, byval cElements as ULONG_, byval pvExtra as PVOID) as SAFEARRAY ptr
declare sub VariantInit(byval pvarg as VARIANTARG ptr)
declare function VariantClear(byval pvarg as VARIANTARG ptr) as HRESULT
declare function VariantCopy(byval pvargDest as VARIANTARG ptr, byval pvargSrc as VARIANTARG ptr) as HRESULT
declare function VariantCopyInd(byval pvarDest as VARIANT ptr, byval pvargSrc as VARIANTARG ptr) as HRESULT
declare function VariantChangeType(byval pvargDest as VARIANTARG ptr, byval pvarSrc as VARIANTARG ptr, byval wFlags as USHORT_, byval vt as VARTYPE) as HRESULT
declare function VariantChangeTypeEx(byval pvargDest as VARIANTARG ptr, byval pvarSrc as VARIANTARG ptr, byval lcid as LCID, byval wFlags as USHORT_, byval vt as VARTYPE) as HRESULT

#define VARIANT_NOVALUEPROP &h01
#define VARIANT_ALPHABOOL &h02
#define VARIANT_NOUSEROVERRIDE &h04
#define VARIANT_CALENDAR_HIJRI &h08
#define VARIANT_LOCALBOOL &h10
#define VARIANT_CALENDAR_THAI &h20
#define VARIANT_CALENDAR_GREGORIAN &h40
#define VARIANT_USE_NLS &h80

declare function VectorFromBstr(byval bstr as BSTR, byval ppsa as SAFEARRAY ptr ptr) as HRESULT
declare function BstrFromVector(byval psa as SAFEARRAY ptr, byval pbstr as BSTR ptr) as HRESULT

#define VAR_TIMEVALUEONLY cast(DWORD, &h00000001)
#define VAR_DATEVALUEONLY cast(DWORD, &h00000002)
#define VAR_VALIDDATE cast(DWORD, &h00000004)
#define VAR_CALENDAR_HIJRI cast(DWORD, &h00000008)
#define VAR_LOCALBOOL cast(DWORD, &h00000010)
#define VAR_FORMAT_NOSUBSTITUTE cast(DWORD, &h00000020)
#define VAR_FOURDIGITYEARS cast(DWORD, &h00000040)
#define LOCALE_USE_NLS &h10000000
#define VAR_CALENDAR_THAI cast(DWORD, &h00000080)
#define VAR_CALENDAR_GREGORIAN cast(DWORD, &h00000100)
#define VTDATEGRE_MAX 2958465
#define VTDATEGRE_MIN (-657434)

declare function VarUI1FromI2(byval sIn_ as SHORT_, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromI4(byval lIn as LONG_, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromI8(byval i64In as LONG64, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromR4(byval fltIn as FLOAT, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromR8(byval dblIn as DOUBLE_, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromCy(byval cyIn as CY, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromDate(byval dateIn as DATE_, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromBool(byval boolIn as VARIANT_BOOL, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromI1(byval cIn as CHAR, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromUI2(byval uiIn as USHORT_, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromUI4(byval ulIn as ULONG_, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromUI8(byval ui64In as ULONG64, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarUI1FromDec(byval pdecIn as DECIMAL ptr, byval pbOut as BYTE_ ptr) as HRESULT
declare function VarI2FromUI1(byval bIn_ as BYTE_, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromI4(byval lIn as LONG_, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromI8(byval i64In as LONG64, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromR4(byval fltIn as FLOAT, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromR8(byval dblIn as DOUBLE_, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromCy(byval cyIn as CY, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromDate(byval dateIn as DATE_, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromBool(byval boolIn as VARIANT_BOOL, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromI1(byval cIn as CHAR, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromUI2(byval uiIn as USHORT_, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromUI4(byval ulIn as ULONG_, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromUI8(byval ui64In as ULONG64, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI2FromDec(byval pdecIn as DECIMAL ptr, byval psOut as SHORT_ ptr) as HRESULT
declare function VarI4FromUI1(byval bIn_ as BYTE_, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromI2(byval sIn_ as SHORT_, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromI8(byval i64In as LONG64, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromR4(byval fltIn as FLOAT, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromR8(byval dblIn as DOUBLE_, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromCy(byval cyIn as CY, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromDate(byval dateIn as DATE_, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromBool(byval boolIn as VARIANT_BOOL, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromI1(byval cIn as CHAR, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromUI2(byval uiIn as USHORT_, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromUI4(byval ulIn as ULONG_, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromUI8(byval ui64In as ULONG64, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromDec(byval pdecIn as DECIMAL ptr, byval plOut as LONG_ ptr) as HRESULT
declare function VarI4FromInt(byval intIn as INT_, byval plOut as LONG_ ptr) as HRESULT
declare function VarI8FromUI1(byval bIn_ as BYTE_, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromI2(byval sIn_ as SHORT_, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromI4(byval lIn as LONG_, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromR4(byval fltIn as FLOAT, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromR8(byval dblIn as DOUBLE_, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromCy(byval cyIn as CY, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromDate(byval dateIn as DATE_, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as culong, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromBool(byval boolIn as VARIANT_BOOL, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromI1(byval cIn as CHAR, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromUI2(byval uiIn as USHORT_, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromUI4(byval ulIn as ULONG_, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromUI8(byval ui64In as ULONG64, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromDec(byval pdecIn as DECIMAL ptr, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarI8FromInt(byval intIn as INT_, byval pi64Out as LONG64 ptr) as HRESULT
declare function VarR4FromUI1(byval bIn_ as BYTE_, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromI2(byval sIn_ as SHORT_, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromI4(byval lIn as LONG_, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromI8(byval i64In as LONG64, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromR8(byval dblIn as DOUBLE_, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromCy(byval cyIn as CY, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromDate(byval dateIn as DATE_, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromBool(byval boolIn as VARIANT_BOOL, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromI1(byval cIn as CHAR, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromUI2(byval uiIn as USHORT_, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromUI4(byval ulIn as ULONG_, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromUI8(byval ui64In as ULONG64, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR4FromDec(byval pdecIn as DECIMAL ptr, byval pfltOut as FLOAT ptr) as HRESULT
declare function VarR8FromUI1(byval bIn_ as BYTE_, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromI2(byval sIn_ as SHORT_, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromI4(byval lIn as LONG_, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromI8(byval i64In as LONG64, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromR4(byval fltIn as FLOAT, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromCy(byval cyIn as CY, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromDate(byval dateIn as DATE_, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromBool(byval boolIn as VARIANT_BOOL, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromI1(byval cIn as CHAR, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromUI2(byval uiIn as USHORT_, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromUI4(byval ulIn as ULONG_, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromUI8(byval ui64In as ULONG64, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarR8FromDec(byval pdecIn as DECIMAL ptr, byval pdblOut as DOUBLE_ ptr) as HRESULT
declare function VarDateFromUI1(byval bIn_ as BYTE_, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromI2(byval sIn_ as SHORT_, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromI4(byval lIn as LONG_, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromI8(byval i64In as LONG64, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromR4(byval fltIn as FLOAT, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromR8(byval dblIn as DOUBLE_, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromCy(byval cyIn as CY, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromBool(byval boolIn as VARIANT_BOOL, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromI1(byval cIn as CHAR, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromUI2(byval uiIn as USHORT_, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromUI4(byval ulIn as ULONG_, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromUI8(byval ui64In as ULONG64, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromDec(byval pdecIn as DECIMAL ptr, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarCyFromUI1(byval bIn_ as BYTE_, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromI2(byval sIn_ as SHORT_, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromI4(byval lIn as LONG_, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromI8(byval i64In as LONG64, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromR4(byval fltIn as FLOAT, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromR8(byval dblIn as DOUBLE_, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromDate(byval dateIn as DATE_, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromBool(byval boolIn as VARIANT_BOOL, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromI1(byval cIn as CHAR, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromUI2(byval uiIn as USHORT_, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromUI4(byval ulIn as ULONG_, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromUI8(byval ui64In as ULONG64, byval pcyOut as CY ptr) as HRESULT
declare function VarCyFromDec(byval pdecIn as DECIMAL ptr, byval pcyOut as CY ptr) as HRESULT
declare function VarBstrFromUI1(byval bVal as BYTE_, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromI2(byval iVal as SHORT_, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromI4(byval lIn as LONG_, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromI8(byval i64In as LONG64, byval lcid as LCID, byval dwFlags as culong, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromR4(byval fltIn as FLOAT, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromR8(byval dblIn as DOUBLE_, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromCy(byval cyIn as CY, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromDate(byval dateIn as DATE_, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromBool(byval boolIn as VARIANT_BOOL, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromI1(byval cIn as CHAR, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromUI2(byval uiIn as USHORT_, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromUI4(byval ulIn as ULONG_, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromUI8(byval ui64In as ULONG64, byval lcid as LCID, byval dwFlags as culong, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBstrFromDec(byval pdecIn as DECIMAL ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarBoolFromUI1(byval bIn_ as BYTE_, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromI2(byval sIn_ as SHORT_, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromI4(byval lIn as LONG_, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromI8(byval i64In as LONG64, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromR4(byval fltIn as FLOAT, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromR8(byval dblIn as DOUBLE_, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromDate(byval dateIn as DATE_, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromCy(byval cyIn as CY, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromI1(byval cIn as CHAR, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromUI2(byval uiIn as USHORT_, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromUI4(byval ulIn as ULONG_, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromUI8(byval i64In as ULONG64, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarBoolFromDec(byval pdecIn as DECIMAL ptr, byval pboolOut as VARIANT_BOOL ptr) as HRESULT
declare function VarI1FromUI1(byval bIn_ as BYTE_, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromI2(byval uiIn as SHORT_, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromI4(byval lIn as LONG_, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromI8(byval i64In as LONG64, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromR4(byval fltIn as FLOAT, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromR8(byval dblIn as DOUBLE_, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromDate(byval dateIn as DATE_, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromCy(byval cyIn as CY, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromBool(byval boolIn as VARIANT_BOOL, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromUI2(byval uiIn as USHORT_, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromUI4(byval ulIn as ULONG_, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromUI8(byval i64In as ULONG64, byval pcOut as CHAR ptr) as HRESULT
declare function VarI1FromDec(byval pdecIn as DECIMAL ptr, byval pcOut as CHAR ptr) as HRESULT
declare function VarUI2FromUI1(byval bIn_ as BYTE_, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromI2(byval uiIn as SHORT_, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromI4(byval lIn as LONG_, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromI8(byval i64In as LONG64, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromR4(byval fltIn as FLOAT, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromR8(byval dblIn as DOUBLE_, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromDate(byval dateIn as DATE_, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromCy(byval cyIn as CY, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromBool(byval boolIn as VARIANT_BOOL, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromI1(byval cIn as CHAR, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromUI4(byval ulIn as ULONG_, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromUI8(byval i64In as ULONG64, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI2FromDec(byval pdecIn as DECIMAL ptr, byval puiOut as USHORT_ ptr) as HRESULT
declare function VarUI4FromUI1(byval bIn_ as BYTE_, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromI2(byval uiIn as SHORT_, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromI4(byval lIn as LONG_, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromI8(byval i64In as LONG64, byval plOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromR4(byval fltIn as FLOAT, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromR8(byval dblIn as DOUBLE_, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromDate(byval dateIn as DATE_, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromCy(byval cyIn as CY, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromBool(byval boolIn as VARIANT_BOOL, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromI1(byval cIn as CHAR, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromUI2(byval uiIn as USHORT_, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromUI8(byval ui64In as ULONG64, byval plOut as ULONG_ ptr) as HRESULT
declare function VarUI4FromDec(byval pdecIn as DECIMAL ptr, byval pulOut as ULONG_ ptr) as HRESULT
declare function VarUI8FromUI1(byval bIn_ as BYTE_, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromI2(byval sIn_ as SHORT_, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromI4(byval lIn as LONG_, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromI8(byval ui64In as LONG64, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromR4(byval fltIn as FLOAT, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromR8(byval dblIn as DOUBLE_, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromCy(byval cyIn as CY, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromDate(byval dateIn as DATE_, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as culong, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromBool(byval boolIn as VARIANT_BOOL, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromI1(byval cIn as CHAR, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromUI2(byval uiIn as USHORT_, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromUI4(byval ulIn as ULONG_, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromDec(byval pdecIn as DECIMAL ptr, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarUI8FromInt(byval intIn as INT_, byval pi64Out as ULONG64 ptr) as HRESULT
declare function VarDecFromUI1(byval bIn_ as BYTE_, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromI2(byval uiIn as SHORT_, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromI4(byval lIn as LONG_, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromI8(byval i64In as LONG64, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromR4(byval fltIn as FLOAT, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromR8(byval dblIn as DOUBLE_, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromDate(byval dateIn as DATE_, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromCy(byval cyIn as CY, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromDisp(byval pdispIn as IDispatch ptr, byval lcid as LCID, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromBool(byval boolIn as VARIANT_BOOL, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromI1(byval cIn as CHAR, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromUI2(byval uiIn as USHORT_, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromUI4(byval ulIn as ULONG_, byval pdecOut as DECIMAL ptr) as HRESULT
declare function VarDecFromUI8(byval ui64In as ULONG64, byval pdecOut as DECIMAL ptr) as HRESULT

'' TODO: #define VarUI4FromUI4(in,pOut) (*(pOut) = (in))
'' TODO: #define VarI4FromI4(in,pOut) (*(pOut) = (in))
'' TODO: #define VarUI8FromUI8(in,pOut) (*(pOut) = (in))
'' TODO: #define VarI8FromI8(in,pOut) (*(pOut) = (in))

#define VarUI1FromInt VarUI1FromI4
#define VarUI1FromUint VarUI1FromUI4
#define VarI2FromInt VarI2FromI4
#define VarI2FromUint VarI2FromUI4
#define VarI4FromInt_ VarI4FromI4
#define VarI4FromUint VarI4FromUI4
#define VarI8FromInt_ VarI8FromI4
#define VarI8FromUint VarI8FromUI4
#define VarR4FromInt VarR4FromI4
#define VarR4FromUint VarR4FromUI4
#define VarR8FromInt VarR8FromI4
#define VarR8FromUint VarR8FromUI4
#define VarDateFromInt VarDateFromI4
#define VarDateFromUint VarDateFromUI4
#define VarCyFromInt VarCyFromI4
#define VarCyFromUint VarCyFromUI4
#define VarBstrFromInt VarBstrFromI4
#define VarBstrFromUint VarBstrFromUI4
#define VarBoolFromInt VarBoolFromI4
#define VarBoolFromUint VarBoolFromUI4
#define VarI1FromInt VarI1FromI4
#define VarI1FromUint VarI1FromUI4
#define VarUI2FromInt VarUI2FromI4
#define VarUI2FromUint VarUI2FromUI4
#define VarUI4FromInt VarUI4FromI4
#define VarUI4FromUint VarUI4FromUI4
#define VarDecFromInt VarDecFromI4
#define VarDecFromUint VarDecFromUI4
#define VarIntFromUI1 VarI4FromUI1
#define VarIntFromI2 VarI4FromI2
#define VarIntFromI4 VarI4FromI4
#define VarIntFromI8 VarI4FromI8
#define VarIntFromR4 VarI4FromR4
#define VarIntFromR8 VarI4FromR8
#define VarIntFromDate VarI4FromDate
#define VarIntFromCy VarI4FromCy
#define VarIntFromStr VarI4FromStr
#define VarIntFromDisp VarI4FromDisp
#define VarIntFromBool VarI4FromBool
#define VarIntFromI1 VarI4FromI1
#define VarIntFromUI2 VarI4FromUI2
#define VarIntFromUI4 VarI4FromUI4
#define VarIntFromUI8 VarI4FromUI8
#define VarIntFromDec VarI4FromDec
#define VarIntFromUint VarI4FromUI4
#define VarUintFromUI1 VarUI4FromUI1
#define VarUintFromI2 VarUI4FromI2
#define VarUintFromI4 VarUI4FromI4
#define VarUintFromI8 VarUI4FromI8
#define VarUintFromR4 VarUI4FromR4
#define VarUintFromR8 VarUI4FromR8
#define VarUintFromDate VarUI4FromDate
#define VarUintFromCy VarUI4FromCy
#define VarUintFromStr VarUI4FromStr
#define VarUintFromDisp VarUI4FromDisp
#define VarUintFromBool VarUI4FromBool
#define VarUintFromI1 VarUI4FromI1
#define VarUintFromUI2 VarUI4FromUI2
#define VarUintFromUI4 VarUI4FromUI4
#define VarUintFromUI8 VarUI4FromUI8
#define VarUintFromDec VarUI4FromDec
#define VarUintFromInt VarUI4FromI4

type NUMPARSE field = 8
	cDig as INT_
	dwInFlags as ULONG_
	dwOutFlags as ULONG_
	cchUsed as INT_
	nBaseShift as INT_
	nPwr10 as INT_
end type

#define NUMPRS_LEADING_WHITE &h0001
#define NUMPRS_TRAILING_WHITE &h0002
#define NUMPRS_LEADING_PLUS &h0004
#define NUMPRS_TRAILING_PLUS &h0008
#define NUMPRS_LEADING_MINUS &h0010
#define NUMPRS_TRAILING_MINUS &h0020
#define NUMPRS_HEX_OCT &h0040
#define NUMPRS_PARENS &h0080
#define NUMPRS_DECIMAL &h0100
#define NUMPRS_THOUSANDS &h0200
#define NUMPRS_CURRENCY &h0400
#define NUMPRS_EXPONENT &h0800
#define NUMPRS_USE_ALL &h1000
#define NUMPRS_STD &h1FFF
#define NUMPRS_NEG &h10000
#define NUMPRS_INEXACT &h20000
#define VTBIT_I1 (1 shl VT_I1)
#define VTBIT_UI1 (1 shl VT_UI1)
#define VTBIT_I2 (1 shl VT_I2)
#define VTBIT_UI2 (1 shl VT_UI2)
#define VTBIT_I4 (1 shl VT_I4)
#define VTBIT_UI4 (1 shl VT_UI4)
#define VTBIT_I8 (1 shl VT_I8)
#define VTBIT_UI8 (1 shl VT_UI8)
#define VTBIT_R4 (1 shl VT_R4)
#define VTBIT_R8 (1 shl VT_R8)
#define VTBIT_CY (1 shl VT_CY)
#define VTBIT_DECIMAL (1 shl VT_DECIMAL)

declare function VarParseNumFromStr(byval strIn as OLECHAR ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pnumprs as NUMPARSE ptr, byval rgbDig as BYTE_ ptr) as HRESULT
declare function VarNumFromParseNum(byval pnumprs as NUMPARSE ptr, byval rgbDig as BYTE_ ptr, byval dwVtBits as ULONG_, byval pvar as VARIANT ptr) as HRESULT
declare function VarAdd(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarAnd(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarCat(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarDiv(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarEqv(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarIdiv(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarImp(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarMod(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarMul(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarOr(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarPow(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarSub(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarXor(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarAbs(byval pvarIn as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarFix(byval pvarIn as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarInt(byval pvarIn as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarNeg(byval pvarIn as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarNot(byval pvarIn as LPVARIANT, byval pvarResult as LPVARIANT) as HRESULT
declare function VarRound(byval pvarIn as LPVARIANT, byval cDecimals as long, byval pvarResult as LPVARIANT) as HRESULT
declare function VarCmp(byval pvarLeft as LPVARIANT, byval pvarRight as LPVARIANT, byval lcid as LCID, byval dwFlags as ULONG_) as HRESULT
declare function VarDecAdd(byval pdecLeft as LPDECIMAL, byval pdecRight as LPDECIMAL, byval pdecResult as LPDECIMAL) as HRESULT
declare function VarDecDiv(byval pdecLeft as LPDECIMAL, byval pdecRight as LPDECIMAL, byval pdecResult as LPDECIMAL) as HRESULT
declare function VarDecMul(byval pdecLeft as LPDECIMAL, byval pdecRight as LPDECIMAL, byval pdecResult as LPDECIMAL) as HRESULT
declare function VarDecSub(byval pdecLeft as LPDECIMAL, byval pdecRight as LPDECIMAL, byval pdecResult as LPDECIMAL) as HRESULT
declare function VarDecAbs(byval pdecIn as LPDECIMAL, byval pdecResult as LPDECIMAL) as HRESULT
declare function VarDecFix(byval pdecIn as LPDECIMAL, byval pdecResult as LPDECIMAL) as HRESULT
declare function VarDecInt(byval pdecIn as LPDECIMAL, byval pdecResult as LPDECIMAL) as HRESULT
declare function VarDecNeg(byval pdecIn as LPDECIMAL, byval pdecResult as LPDECIMAL) as HRESULT
declare function VarDecRound(byval pdecIn as LPDECIMAL, byval cDecimals as long, byval pdecResult as LPDECIMAL) as HRESULT
declare function VarDecCmp(byval pdecLeft as LPDECIMAL, byval pdecRight as LPDECIMAL) as HRESULT
declare function VarDecCmpR8(byval pdecLeft as LPDECIMAL, byval dblRight as double) as HRESULT
declare function VarCyAdd(byval cyLeft as CY, byval cyRight as CY, byval pcyResult as LPCY) as HRESULT
declare function VarCyMul(byval cyLeft as CY, byval cyRight as CY, byval pcyResult as LPCY) as HRESULT
declare function VarCyMulI4(byval cyLeft as CY, byval lRight as clong, byval pcyResult as LPCY) as HRESULT
declare function VarCyMulI8(byval cyLeft as CY, byval lRight as LONG64, byval pcyResult as LPCY) as HRESULT
declare function VarCySub(byval cyLeft as CY, byval cyRight as CY, byval pcyResult as LPCY) as HRESULT
declare function VarCyAbs(byval cyIn as CY, byval pcyResult as LPCY) as HRESULT
declare function VarCyFix(byval cyIn as CY, byval pcyResult as LPCY) as HRESULT
declare function VarCyInt(byval cyIn as CY, byval pcyResult as LPCY) as HRESULT
declare function VarCyNeg(byval cyIn as CY, byval pcyResult as LPCY) as HRESULT
declare function VarCyRound(byval cyIn as CY, byval cDecimals as long, byval pcyResult as LPCY) as HRESULT
declare function VarCyCmp(byval cyLeft as CY, byval cyRight as CY) as HRESULT
declare function VarCyCmpR8(byval cyLeft as CY, byval dblRight as double) as HRESULT
declare function VarBstrCat(byval bstrLeft as BSTR, byval bstrRight as BSTR, byval pbstrResult as LPBSTR) as HRESULT
declare function VarBstrCmp(byval bstrLeft as BSTR, byval bstrRight as BSTR, byval lcid as LCID, byval dwFlags as ULONG_) as HRESULT
declare function VarR8Pow(byval dblLeft as double, byval dblRight as double, byval pdblResult as double ptr) as HRESULT
declare function VarR4CmpR8(byval fltLeft as single, byval dblRight as double) as HRESULT
declare function VarR8Round(byval dblIn as double, byval cDecimals as long, byval pdblResult as double ptr) as HRESULT

#define VARCMP_LT 0
#define VARCMP_EQ 1
#define VARCMP_GT 2
#define VARCMP_NULL 3
#define VT_HARDTYPE VT_RESERVED

type UDATE field = 8
	st as SYSTEMTIME
	wDayOfYear as USHORT_
end type

declare function VarDateFromUdate(byval pudateIn as UDATE ptr, byval dwFlags as ULONG_, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarDateFromUdateEx(byval pudateIn as UDATE ptr, byval lcid as LCID, byval dwFlags as ULONG_, byval pdateOut as DATE_ ptr) as HRESULT
declare function VarUdateFromDate(byval dateIn as DATE_, byval dwFlags as ULONG_, byval pudateOut as UDATE ptr) as HRESULT
declare function GetAltMonthNames(byval lcid as LCID, byval prgp as LPOLESTR ptr ptr) as HRESULT
declare function VarFormat(byval pvarIn as LPVARIANT, byval pstrFormat as LPOLESTR, byval iFirstDay as long, byval iFirstWeek as long, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarFormatDateTime(byval pvarIn as LPVARIANT, byval iNamedFormat as long, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarFormatNumber(byval pvarIn as LPVARIANT, byval iNumDig as long, byval iIncLead as long, byval iUseParens as long, byval iGroup as long, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarFormatPercent(byval pvarIn as LPVARIANT, byval iNumDig as long, byval iIncLead as long, byval iUseParens as long, byval iGroup as long, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarFormatCurrency(byval pvarIn as LPVARIANT, byval iNumDig as long, byval iIncLead as long, byval iUseParens as long, byval iGroup as long, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarWeekdayName(byval iWeekday as long, byval fAbbrev as long, byval iFirstDay as long, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarMonthName(byval iMonth as long, byval fAbbrev as long, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr) as HRESULT
declare function VarFormatFromTokens(byval pvarIn as LPVARIANT, byval pstrFormat as LPOLESTR, byval pbTokCur as LPBYTE, byval dwFlags as ULONG_, byval pbstrOut as BSTR ptr, byval lcid as LCID) as HRESULT
declare function VarTokenizeFormatString(byval pstrFormat as LPOLESTR, byval rgbTok as LPBYTE, byval cbTok as long, byval iFirstDay as long, byval iFirstWeek as long, byval lcid as LCID, byval pcbActual as long ptr) as HRESULT

#define DEFINED_LPTYPELIB
#define DEFINED_DISPID_MEMBERID
#define MEMBERID_NIL DISPID_UNKNOWN
#define ID_DEFAULTINST (-2)
#define DISPATCH_METHOD &h1
#define DISPATCH_PROPERTYGET &h2
#define DISPATCH_PROPERTYPUT &h4
#define DISPATCH_PROPERTYPUTREF &h8
#define DEFINDE_LPTYPEINFO
#define DEFINED_LPTYPECOMP
#define DEFINED_LPCREATETYPELIB
#define DEFINE_LPCREATETYPEINFO

declare function LHashValOfNameSysA(byval syskind as SYSKIND, byval lcid as LCID, byval szName as LPCSTR) as ULONG_
declare function LHashValOfNameSys(byval syskind as SYSKIND, byval lcid as LCID, byval szName as const OLECHAR ptr) as ULONG_

#define LHashValOfName(lcid, szName) LHashValOfNameSys(SYS_WIN32, lcid, szName)
#define WHashValOfLHashVal(lhashval) cast(USHORT_, &h0000ffff and (lhashval))
#define IsHashValCompatible(lhashval1, lhashval2) cast(WINBOOL, -((&h00ff0000 and (lhashval1)) = (&h00ff0000 and (lhashval2))))

declare function LoadTypeLib(byval szFile as const OLECHAR ptr, byval pptlib as ITypeLib ptr ptr) as HRESULT

type tagREGKIND as long
enum
	REGKIND_DEFAULT
	REGKIND_REGISTER
	REGKIND_NONE
end enum

type REGKIND as tagREGKIND

#define LOAD_TLB_AS_32BIT &h20
#define LOAD_TLB_AS_64BIT &h40
#define MASK_TO_RESET_TLB_BITS (not (LOAD_TLB_AS_32BIT or LOAD_TLB_AS_64BIT))

declare function LoadTypeLibEx(byval szFile as LPCOLESTR, byval regkind as REGKIND, byval pptlib as ITypeLib ptr ptr) as HRESULT
declare function LoadRegTypeLib(byval rguid as const GUID const ptr, byval wVerMajor as WORD, byval wVerMinor as WORD, byval lcid as LCID, byval pptlib as ITypeLib ptr ptr) as HRESULT
declare function QueryPathOfRegTypeLib(byval guid as const GUID const ptr, byval wMaj as USHORT_, byval wMin as USHORT_, byval lcid as LCID, byval lpbstrPathName as LPBSTR) as HRESULT
declare function RegisterTypeLib(byval ptlib as ITypeLib ptr, byval szFullPath as OLECHAR ptr, byval szHelpDir as OLECHAR ptr) as HRESULT
declare function UnRegisterTypeLib(byval libID as const GUID const ptr, byval wVerMajor as WORD, byval wVerMinor as WORD, byval lcid as LCID, byval syskind as SYSKIND) as HRESULT
declare function CreateTypeLib(byval syskind as SYSKIND, byval szFile as const OLECHAR ptr, byval ppctlib as ICreateTypeLib ptr ptr) as HRESULT
declare function CreateTypeLib2(byval syskind as SYSKIND, byval szFile as LPCOLESTR, byval ppctlib as ICreateTypeLib2 ptr ptr) as HRESULT

#define DEFINED_LPDISPATCH

type tagPARAMDATA field = 8
	szName as OLECHAR ptr
	vt as VARTYPE
end type

type PARAMDATA as tagPARAMDATA
type LPPARAMDATA as tagPARAMDATA ptr

type tagMETHODDATA field = 8
	szName as OLECHAR ptr
	ppdata as PARAMDATA ptr
	dispid as DISPID
	iMeth as UINT
	cc as CALLCONV
	cArgs as UINT
	wFlags as WORD
	vtReturn as VARTYPE
end type

type METHODDATA as tagMETHODDATA
type LPMETHODDATA as tagMETHODDATA ptr

type tagINTERFACEDATA field = 8
	pmethdata as METHODDATA ptr
	cMembers as UINT
end type

type INTERFACEDATA as tagINTERFACEDATA
type LPINTERFACEDATA as tagINTERFACEDATA ptr

declare function DispGetParam(byval pdispparams as DISPPARAMS ptr, byval position as UINT, byval vtTarg as VARTYPE, byval pvarResult as VARIANT ptr, byval puArgErr as UINT ptr) as HRESULT
declare function DispGetIDsOfNames(byval ptinfo as ITypeInfo ptr, byval rgszNames as OLECHAR ptr ptr, byval cNames as UINT, byval rgdispid as DISPID ptr) as HRESULT
declare function DispInvoke(byval _this as any ptr, byval ptinfo as ITypeInfo ptr, byval dispidMember as DISPID, byval wFlags as WORD, byval pparams as DISPPARAMS ptr, byval pvarResult as VARIANT ptr, byval pexcepinfo as EXCEPINFO ptr, byval puArgErr as UINT ptr) as HRESULT
declare function CreateDispTypeInfo(byval pidata as INTERFACEDATA ptr, byval lcid as LCID, byval pptinfo as ITypeInfo ptr ptr) as HRESULT
declare function CreateStdDispatch(byval punkOuter as IUnknown ptr, byval pvThis as any ptr, byval ptinfo as ITypeInfo ptr, byval ppunkStdDisp as IUnknown ptr ptr) as HRESULT
declare function DispCallFunc(byval pvInstance as any ptr, byval oVft as ULONG_PTR, byval cc as CALLCONV, byval vtReturn as VARTYPE, byval cActuals as UINT, byval prgvt as VARTYPE ptr, byval prgpvarg as VARIANTARG ptr ptr, byval pvargResult as VARIANT ptr) as HRESULT

#define ACTIVEOBJECT_STRONG &h0
#define ACTIVEOBJECT_WEAK &h1

declare function RegisterActiveObject(byval punk as IUnknown ptr, byval rclsid as const IID const ptr, byval dwFlags as DWORD, byval pdwRegister as DWORD ptr) as HRESULT
declare function RevokeActiveObject(byval dwRegister as DWORD, byval pvReserved as any ptr) as HRESULT
declare function GetActiveObject(byval rclsid as const IID const ptr, byval pvReserved as any ptr, byval ppunk as IUnknown ptr ptr) as HRESULT
declare function SetErrorInfo(byval dwReserved as ULONG_, byval perrinfo as IErrorInfo ptr) as HRESULT
declare function GetErrorInfo(byval dwReserved as ULONG_, byval pperrinfo as IErrorInfo ptr ptr) as HRESULT
declare function CreateErrorInfo(byval pperrinfo as ICreateErrorInfo ptr ptr) as HRESULT
declare function GetRecordInfoFromTypeInfo(byval pTypeInfo as ITypeInfo ptr, byval ppRecInfo as IRecordInfo ptr ptr) as HRESULT
declare function GetRecordInfoFromGuids(byval rGuidTypeLib as const GUID const ptr, byval uVerMajor as ULONG_, byval uVerMinor as ULONG_, byval lcid as LCID, byval rGuidTypeInfo as const GUID const ptr, byval ppRecInfo as IRecordInfo ptr ptr) as HRESULT
declare function OaBuildVersion() as ULONG_
declare sub ClearCustData(byval pCustData as LPCUSTDATA)

#define V_UNION(X, Y) (X)->Y
#define V_VT(X) (X)->vt
#define V_RECORDINFO(X) (X)->pRecInfo
#define V_RECORD(X) (X)->pvRecord
#define V_ISBYREF(X) (V_VT(X) and VT_BYREF)
#define V_ISARRAY(X) (V_VT(X) and VT_ARRAY)
#define V_ISVECTOR(X) (V_VT(X) and VT_VECTOR)
#define V_NONE(X) V_I2(X)
#define V_UI1(X) V_UNION(X, bVal)
#define V_UI1REF(X) V_UNION(X, pbVal)
#define V_I2(X) V_UNION(X, iVal)
#define V_I2REF(X) V_UNION(X, piVal)
#define V_I4(X) V_UNION(X, lVal)
#define V_I4REF(X) V_UNION(X, plVal)
#define V_I8(X) V_UNION(X, llVal)
#define V_I8REF(X) V_UNION(X, pllVal)
#define V_R4(X) V_UNION(X, fltVal)
#define V_R4REF(X) V_UNION(X, pfltVal)
#define V_R8(X) V_UNION(X, dblVal)
#define V_R8REF(X) V_UNION(X, pdblVal)
#define V_I1(X) V_UNION(X, cVal)
#define V_I1REF(X) V_UNION(X, pcVal)
#define V_UI2(X) V_UNION(X, uiVal)
#define V_UI2REF(X) V_UNION(X, puiVal)
#define V_UI4(X) V_UNION(X, ulVal)
#define V_UI4REF(X) V_UNION(X, pulVal)
#define V_UI8(X) V_UNION(X, ullVal)
#define V_UI8REF(X) V_UNION(X, pullVal)
#define V_INT(X) V_UNION(X, intVal)
#define V_INTREF(X) V_UNION(X, pintVal)
#define V_UINT(X) V_UNION(X, uintVal)
#define V_UINTREF(X) V_UNION(X, puintVal)

#ifdef __FB_64BIT__
	#define V_INT_PTR(X) V_UNION(X, llVal)
	#define V_UINT_PTR(X) V_UNION(X, ullVal)
	#define V_INT_PTRREF(X) V_UNION(X, pllVal)
	#define V_UINT_PTRREF(X) V_UNION(X, pullVal)
#else
	#define V_INT_PTR(X) V_UNION(X, lVal)
	#define V_UINT_PTR(X) V_UNION(X, ulVal)
	#define V_INT_PTRREF(X) V_UNION(X, plVal)
	#define V_UINT_PTRREF(X) V_UNION(X, pulVal)
#endif

#define V_CY(X) V_UNION(X, cyVal)
#define V_CYREF(X) V_UNION(X, pcyVal)
#define V_DATE(X) V_UNION(X, date)
#define V_DATEREF(X) V_UNION(X, pdate)
#define V_BSTR(X) V_UNION(X, bstrVal)
#define V_BSTRREF(X) V_UNION(X, pbstrVal)
#define V_DISPATCH(X) V_UNION(X, pdispVal)
#define V_DISPATCHREF(X) V_UNION(X, ppdispVal)
#define V_ERROR(X) V_UNION(X, scode)
#define V_ERRORREF(X) V_UNION(X, pscode)
#define V_BOOL(X) V_UNION(X, boolVal)
#define V_BOOLREF(X) V_UNION(X, pboolVal)
#define V_UNKNOWN(X) V_UNION(X, punkVal)
#define V_UNKNOWNREF(X) V_UNION(X, ppunkVal)
#define V_VARIANTREF(X) V_UNION(X, pvarVal)
#define V_ARRAY(X) V_UNION(X, parray)
#define V_ARRAYREF(X) V_UNION(X, pparray)
#define V_BYREF(X) V_UNION(X, byref)
#define V_DECIMAL(X) V_UNION(X, decVal)
#define V_DECIMALREF(X) V_UNION(X, pdecVal)

end extern
