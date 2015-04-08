'' FreeBASIC binding for xextproto-7.3.0

#pragma once

#include once "crt/long.bi"

#define _SYNCCONST_H_
#define SYNC_NAME "SYNC"
const SYNC_MAJOR_VERSION = 3
const SYNC_MINOR_VERSION = 1
const XSyncCounterNotify = 0
const XSyncAlarmNotify = 1
#define XSyncAlarmNotifyMask (cast(clong, 1) shl XSyncAlarmNotify)
const XSyncNumberEvents = cast(clong, 2)
const XSyncBadCounter = cast(clong, 0)
const XSyncBadAlarm = cast(clong, 1)
const XSyncBadFence = cast(clong, 2)
#define XSyncNumberErrors (XSyncBadFence + 1)
const XSyncCACounter = cast(clong, 1) shl 0
const XSyncCAValueType = cast(clong, 1) shl 1
const XSyncCAValue = cast(clong, 1) shl 2
const XSyncCATestType = cast(clong, 1) shl 3
const XSyncCADelta = cast(clong, 1) shl 4
const XSyncCAEvents = cast(clong, 1) shl 5
#define _XSyncIntToValue(pv, i) '' TODO: ((pv)->hi=((i<0)?~0:0),(pv)->lo=(i))
#define _XSyncIntsToValue(pv, l, h) '' TODO: ((pv)->lo = (l), (pv)->hi = (h))
#define _XSyncValueGreaterThan(a, b) (((a).hi > (b).hi) orelse (((a).hi = (b).hi) andalso ((a).lo > (b).lo)))
#define _XSyncValueLessThan(a, b) (((a).hi < (b).hi) orelse (((a).hi = (b).hi) andalso ((a).lo < (b).lo)))
#define _XSyncValueGreaterOrEqual(a, b) (((a).hi > (b).hi) orelse (((a).hi = (b).hi) andalso ((a).lo >= (b).lo)))
#define _XSyncValueLessOrEqual(a, b) (((a).hi < (b).hi) orelse (((a).hi = (b).hi) andalso ((a).lo <= (b).lo)))
#define _XSyncValueEqual(a, b) (((a).lo = (b).lo) andalso ((a).hi = (b).hi))
#define _XSyncValueIsNegative(v) iif((v).hi and &h80000000, 1, 0)
#define _XSyncValueIsZero(a) (((a).lo = 0) andalso ((a).hi = 0))
#define _XSyncValueIsPositive(v) iif((v).hi and &h80000000, 0, 1)
#define _XSyncValueLow32(v) (v).lo
#define _XSyncValueHigh32(v) (v).hi
#macro _XSyncValueAdd(presult, a, b, poverflow)
	scope
		dim t as long = (a).lo
		'' TODO: Bool signa = XSyncValueIsNegative(a);
		'' TODO: Bool signb = XSyncValueIsNegative(b);
		'' TODO: ((presult)->lo = (a).lo + (b).lo);
		'' TODO: ((presult)->hi = (a).hi + (b).hi);
		'' TODO: if (t>(presult)->lo) (presult)->hi++;
		'' TODO: *poverflow = ((signa == signb) && !(signa == XSyncValueIsNegative(*presult)));
	end scope
#endmacro
#macro _XSyncValueSubtract(presult, a, b, poverflow)
	scope
		dim t as long = (a).lo
		'' TODO: Bool signa = XSyncValueIsNegative(a);
		'' TODO: Bool signb = XSyncValueIsNegative(b);
		'' TODO: ((presult)->lo = (a).lo - (b).lo);
		'' TODO: ((presult)->hi = (a).hi - (b).hi);
		'' TODO: if (t<(presult)->lo) (presult)->hi--;
		'' TODO: *poverflow = ((signa == signb) && !(signa == XSyncValueIsNegative(*presult)));
	end scope
#endmacro
#define _XSyncMaxValue(pv) '' TODO: ((pv)->hi = 0x7fffffff, (pv)->lo = 0xffffffff)
#define _XSyncMinValue(pv) '' TODO: ((pv)->hi = 0x80000000, (pv)->lo = 0)

type XSyncValueType as long
enum
	XSyncAbsolute
	XSyncRelative
end enum

type XSyncTestType as long
enum
	XSyncPositiveTransition
	XSyncNegativeTransition
	XSyncPositiveComparison
	XSyncNegativeComparison
end enum

type XSyncAlarmState as long
enum
	XSyncAlarmActive
	XSyncAlarmInactive
	XSyncAlarmDestroyed
end enum

type XSyncCounter as XID
type XSyncAlarm as XID
type XSyncFence as XID

type _XSyncValue
	hi as long
	lo as ulong
end type

type XSyncValue as _XSyncValue
