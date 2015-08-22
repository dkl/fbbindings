'' FreeBASIC binding for glibc-2.21
''
'' based on the C header files:
''   Copyright (C) 1991-2015 Free Software Foundation, Inc.
''   This file is part of the GNU C Library.
''
''   The GNU C Library is free software; you can redistribute it and/or
''   modify it under the terms of the GNU Lesser General Public
''   License as published by the Free Software Foundation; either
''   version 2.1 of the License, or (at your option) any later version.
''
''   The GNU C Library is distributed in the hope that it will be useful,
''   but WITHOUT ANY WARRANTY; without even the implied warranty of
''   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
''   Lesser General Public License for more details.
''
''   You should have received a copy of the GNU Lesser General Public
''   License along with the GNU C Library; if not, see
''   <http://www.gnu.org/licenses/>.  
''
'' translated to FreeBASIC by:
''   Copyright © 2015 FreeBASIC development team

#pragma once

#include once "bits/types.bi"
#include once "crt/time.bi"
#include once "sys/select.bi"
#include once "bits/timex.bi"

extern "C"

const _STRUCT_TIMEVAL = 1

type timeval
	tv_sec as __time_t
	tv_usec as __suseconds_t
end type

const _SYS_TIME_H = 1
#macro TIMEVAL_TO_TIMESPEC(tv, ts)
	scope
		(ts)->tv_sec = (tv)->tv_sec
		(ts)->tv_nsec = (tv)->tv_usec * 1000
	end scope
#endmacro
#macro TIMESPEC_TO_TIMEVAL(tv, ts)
	scope
		(tv)->tv_sec = (ts)->tv_sec
		(tv)->tv_usec = (ts)->tv_nsec / 1000
	end scope
#endmacro

type timezone
	tz_minuteswest as long
	tz_dsttime as long
end type

type __timezone_ptr_t as timezone ptr
declare function gettimeofday(byval __tv as timeval ptr, byval __tz as __timezone_ptr_t) as long
declare function settimeofday(byval __tv as const timeval ptr, byval __tz as const timezone ptr) as long
declare function adjtime(byval __delta as const timeval ptr, byval __olddelta as timeval ptr) as long

type __itimer_which as long
enum
	ITIMER_REAL = 0
	ITIMER_VIRTUAL = 1
	ITIMER_PROF = 2
end enum

#define ITIMER_REAL ITIMER_REAL
#define ITIMER_VIRTUAL ITIMER_VIRTUAL
#define ITIMER_PROF ITIMER_PROF

type itimerval
	it_interval as timeval
	it_value as timeval
end type

type __itimer_which_t as __itimer_which
declare function getitimer(byval __which as __itimer_which_t, byval __value as itimerval ptr) as long
declare function setitimer(byval __which as __itimer_which_t, byval __new as const itimerval ptr, byval __old as itimerval ptr) as long
declare function utimes(byval __file as const zstring ptr, byval __tvp as const timeval ptr) as long
declare function lutimes(byval __file as const zstring ptr, byval __tvp as const timeval ptr) as long
declare function futimes(byval __fd as long, byval __tvp as const timeval ptr) as long
declare function futimesat(byval __fd as long, byval __file as const zstring ptr, byval __tvp as const timeval ptr) as long
#define timerisset(tvp) ((tvp)->tv_sec orelse (tvp)->tv_usec)
'' TODO: # define timerclear(tvp) ((tvp)->tv_sec = (tvp)->tv_usec = 0)
'' TODO: # define timercmp(a, b, CMP) (((a)->tv_sec == (b)->tv_sec) ? ((a)->tv_usec CMP (b)->tv_usec) : ((a)->tv_sec CMP (b)->tv_sec))

#macro timeradd(a, b, result)
	scope
		(result)->tv_sec = (a)->tv_sec + (b)->tv_sec
		(result)->tv_usec = (a)->tv_usec + (b)->tv_usec
		if (result)->tv_usec >= 1000000 then
			'' TODO: ++(result)->tv_sec;
			(result)->tv_usec -= 1000000
		end if
	end scope
#endmacro
#macro timersub(a, b, result)
	scope
		(result)->tv_sec = (a)->tv_sec - (b)->tv_sec
		(result)->tv_usec = (a)->tv_usec - (b)->tv_usec
		if (result)->tv_usec < 0 then
			'' TODO: --(result)->tv_sec;
			(result)->tv_usec += 1000000
		end if
	end scope
#endmacro
const _BITS_TIME_H = 1
#define CLOCKS_PER_SEC cast(clock_t, 1000000)
const CLOCK_REALTIME = 0
const CLOCK_MONOTONIC = 1
const CLOCK_PROCESS_CPUTIME_ID = 2
const CLOCK_THREAD_CPUTIME_ID = 3
const CLOCK_MONOTONIC_RAW = 4
const CLOCK_REALTIME_COARSE = 5
const CLOCK_MONOTONIC_COARSE = 6
const CLOCK_BOOTTIME = 7
const CLOCK_REALTIME_ALARM = 8
const CLOCK_BOOTTIME_ALARM = 9
const CLOCK_TAI = 11
const TIMER_ABSTIME = 1
declare function clock_adjtime(byval __clock_id as __clockid_t, byval __utx as timex ptr) as long

end extern
