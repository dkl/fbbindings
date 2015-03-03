#pragma once

#include once "crt/string.bi"
#include once "crt/math.bi"
#include once "CUError.bi"
#include once "TestDB.bi"
#include once "TestRun.bi"

#define CUNIT_CUNIT_H_SEEN
#define CU_VERSION "2.1-3"
#define CU_MAX_TEST_NAME_LENGTH 256
#define CU_MAX_SUITE_NAME_LENGTH 256
#define CU_TRUE 1
#define CU_FALSE 0
#define CU_MAX(a, b) iif((a) >= (b), (a), (b))
#define CU_MIN(a, b) iif((a) >= (b), (b), (a))
#macro CU_PASS(msg)
	scope
		CU_assertImplementation(CU_TRUE, __LINE__, ("CU_PASS(" + #msg) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT(value)
	scope
		CU_assertImplementation((value), __LINE__, #value, __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_FATAL(value)
	scope
		CU_assertImplementation((value), __LINE__, #value, __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_TEST(value)
	scope
		CU_assertImplementation((value), __LINE__, #value, __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_TEST_FATAL(value)
	scope
		CU_assertImplementation((value), __LINE__, #value, __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_FAIL(msg)
	scope
		CU_assertImplementation(CU_FALSE, __LINE__, ("CU_FAIL(" + #msg) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_FAIL_FATAL(msg)
	scope
		CU_assertImplementation(CU_FALSE, __LINE__, ("CU_FAIL_FATAL(" + #msg) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_TRUE(value)
	scope
		CU_assertImplementation((value), __LINE__, ("CU_ASSERT_TRUE(" + #value) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_TRUE_FATAL(value)
	scope
		CU_assertImplementation((value), __LINE__, ("CU_ASSERT_TRUE_FATAL(" + #value) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_FALSE(value)
	scope
		CU_assertImplementation(-((value) = 0), __LINE__, ("CU_ASSERT_FALSE(" + #value) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_FALSE_FATAL(value)
	scope
		CU_assertImplementation(-((value) = 0), __LINE__, ("CU_ASSERT_FALSE_FATAL(" + #value) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_EQUAL(actual, expected)
	scope
		CU_assertImplementation(-((actual) = (expected)), __LINE__, ((("CU_ASSERT_EQUAL(" + #actual) + ",") + #expected) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_EQUAL_FATAL(actual, expected)
	scope
		CU_assertImplementation(-((actual) = (expected)), __LINE__, ((("CU_ASSERT_EQUAL_FATAL(" + #actual) + ",") + #expected) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_NOT_EQUAL(actual, expected)
	scope
		CU_assertImplementation(-((actual) <> (expected)), __LINE__, ((("CU_ASSERT_NOT_EQUAL(" + #actual) + ",") + #expected) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_NOT_EQUAL_FATAL(actual, expected)
	scope
		CU_assertImplementation(-((actual) <> (expected)), __LINE__, ((("CU_ASSERT_NOT_EQUAL_FATAL(" + #actual) + ",") + #expected) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_PTR_EQUAL(actual, expected)
	scope
		CU_assertImplementation(-(cptr(const any ptr, (actual)) = cptr(const any ptr, (expected))), __LINE__, ((("CU_ASSERT_PTR_EQUAL(" + #actual) + ",") + #expected) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_PTR_EQUAL_FATAL(actual, expected)
	scope
		CU_assertImplementation(-(cptr(const any ptr, (actual)) = cptr(const any ptr, (expected))), __LINE__, ((("CU_ASSERT_PTR_EQUAL_FATAL(" + #actual) + ",") + #expected) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_PTR_NOT_EQUAL(actual, expected)
	scope
		CU_assertImplementation(-(cptr(const any ptr, (actual)) <> cptr(const any ptr, (expected))), __LINE__, ((("CU_ASSERT_PTR_NOT_EQUAL(" + #actual) + ",") + #expected) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_PTR_NOT_EQUAL_FATAL(actual, expected)
	scope
		CU_assertImplementation(-(cptr(const any ptr, (actual)) <> cptr(const any ptr, (expected))), __LINE__, ((("CU_ASSERT_PTR_NOT_EQUAL_FATAL(" + #actual) + ",") + #expected) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_PTR_NULL(value)
	scope
		CU_assertImplementation(-(NULL = cptr(const any ptr, (value))), __LINE__, ("CU_ASSERT_PTR_NULL(" + #value) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_PTR_NULL_FATAL(value)
	scope
		CU_assertImplementation(-(NULL = cptr(const any ptr, (value))), __LINE__, ("CU_ASSERT_PTR_NULL_FATAL(" + #value) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_PTR_NOT_NULL(value)
	scope
		CU_assertImplementation(-(NULL <> cptr(const any ptr, (value))), __LINE__, ("CU_ASSERT_PTR_NOT_NULL(" + #value) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_PTR_NOT_NULL_FATAL(value)
	scope
		CU_assertImplementation(-(NULL <> cptr(const any ptr, (value))), __LINE__, ("CU_ASSERT_PTR_NOT_NULL_FATAL(" + #value) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_STRING_EQUAL(actual, expected)
	scope
		CU_assertImplementation(-(strcmp(cptr(const zstring ptr, (actual)), cptr(const zstring ptr, (expected))) = 0), __LINE__, ((("CU_ASSERT_STRING_EQUAL(" + #actual) + ",") + #expected) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_STRING_EQUAL_FATAL(actual, expected)
	scope
		CU_assertImplementation(-(strcmp(cptr(const zstring ptr, (actual)), cptr(const zstring ptr, (expected))) = 0), __LINE__, ((("CU_ASSERT_STRING_EQUAL_FATAL(" + #actual) + ",") + #expected) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_STRING_NOT_EQUAL(actual, expected)
	scope
		CU_assertImplementation(strcmp(cptr(const zstring ptr, (actual)), cptr(const zstring ptr, (expected))), __LINE__, ((("CU_ASSERT_STRING_NOT_EQUAL(" + #actual) + ",") + #expected) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_STRING_NOT_EQUAL_FATAL(actual, expected)
	scope
		CU_assertImplementation(strcmp(cptr(const zstring ptr, (actual)), cptr(const zstring ptr, (expected))), __LINE__, ((("CU_ASSERT_STRING_NOT_EQUAL_FATAL(" + #actual) + ",") + #expected) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_NSTRING_EQUAL(actual, expected, count)
	scope
		CU_assertImplementation(-(strncmp(cptr(const zstring ptr, (actual)), cptr(const zstring ptr, (expected)), cuint((count))) = 0), __LINE__, ((((("CU_ASSERT_NSTRING_EQUAL(" + #actual) + ",") + #expected) + ",") + #count) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_NSTRING_EQUAL_FATAL(actual, expected, count)
	scope
		CU_assertImplementation(-(strncmp(cptr(const zstring ptr, (actual)), cptr(const zstring ptr, (expected)), cuint((count))) = 0), __LINE__, ((((("CU_ASSERT_NSTRING_EQUAL_FATAL(" + #actual) + ",") + #expected) + ",") + #count) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_NSTRING_NOT_EQUAL(actual, expected, count)
	scope
		CU_assertImplementation(strncmp(cptr(const zstring ptr, (actual)), cptr(const zstring ptr, (expected)), cuint((count))), __LINE__, ((((("CU_ASSERT_NSTRING_NOT_EQUAL(" + #actual) + ",") + #expected) + ",") + #count) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_NSTRING_NOT_EQUAL_FATAL(actual, expected, count)
	scope
		CU_assertImplementation(strncmp(cptr(const zstring ptr, (actual)), cptr(const zstring ptr, (expected)), cuint((count))), __LINE__, ((((("CU_ASSERT_NSTRING_NOT_EQUAL_FATAL(" + #actual) + ",") + #expected) + ",") + #count) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_DOUBLE_EQUAL(actual, expected, granularity)
	scope
		CU_assertImplementation(-(fabs(cdbl((actual)) - (expected)) <= fabs(cdbl((granularity)))), __LINE__, ((((("CU_ASSERT_DOUBLE_EQUAL(" + #actual) + ",") + #expected) + ",") + #granularity) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_DOUBLE_EQUAL_FATAL(actual, expected, granularity)
	scope
		CU_assertImplementation(-(fabs(cdbl((actual)) - (expected)) <= fabs(cdbl((granularity)))), __LINE__, ((((("CU_ASSERT_DOUBLE_EQUAL_FATAL(" + #actual) + ",") + #expected) + ",") + #granularity) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
#macro CU_ASSERT_DOUBLE_NOT_EQUAL(actual, expected, granularity)
	scope
		CU_assertImplementation(-(fabs(cdbl((actual)) - (expected)) > fabs(cdbl((granularity)))), __LINE__, ((((("CU_ASSERT_DOUBLE_NOT_EQUAL(" + #actual) + ",") + #expected) + ",") + #granularity) + ")", __FILE__, "", CU_FALSE)
	end scope
#endmacro
#macro CU_ASSERT_DOUBLE_NOT_EQUAL_FATAL(actual, expected, granularity)
	scope
		CU_assertImplementation(-(fabs(cdbl((actual)) - (expected)) > fabs(cdbl((granularity)))), __LINE__, ((((("CU_ASSERT_DOUBLE_NOT_EQUAL_FATAL(" + #actual) + ",") + #expected) + ",") + #granularity) + ")", __FILE__, "", CU_TRUE)
	end scope
#endmacro
