#pragma once

#if __GNUC__ >= 4
# define LIBN_EXPORT(type) extern \
			 __attribute__((visibility("default"))) \
			 type
#elif defined(_MSC_VER)
# define LIBN_EXPORT(type) __declspec(dllexport) type __cdecl
#else
# define LIBN_EXPORT(type) extern type
#endif

LIBN_EXPORT(int) libnative_init();
