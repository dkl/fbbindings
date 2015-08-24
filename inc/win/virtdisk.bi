'' FreeBASIC binding for mingw-w64-v4.0.4
''
'' based on the C header files:
''   DISCLAIMER
''   This file has no copyright assigned and is placed in the Public Domain.
''   This file is part of the mingw-w64 runtime package.
''
''   The mingw-w64 runtime package and its code is distributed in the hope that it 
''   will be useful but WITHOUT ANY WARRANTY.  ALL WARRANTIES, EXPRESSED OR 
''   IMPLIED ARE HEREBY DISCLAIMED.  This includes but is not limited to 
''   warranties of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
''
'' translated to FreeBASIC by:
''   Copyright © 2015 FreeBASIC development team

#pragma once

#define _INC_VIRTDISK

#if _WIN32_WINNT = &h0602
	extern "Windows"

	type _ATTACH_VIRTUAL_DISK_FLAG as long
	enum
		ATTACH_VIRTUAL_DISK_FLAG_NONE = &h00000000
		ATTACH_VIRTUAL_DISK_FLAG_READ_ONLY = &h00000001
		ATTACH_VIRTUAL_DISK_FLAG_NO_DRIVE_LETTER = &h00000002
		ATTACH_VIRTUAL_DISK_FLAG_PERMANENT_LIFETIME = &h00000004
		ATTACH_VIRTUAL_DISK_FLAG_NO_LOCAL_HOST = &h00000008
	end enum

	type ATTACH_VIRTUAL_DISK_FLAG as _ATTACH_VIRTUAL_DISK_FLAG

	type _ATTACH_VIRTUAL_DISK_VERSION as long
	enum
		ATTACH_VIRTUAL_DISK_VERSION_UNSPECIFIED = 0
		ATTACH_VIRTUAL_DISK_VERSION_1 = 1
	end enum

	type ATTACH_VIRTUAL_DISK_VERSION as _ATTACH_VIRTUAL_DISK_VERSION

	type _COMPACT_VIRTUAL_DISK_FLAG as long
	enum
		COMPACT_VIRTUAL_DISK_FLAG_NONE = &h00000000
	end enum

	type COMPACT_VIRTUAL_DISK_FLAG as _COMPACT_VIRTUAL_DISK_FLAG

	type _COMPACT_VIRTUAL_DISK_VERSION as long
	enum
		COMPACT_VIRTUAL_DISK_VERSION_UNSPECIFIED = 0
		COMPACT_VIRTUAL_DISK_VERSION_1 = 1
	end enum

	type COMPACT_VIRTUAL_DISK_VERSION as _COMPACT_VIRTUAL_DISK_VERSION

	type _CREATE_VIRTUAL_DISK_FLAG as long
	enum
		CREATE_VIRTUAL_DISK_FLAG_NONE = &h00000000
		CREATE_VIRTUAL_DISK_FLAG_FULL_PHYSICAL_ALLOCATION = &h00000001
	end enum

	type CREATE_VIRTUAL_DISK_FLAG as _CREATE_VIRTUAL_DISK_FLAG

	type _CREATE_VIRTUAL_DISK_VERSION as long
	enum
		CREATE_VIRTUAL_DISK_VERSION_UNSPECIFIED = 0
		CREATE_VIRTUAL_DISK_VERSION_1 = 1
	end enum

	type CREATE_VIRTUAL_DISK_VERSION as _CREATE_VIRTUAL_DISK_VERSION

	type _DEPENDENT_DISK_FLAG as long
	enum
		DEPENDENT_DISK_FLAG_NONE = &h00000000
		DEPENDENT_DISK_FLAG_MULT_BACKING_FILES = &h00000001
		DEPENDENT_DISK_FLAG_FULLY_ALLOCATED = &h00000002
		DEPENDENT_DISK_FLAG_READ_ONLY = &h00000004
		DEPENDENT_DISK_FLAG_REMOTE = &h00000008
		DEPENDENT_DISK_FLAG_SYSTEM_VOLUME = &h00000010
		DEPENDENT_DISK_FLAG_SYSTEM_VOLUME_PARENT = &h00000020
		DEPENDENT_DISK_FLAG_REMOVABLE = &h00000040
		DEPENDENT_DISK_FLAG_NO_DRIVE_LETTER = &h00000080
		DEPENDENT_DISK_FLAG_PARENT = &h00000100
		DEPENDENT_DISK_FLAG_NO_HOST_DISK = &h00000200
		DEPENDENT_DISK_FLAG_PERMANENT_LIFETIME = &h00000400
	end enum

	type DEPENDENT_DISK_FLAG as _DEPENDENT_DISK_FLAG

	type _EXPAND_VIRTUAL_DISK_VERSION as long
	enum
		EXPAND_VIRTUAL_DISK_VERSION_UNSPECIFIED = 0
		EXPAND_VIRTUAL_DISK_VERSION_1 = 1
	end enum

	type EXPAND_VIRTUAL_DISK_VERSION as _EXPAND_VIRTUAL_DISK_VERSION

	type _DETACH_VIRTUAL_DISK_FLAG as long
	enum
		DETACH_VIRTUAL_DISK_FLAG_NONE = &h00000000
	end enum

	type DETACH_VIRTUAL_DISK_FLAG as _DETACH_VIRTUAL_DISK_FLAG

	type _EXPAND_VIRTUAL_DISK_FLAG as long
	enum
		EXPAND_VIRTUAL_DISK_FLAG_NONE = &h00000000
	end enum

	type EXPAND_VIRTUAL_DISK_FLAG as _EXPAND_VIRTUAL_DISK_FLAG

	type _GET_STORAGE_DEPENDENCY_FLAG as long
	enum
		GET_STORAGE_DEPENDENCY_FLAG_NONE = &h00000000
		GET_STORAGE_DEPENDENCY_FLAG_HOST_VOLUMES = &h00000001
		GET_STORAGE_DEPENDENCY_FLAG_DISK_HANDLE = &h00000002
	end enum

	type GET_STORAGE_DEPENDENCY_FLAG as _GET_STORAGE_DEPENDENCY_FLAG

	type _GET_VIRTUAL_DISK_INFO_VERSION as long
	enum
		GET_VIRTUAL_DISK_INFO_UNSPECIFIED = 0
		GET_VIRTUAL_DISK_INFO_SIZE = 1
		GET_VIRTUAL_DISK_INFO_IDENTIFIER = 2
		GET_VIRTUAL_DISK_INFO_PARENT_LOCATION = 3
		GET_VIRTUAL_DISK_INFO_PARENT_IDENTIFIER = 4
		GET_VIRTUAL_DISK_INFO_PARENT_TIMESTAMP = 5
		GET_VIRTUAL_DISK_INFO_VIRTUAL_STORAGE_TYPE = 6
		GET_VIRTUAL_DISK_INFO_PROVIDER_SUBTYPE = 7
	end enum

	type GET_VIRTUAL_DISK_INFO_VERSION as _GET_VIRTUAL_DISK_INFO_VERSION

	type _MERGE_VIRTUAL_DISK_FLAG as long
	enum
		MERGE_VIRTUAL_DISK_FLAG_NONE = &h00000000
	end enum

	type MERGE_VIRTUAL_DISK_FLAG as _MERGE_VIRTUAL_DISK_FLAG

	type _MERGE_VIRTUAL_DISK_VERSION as long
	enum
		MERGE_VIRTUAL_DISK_VERSION_UNSPECIFIED = 0
		MERGE_VIRTUAL_DISK_VERSION_1 = 1
	end enum

	type MERGE_VIRTUAL_DISK_VERSION as _MERGE_VIRTUAL_DISK_VERSION

	type _OPEN_VIRTUAL_DISK_FLAG as long
	enum
		OPEN_VIRTUAL_DISK_FLAG_NONE = &h00000000
		OPEN_VIRTUAL_DISK_FLAG_NO_PARENTS = &h00000001
		OPEN_VIRTUAL_DISK_FLAG_BLANK_FILE = &h00000002
		OPEN_VIRTUAL_DISK_FLAG_BOOT_DRIVE = &h00000004
	end enum

	type OPEN_VIRTUAL_DISK_FLAG as _OPEN_VIRTUAL_DISK_FLAG

	type _OPEN_VIRTUAL_DISK_VERSION as long
	enum
		OPEN_VIRTUAL_DISK_VERSION_UNSPECIFIED = 0
		OPEN_VIRTUAL_DISK_VERSION_1 = 1
	end enum

	type OPEN_VIRTUAL_DISK_VERSION as _OPEN_VIRTUAL_DISK_VERSION

	type _SET_VIRTUAL_DISK_INFO_VERSION as long
	enum
		SET_VIRTUAL_DISK_INFO_UNSPECIFIED = 0
		SET_VIRTUAL_DISK_INFO_PARENT_PATH = 1
		SET_VIRTUAL_DISK_INFO_IDENTIFIER = 2
	end enum

	type SET_VIRTUAL_DISK_INFO_VERSION as _SET_VIRTUAL_DISK_INFO_VERSION

	type _STORAGE_DEPENDENCY_INFO_VERSION as long
	enum
		STORAGE_DEPENDENCY_INFO_VERSION_UNSPECIFIED = 0
		STORAGE_DEPENDENCY_INFO_VERSION_1 = 1
		STORAGE_DEPENDENCY_INFO_VERSION_2 = 2
	end enum

	type STORAGE_DEPENDENCY_INFO_VERSION as _STORAGE_DEPENDENCY_INFO_VERSION

	type _VIRTUAL_DISK_ACCESS_MASK as long
	enum
		VIRTUAL_DISK_ACCESS_ATTACH_RO = &h00010000
		VIRTUAL_DISK_ACCESS_ATTACH_RW = &h00020000
		VIRTUAL_DISK_ACCESS_DETACH = &h00040000
		VIRTUAL_DISK_ACCESS_GET_INFO = &h00080000
		VIRTUAL_DISK_ACCESS_CREATE = &h00100000
		VIRTUAL_DISK_ACCESS_METAOPS = &h00200000
		VIRTUAL_DISK_ACCESS_READ = &h000d0000
		VIRTUAL_DISK_ACCESS_ALL = &h003f0000
		VIRTUAL_DISK_ACCESS_WRITABLE = &h00320000
	end enum

	type VIRTUAL_DISK_ACCESS_MASK as _VIRTUAL_DISK_ACCESS_MASK

	type _VIRTUAL_STORAGE_TYPE
		DeviceId as ULONG
		VendorId as GUID
	end type

	type VIRTUAL_STORAGE_TYPE as _VIRTUAL_STORAGE_TYPE
	type PVIRTUAL_STORAGE_TYPE as _VIRTUAL_STORAGE_TYPE ptr

	type _ATTACH_VIRTUAL_DISK_PARAMETERS_Version1
		Reserved as ULONG
	end type

	type _ATTACH_VIRTUAL_DISK_PARAMETERS
		Version as ATTACH_VIRTUAL_DISK_VERSION

		union
			Version1 as _ATTACH_VIRTUAL_DISK_PARAMETERS_Version1
		end union
	end type

	type ATTACH_VIRTUAL_DISK_PARAMETERS as _ATTACH_VIRTUAL_DISK_PARAMETERS
	type PATTACH_VIRTUAL_DISK_PARAMETERS as _ATTACH_VIRTUAL_DISK_PARAMETERS ptr

	type _COMPACT_VIRTUAL_DISK_PARAMETERS_Version1
		Reserved as ULONG
	end type

	type _COMPACT_VIRTUAL_DISK_PARAMETERS
		Version as COMPACT_VIRTUAL_DISK_VERSION

		union
			Version1 as _COMPACT_VIRTUAL_DISK_PARAMETERS_Version1
		end union
	end type

	type COMPACT_VIRTUAL_DISK_PARAMETERS as _COMPACT_VIRTUAL_DISK_PARAMETERS
	type PCOMPACT_VIRTUAL_DISK_PARAMETERS as _COMPACT_VIRTUAL_DISK_PARAMETERS ptr

	type _CREATE_VIRTUAL_DISK_PARAMETERS_Version1
		UniqueId as GUID
		MaximumSize as ULONGLONG
		BlockSizeInBytes as ULONG
		SectorSizeInBytes as ULONG
		ParentPath as PCWSTR
		SourcePath as PCWSTR
	end type

	type _CREATE_VIRTUAL_DISK_PARAMETERS
		Version as CREATE_VIRTUAL_DISK_VERSION

		union
			Version1 as _CREATE_VIRTUAL_DISK_PARAMETERS_Version1
		end union
	end type

	type CREATE_VIRTUAL_DISK_PARAMETERS as _CREATE_VIRTUAL_DISK_PARAMETERS
	type PCREATE_VIRTUAL_DISK_PARAMETERS as _CREATE_VIRTUAL_DISK_PARAMETERS ptr

	type _EXPAND_VIRTUAL_DISK_PARAMETERS_Version1
		NewSize as ULONGLONG
	end type

	type _EXPAND_VIRTUAL_DISK_PARAMETERS
		Version as EXPAND_VIRTUAL_DISK_VERSION

		union
			Version1 as _EXPAND_VIRTUAL_DISK_PARAMETERS_Version1
		end union
	end type

	type EXPAND_VIRTUAL_DISK_PARAMETERS as _EXPAND_VIRTUAL_DISK_PARAMETERS
	type PEXPAND_VIRTUAL_DISK_PARAMETERS as _EXPAND_VIRTUAL_DISK_PARAMETERS ptr

	type _GET_VIRTUAL_DISK_INFO_Size
		VirtualSize as ULONGLONG
		PhysicalSize as ULONGLONG
		BlockSize as ULONG
		SectorSize as ULONG
	end type

	type _GET_VIRTUAL_DISK_INFO_ParentLocation
		ParentResolved as BOOL
		ParentLocationBuffer as wstring * 1
	end type

	type _GET_VIRTUAL_DISK_INFO
		Version as GET_VIRTUAL_DISK_INFO_VERSION

		union
			Size as _GET_VIRTUAL_DISK_INFO_Size
			Identifier as GUID
			ParentLocation as _GET_VIRTUAL_DISK_INFO_ParentLocation
			ParentIdentifier as GUID
			ParentTimestamp as ULONG
			VirtualStorageType as VIRTUAL_STORAGE_TYPE
			ProviderSubtype as ULONG
		end union
	end type

	type GET_VIRTUAL_DISK_INFO as _GET_VIRTUAL_DISK_INFO
	type PGET_VIRTUAL_DISK_INFO as _GET_VIRTUAL_DISK_INFO ptr

	type _MERGE_VIRTUAL_DISK_PARAMETERS_Version1
		MergeDepth as ULONG
	end type

	type _MERGE_VIRTUAL_DISK_PARAMETERS
		Version as MERGE_VIRTUAL_DISK_VERSION

		union
			Version1 as _MERGE_VIRTUAL_DISK_PARAMETERS_Version1
		end union
	end type

	type MERGE_VIRTUAL_DISK_PARAMETERS as _MERGE_VIRTUAL_DISK_PARAMETERS
	type PMERGE_VIRTUAL_DISK_PARAMETERS as _MERGE_VIRTUAL_DISK_PARAMETERS ptr

	type _OPEN_VIRTUAL_DISK_PARAMETERS_Version1
		RWDepth as ULONG
	end type

	type _OPEN_VIRTUAL_DISK_PARAMETERS
		Version as OPEN_VIRTUAL_DISK_VERSION

		union
			Version1 as _OPEN_VIRTUAL_DISK_PARAMETERS_Version1
		end union
	end type

	type OPEN_VIRTUAL_DISK_PARAMETERS as _OPEN_VIRTUAL_DISK_PARAMETERS
	type POPEN_VIRTUAL_DISK_PARAMETERS as _OPEN_VIRTUAL_DISK_PARAMETERS ptr

	type _SET_VIRTUAL_DISK_INFO
		Version as SET_VIRTUAL_DISK_INFO_VERSION

		union
			ParentFilePath as PCWSTR
			UniqueIdentifier as GUID
		end union
	end type

	type SET_VIRTUAL_DISK_INFO as _SET_VIRTUAL_DISK_INFO
	type PSET_VIRTUAL_DISK_INFO as _SET_VIRTUAL_DISK_INFO ptr

	type _STORAGE_DEPENDENCY_INFO_TYPE_1
		DependencyTypeFlags as DEPENDENT_DISK_FLAG
		ProviderSpecificFlags as ULONG
		VirtualStorageType as VIRTUAL_STORAGE_TYPE
	end type

	type STORAGE_DEPENDENCY_INFO_TYPE_1 as _STORAGE_DEPENDENCY_INFO_TYPE_1
	type PSTORAGE_DEPENDENCY_INFO_TYPE_1 as _STORAGE_DEPENDENCY_INFO_TYPE_1 ptr

	type _STORAGE_DEPENDENCY_INFO_TYPE_2
		DependencyTypeFlags as DEPENDENT_DISK_FLAG
		ProviderSpecificFlags as ULONG
		VirtualStorageType as VIRTUAL_STORAGE_TYPE
		AncestorLevel as ULONG
		DependencyDeviceName as PWSTR
		HostVolumeName as PWSTR
		DependentVolumeName as PWSTR
		DependentVolumeRelativePath as PWSTR
	end type

	type STORAGE_DEPENDENCY_INFO_TYPE_2 as _STORAGE_DEPENDENCY_INFO_TYPE_2
	type PSTORAGE_DEPENDENCY_INFO_TYPE_2 as _STORAGE_DEPENDENCY_INFO_TYPE_2 ptr

	type _STORAGE_DEPENDENCY_INFO
		Version as STORAGE_DEPENDENCY_INFO_VERSION
		NumberEntries as ULONG

		union
			Version1Entries(0 to 0) as STORAGE_DEPENDENCY_INFO_TYPE_1
			Version2Entries(0 to 0) as STORAGE_DEPENDENCY_INFO_TYPE_2
		end union
	end type

	type STORAGE_DEPENDENCY_INFO as _STORAGE_DEPENDENCY_INFO
	type PSTORAGE_DEPENDENCY_INFO as _STORAGE_DEPENDENCY_INFO ptr

	type _VIRTUAL_DISK_PROGRESS
		OperationStatus as DWORD
		CurrentValue as ULONGLONG
		CompletionValue as ULONGLONG
	end type

	type VIRTUAL_DISK_PROGRESS as _VIRTUAL_DISK_PROGRESS
	type PVIRTUAL_DISK_PROGRESS as _VIRTUAL_DISK_PROGRESS ptr
	const VIRTUAL_STORAGE_TYPE_DEVICE_UNKNOWN = 0
	const VIRTUAL_STORAGE_TYPE_DEVICE_ISO = 1
	const VIRTUAL_STORAGE_TYPE_DEVICE_VHD = 2
	extern VIRTUAL_STORAGE_TYPE_VENDOR_MICROSOFT as const GUID

	declare function AttachVirtualDisk(byval VirtualDiskHandle as HANDLE, byval SecurityDescriptor as PSECURITY_DESCRIPTOR, byval Flags as ATTACH_VIRTUAL_DISK_FLAG, byval ProviderSpecificFlags as ULONG, byval Parameters as PATTACH_VIRTUAL_DISK_PARAMETERS, byval Overlapped as LPOVERLAPPED) as DWORD
	declare function CompactVirtualDisk(byval VirtualDiskHandle as HANDLE, byval Flags as COMPACT_VIRTUAL_DISK_FLAG, byval Parameters as PCOMPACT_VIRTUAL_DISK_PARAMETERS, byval Overlapped as LPOVERLAPPED) as DWORD
	declare function CreateVirtualDisk(byval VirtualStorageType as PVIRTUAL_STORAGE_TYPE, byval Path as PCWSTR, byval VirtualDiskAccessMask as VIRTUAL_DISK_ACCESS_MASK, byval SecurityDescriptor as PSECURITY_DESCRIPTOR, byval Flags as CREATE_VIRTUAL_DISK_FLAG, byval ProviderSpecificFlags as ULONG, byval Parameters as PCREATE_VIRTUAL_DISK_PARAMETERS, byval Overlapped as LPOVERLAPPED, byval Handle as PHANDLE) as DWORD
	declare function DetachVirtualDisk(byval VirtualDiskHandle as HANDLE, byval Flags as DETACH_VIRTUAL_DISK_FLAG, byval ProviderSpecificFlags as ULONG) as DWORD
	declare function ExpandVirtualDisk(byval VirtualDiskHandle as HANDLE, byval Flags as EXPAND_VIRTUAL_DISK_FLAG, byval Parameters as PEXPAND_VIRTUAL_DISK_PARAMETERS, byval Overlapped as LPOVERLAPPED) as DWORD
	declare function GetStorageDependencyInformation(byval ObjectHandle as HANDLE, byval Flags as GET_STORAGE_DEPENDENCY_FLAG, byval StorageDependencyInfoSize as ULONG, byval StorageDependencyInfo as PSTORAGE_DEPENDENCY_INFO, byval SizeUsed as PULONG) as DWORD
	declare function GetVirtualDiskInformation(byval VirtualDiskHandle as HANDLE, byval VirtualDiskInfoSize as PULONG, byval VirtualDiskInfo as PGET_VIRTUAL_DISK_INFO, byval SizeUsed as PULONG) as DWORD
	declare function GetVirtualDiskOperationProgress(byval VirtualDiskHandle as HANDLE, byval Overlapped as LPOVERLAPPED, byval Progress as PVIRTUAL_DISK_PROGRESS) as DWORD
	declare function GetVirtualDiskPhysicalPath(byval VirtualDiskHandle as HANDLE, byval DiskPathSizeInBytes as PULONG, byval DiskPath as PWSTR) as DWORD
	declare function MergeVirtualDisk(byval VirtualDiskHandle as HANDLE, byval Flags as MERGE_VIRTUAL_DISK_FLAG, byval Parameters as PMERGE_VIRTUAL_DISK_PARAMETERS, byval Overlapped as LPOVERLAPPED) as DWORD
	declare function OpenVirtualDisk(byval VirtualStorageType as PVIRTUAL_STORAGE_TYPE, byval Path as PCWSTR, byval VirtualDiskAccessMask as VIRTUAL_DISK_ACCESS_MASK, byval Flags as OPEN_VIRTUAL_DISK_FLAG, byval Parameters as POPEN_VIRTUAL_DISK_PARAMETERS, byval Handle as PHANDLE) as DWORD
	declare function SetVirtualDiskInformation(byval VirtualDiskHandle as HANDLE, byval VirtualDiskInfo as PSET_VIRTUAL_DISK_INFO) as DWORD

	end extern
#endif
