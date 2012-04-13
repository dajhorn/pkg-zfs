dnl #
dnl # Default ZFS kernel configuration 
dnl #
AC_DEFUN([ZFS_AC_CONFIG_KERNEL], [
	ZFS_AC_KERNEL
	ZFS_AC_KERNEL_CONFIG
	SPL_AC_DEBUG_KMEM
	SPL_AC_DEBUG_KMEM_TRACKING
	SPL_AC_ATOMIC_SPINLOCK
	SPL_AC_TYPE_ATOMIC64_CMPXCHG
	SPL_AC_TYPE_ATOMIC64_XCHG
	SPL_AC_TYPE_UINTPTR_T
	SPL_AC_3ARGS_INIT_WORK
	SPL_AC_2ARGS_REGISTER_SYSCTL
	SPL_AC_SET_SHRINKER
	SPL_AC_3ARGS_SHRINKER_CALLBACK
	SPL_AC_PATH_IN_NAMEIDATA
	SPL_AC_TASK_CURR
	SPL_AC_CTL_UNNUMBERED
	SPL_AC_CTL_NAME
	SPL_AC_FLS64
	SPL_AC_DEVICE_CREATE
	SPL_AC_5ARGS_DEVICE_CREATE
	SPL_AC_CLASS_DEVICE_CREATE
	SPL_AC_SET_NORMALIZED_TIMESPEC_EXPORT
	SPL_AC_SET_NORMALIZED_TIMESPEC_INLINE
	SPL_AC_TIMESPEC_SUB
	SPL_AC_INIT_UTSNAME
	SPL_AC_FDTABLE_HEADER
	SPL_AC_FILES_FDTABLE
	SPL_AC_UACCESS_HEADER
	SPL_AC_KMALLOC_NODE
	SPL_AC_MONOTONIC_CLOCK
	SPL_AC_INODE_I_MUTEX
	SPL_AC_MUTEX_OWNER
	SPL_AC_MUTEX_OWNER_TASK_STRUCT
	SPL_AC_MUTEX_LOCK_NESTED
	SPL_AC_3ARGS_ON_EACH_CPU
	SPL_AC_KALLSYMS_LOOKUP_NAME
	SPL_AC_GET_VMALLOC_INFO
	SPL_AC_PGDAT_HELPERS
	SPL_AC_FIRST_ONLINE_PGDAT
	SPL_AC_NEXT_ONLINE_PGDAT
	SPL_AC_NEXT_ZONE
	SPL_AC_PGDAT_LIST
	SPL_AC_GLOBAL_PAGE_STATE
	SPL_AC_ZONE_STAT_ITEM_FREE
	SPL_AC_ZONE_STAT_ITEM_INACTIVE
	SPL_AC_ZONE_STAT_ITEM_ACTIVE
	SPL_AC_GET_ZONE_COUNTS
	SPL_AC_USER_PATH_DIR
	SPL_AC_SET_FS_PWD
	SPL_AC_2ARGS_SET_FS_PWD
	SPL_AC_2ARGS_VFS_UNLINK
	SPL_AC_4ARGS_VFS_RENAME
	SPL_AC_VFS_FSYNC
	SPL_AC_2ARGS_VFS_FSYNC
	SPL_AC_FS_STRUCT_SPINLOCK
	SPL_AC_CRED_STRUCT
	SPL_AC_GROUPS_SEARCH
	SPL_AC_PUT_TASK_STRUCT
	SPL_AC_5ARGS_PROC_HANDLER
	SPL_AC_KVASPRINTF
	SPL_AC_EXPORTED_RWSEM_IS_LOCKED
	SPL_AC_KERNEL_INVALIDATE_INODES
	SPL_AC_KERNEL_2ARGS_INVALIDATE_INODES
	SPL_AC_SHRINK_DCACHE_MEMORY
	SPL_AC_SHRINK_ICACHE_MEMORY
	SPL_AC_KERN_PATH_PARENT_HEADER
	SPL_AC_KERN_PATH_PARENT_SYMBOL
	SPL_AC_2ARGS_ZLIB_DEFLATE_WORKSPACESIZE
	SPL_AC_SHRINK_CONTROL_STRUCT
	ZFS_AC_KERNEL_BDEV_BLOCK_DEVICE_OPERATIONS
	ZFS_AC_KERNEL_TYPE_FMODE_T
	ZFS_AC_KERNEL_KOBJ_NAME_LEN
	ZFS_AC_KERNEL_BLKDEV_GET_BY_PATH
	ZFS_AC_KERNEL_OPEN_BDEV_EXCLUSIVE
	ZFS_AC_KERNEL_INVALIDATE_BDEV_ARGS
	ZFS_AC_KERNEL_BDEV_LOGICAL_BLOCK_SIZE
	ZFS_AC_KERNEL_BIO_EMPTY_BARRIER
	ZFS_AC_KERNEL_BIO_FAILFAST
	ZFS_AC_KERNEL_BIO_FAILFAST_DTD
	ZFS_AC_KERNEL_REQ_FAILFAST_MASK
	ZFS_AC_KERNEL_BIO_END_IO_T_ARGS
	ZFS_AC_KERNEL_BIO_RW_SYNC
	ZFS_AC_KERNEL_BIO_RW_SYNCIO
	ZFS_AC_KERNEL_REQ_SYNC
	ZFS_AC_KERNEL_BLK_END_REQUEST
	ZFS_AC_KERNEL_BLK_QUEUE_FLUSH
	ZFS_AC_KERNEL_BLK_QUEUE_MAX_HW_SECTORS
	ZFS_AC_KERNEL_BLK_QUEUE_MAX_SEGMENTS
	ZFS_AC_KERNEL_BLK_QUEUE_PHYSICAL_BLOCK_SIZE
	ZFS_AC_KERNEL_BLK_QUEUE_IO_OPT
	ZFS_AC_KERNEL_BLK_QUEUE_NONROT
	ZFS_AC_KERNEL_BLK_QUEUE_DISCARD
	ZFS_AC_KERNEL_BLK_FETCH_REQUEST
	ZFS_AC_KERNEL_BLK_REQUEUE_REQUEST
	ZFS_AC_KERNEL_BLK_RQ_BYTES
	ZFS_AC_KERNEL_BLK_RQ_POS
	ZFS_AC_KERNEL_BLK_RQ_SECTORS
	ZFS_AC_KERNEL_GET_DISK_RO
	ZFS_AC_KERNEL_RQ_IS_SYNC
	ZFS_AC_KERNEL_RQ_FOR_EACH_SEGMENT
	ZFS_AC_KERNEL_CONST_XATTR_HANDLER
	ZFS_AC_KERNEL_XATTR_HANDLER_GET
	ZFS_AC_KERNEL_XATTR_HANDLER_SET
	ZFS_AC_KERNEL_SHOW_OPTIONS
	ZFS_AC_KERNEL_FSYNC
	ZFS_AC_KERNEL_EVICT_INODE
	ZFS_AC_KERNEL_NR_CACHED_OBJECTS
	ZFS_AC_KERNEL_FREE_CACHED_OBJECTS
	ZFS_AC_KERNEL_FALLOCATE
	ZFS_AC_KERNEL_AUTOMOUNT
	ZFS_AC_KERNEL_INSERT_INODE_LOCKED
	ZFS_AC_KERNEL_D_OBTAIN_ALIAS
	ZFS_AC_KERNEL_CHECK_DISK_SIZE_CHANGE
	ZFS_AC_KERNEL_TRUNCATE_SETSIZE
	ZFS_AC_KERNEL_6ARGS_SECURITY_INODE_INIT_SECURITY
	ZFS_AC_KERNEL_CALLBACK_SECURITY_INODE_INIT_SECURITY
	ZFS_AC_KERNEL_MOUNT_NODEV
	ZFS_AC_KERNEL_SHRINK
	ZFS_AC_KERNEL_BDI
	ZFS_AC_KERNEL_BDI_SETUP_AND_REGISTER
	ZFS_AC_KERNEL_SET_NLINK

	AS_IF([test "$LINUX_OBJ" != "$LINUX"], [
		KERNELMAKE_PARAMS="$KERNELMAKE_PARAMS O=$LINUX_OBJ"
	])
	AC_SUBST(KERNELMAKE_PARAMS)


	dnl # -Wall -fno-strict-aliasing -Wstrict-prototypes and other
	dnl # compiler options are added by the kernel build system.
	KERNELCPPFLAGS="$KERNELCPPFLAGS $NO_UNUSED_BUT_SET_VARIABLE"
	KERNELCPPFLAGS="$KERNELCPPFLAGS -DHAVE_SPL -D_KERNEL"
	KERNELCPPFLAGS="$KERNELCPPFLAGS -DTEXT_DOMAIN=\\\"zfs-linux-kernel\\\""

	AC_SUBST(KERNELCPPFLAGS)
])

dnl #
dnl # Detect name used for Module.symvers file in kernel
dnl #
AC_DEFUN([ZFS_AC_MODULE_SYMVERS], [
	modpost=$LINUX/scripts/Makefile.modpost
	AC_MSG_CHECKING([kernel file name for module symbols])
	AS_IF([test -f "$modpost"], [
		AS_IF([grep -q Modules.symvers $modpost], [
			LINUX_SYMBOLS=Modules.symvers
		], [
			LINUX_SYMBOLS=Module.symvers
		])

		AS_IF([test ! -f "$LINUX_OBJ/$LINUX_SYMBOLS"], [
			AC_MSG_ERROR([
	*** Please make sure the kernel devel package for your distribution
	*** is installed.  If your building with a custom kernel make sure the
	*** kernel is configured, built, and the '--with-linux=PATH' configure
	*** option refers to the location of the kernel source.])
		])
	], [
		LINUX_SYMBOLS=NONE
	])
	AC_MSG_RESULT($LINUX_SYMBOLS)
	AC_SUBST(LINUX_SYMBOLS)
])

dnl #
dnl # Detect the kernel to be built against
dnl #
AC_DEFUN([ZFS_AC_KERNEL], [
	AC_ARG_WITH([linux],
		AS_HELP_STRING([--with-linux=PATH],
		[Path to kernel source]),
		[kernelsrc="$withval"])

	AC_ARG_WITH(linux-obj,
		AS_HELP_STRING([--with-linux-obj=PATH],
		[Path to kernel build objects]),
		[kernelbuild="$withval"])

	AC_MSG_CHECKING([kernel source directory])
	AS_IF([test -z "$kernelsrc"], [
		AS_IF([test -e "/lib/modules/$(uname -r)/source"], [
			headersdir="/lib/modules/$(uname -r)/source"
			sourcelink=$(readlink -f "$headersdir")
		], [test -e "/lib/modules/$(uname -r)/build"], [
			headersdir="/lib/modules/$(uname -r)/build"
			sourcelink=$(readlink -f "$headersdir")
		], [
			sourcelink=$(ls -1d /usr/src/kernels/* \
			             /usr/src/linux-* \
			             2>/dev/null | grep -v obj | tail -1)
		])

		AS_IF([test -n "$sourcelink" && test -e ${sourcelink}], [
			kernelsrc=`readlink -f ${sourcelink}`
		], [
			AC_MSG_RESULT([Not found])
			AC_MSG_ERROR([
	*** Please make sure the kernel devel package for your distribution
	*** is installed then try again.  If that fails you can specify the
	*** location of the kernel source with the '--with-linux=PATH' option.])
		])
	], [
		AS_IF([test "$kernelsrc" = "NONE"], [
			kernsrcver=NONE
		])
	])

	AC_MSG_RESULT([$kernelsrc])
	AC_MSG_CHECKING([kernel build directory])
	AS_IF([test -z "$kernelbuild"], [
		AS_IF([test -e "/lib/modules/$(uname -r)/build"], [
			kernelbuild=`readlink -f /lib/modules/$(uname -r)/build`
		], [test -d ${kernelsrc}-obj/${target_cpu}/${target_cpu}], [
			kernelbuild=${kernelsrc}-obj/${target_cpu}/${target_cpu}
		], [test -d ${kernelsrc}-obj/${target_cpu}/default], [
		        kernelbuild=${kernelsrc}-obj/${target_cpu}/default
		], [test -d `dirname ${kernelsrc}`/build-${target_cpu}], [
			kernelbuild=`dirname ${kernelsrc}`/build-${target_cpu}
		], [
			kernelbuild=${kernelsrc}
		])
	])
	AC_MSG_RESULT([$kernelbuild])

	AC_MSG_CHECKING([kernel source version])
	utsrelease1=$kernelbuild/include/linux/version.h
	utsrelease2=$kernelbuild/include/linux/utsrelease.h
	utsrelease3=$kernelbuild/include/generated/utsrelease.h
	AS_IF([test -r $utsrelease1 && fgrep -q UTS_RELEASE $utsrelease1], [
		utsrelease=linux/version.h
	], [test -r $utsrelease2 && fgrep -q UTS_RELEASE $utsrelease2], [
		utsrelease=linux/utsrelease.h
	], [test -r $utsrelease3 && fgrep -q UTS_RELEASE $utsrelease3], [
		utsrelease=generated/utsrelease.h
	])

	AS_IF([test "$utsrelease"], [
		kernsrcver=`(echo "#include <$utsrelease>";
		             echo "kernsrcver=UTS_RELEASE") |
		             cpp -I $kernelbuild/include |
		             grep "^kernsrcver=" | cut -d \" -f 2`

		AS_IF([test -z "$kernsrcver"], [
			AC_MSG_RESULT([Not found])
			AC_MSG_ERROR([*** Cannot determine kernel version.])
		])
	], [
		AC_MSG_RESULT([Not found])
		AC_MSG_ERROR([*** Cannot find UTS_RELEASE definition.])
	])

	AC_MSG_RESULT([$kernsrcver])

	LINUX=${kernelsrc}
	LINUX_OBJ=${kernelbuild}
	LINUX_VERSION=${kernsrcver}

	AC_SUBST(LINUX)
	AC_SUBST(LINUX_OBJ)
	AC_SUBST(LINUX_VERSION)

	ZFS_AC_MODULE_SYMVERS
])

dnl #
dnl # Certain kernel build options are not supported.  These must be
dnl # detected at configure time and cause a build failure.  Otherwise
dnl # modules may be successfully built that behave incorrectly.
dnl #
dnl # CONFIG_PREEMPT - Preempt kernels require special handling.
dnl #
dnl # There are certain kernel build options which when enabled are
dnl # completely incompatible with non GPL kernel modules.  It is best
dnl # to detect these at configure time and fail with a clear error
dnl # rather than build everything and fail during linking.
dnl #
dnl # CONFIG_DEBUG_LOCK_ALLOC - Maps mutex_lock() to mutex_lock_nested()
dnl #
AC_DEFUN([ZFS_AC_KERNEL_CONFIG], [

	ZFS_LINUX_CONFIG([PREEMPT],
		AC_MSG_ERROR([
	*** Kernel built with CONFIG_PREEMPT which is not supported.
	*** You must rebuild your kernel without this option.]), [])

	AS_IF([test "$ZFS_META_LICENSE" = CDDL], [
		ZFS_LINUX_CONFIG([DEBUG_LOCK_ALLOC],
		AC_MSG_ERROR([
	*** Kernel built with CONFIG_DEBUG_LOCK_ALLOC which is
	*** incompatible with the CDDL license.  You must rebuild
	*** your kernel without this option.]), [])
	])

	AS_IF([test "$ZFS_META_LICENSE" = GPL], [
		AC_DEFINE([HAVE_GPL_ONLY_SYMBOLS], [1],
			[Define to 1 if licensed under the GPL])
	])
])

dnl #
dnl # ZFS_LINUX_CONFTEST
dnl #
AC_DEFUN([ZFS_LINUX_CONFTEST], [
cat confdefs.h - <<_ACEOF >conftest.c
$1
_ACEOF
])

dnl #
dnl # ZFS_LANG_PROGRAM(C)([PROLOGUE], [BODY])
dnl #
m4_define([ZFS_LANG_PROGRAM], [
$1
int
main (void)
{
dnl Do *not* indent the following line: there may be CPP directives.
dnl Don't move the `;' right after for the same reason.
$2
  ;
  return 0;
}
])

dnl #
dnl # ZFS_LINUX_COMPILE_IFELSE / like AC_COMPILE_IFELSE
dnl #
AC_DEFUN([ZFS_LINUX_COMPILE_IFELSE], [
	m4_ifvaln([$1], [ZFS_LINUX_CONFTEST([$1])])
	rm -Rf build && mkdir -p build
	echo "obj-m := conftest.o" >build/Makefile
	AS_IF(
		[AC_TRY_COMMAND(cp conftest.c build && make [$2] -C $LINUX_OBJ EXTRA_CFLAGS="-Werror-implicit-function-declaration $EXTRA_KCFLAGS" $ARCH_UM M=$PWD/build) >/dev/null && AC_TRY_COMMAND([$3])],
		[$4],
		[_AC_MSG_LOG_CONFTEST m4_ifvaln([$5],[$5])]
	)
	rm -Rf build
])

dnl #
dnl # ZFS_LINUX_TRY_COMPILE like AC_TRY_COMPILE
dnl #
AC_DEFUN([ZFS_LINUX_TRY_COMPILE],
	[ZFS_LINUX_COMPILE_IFELSE(
	[AC_LANG_SOURCE([ZFS_LANG_PROGRAM([[$1]], [[$2]])])],
	[modules],
	[test -s build/conftest.o],
	[$3], [$4])
])

dnl #
dnl # ZFS_LINUX_CONFIG
dnl #
AC_DEFUN([ZFS_LINUX_CONFIG],
	[AC_MSG_CHECKING([whether Linux was built with CONFIG_$1])
	ZFS_LINUX_TRY_COMPILE([
		#include <linux/module.h>
	],[
		#ifndef CONFIG_$1
		#error CONFIG_$1 not #defined
		#endif
	],[
		AC_MSG_RESULT([yes])
		$2
	],[
		AC_MSG_RESULT([no])
		$3
	])
])

dnl #
dnl # ZFS_CHECK_SYMBOL_EXPORT
dnl # check symbol exported or not
dnl #
AC_DEFUN([ZFS_CHECK_SYMBOL_EXPORT],
	[AC_MSG_CHECKING([whether symbol $1 is exported])
	grep -q -E '[[[:space:]]]$1[[[:space:]]]' \
		$LINUX_OBJ/$LINUX_SYMBOLS 2>/dev/null
	rc=$?
	AS_IF([test $rc -ne 0], [
		export=0
		for file in $2; do
			grep -q -E "EXPORT_SYMBOL.*($1)" "$LINUX/$file" 2>/dev/null
			rc=$?
			AS_IF([test $rc -eq 0], [
				export=1
				break;
			])
		done
		AS_IF([test $export -eq 0], [
			AC_MSG_RESULT([no])
			$4
		], [
			AC_MSG_RESULT([yes])
			$3
		])
	], [
		AC_MSG_RESULT([yes])
		$3
	])
])
