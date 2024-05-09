set(Z_BUILD_INFO_FILE_CONTENTS "CRTLinkage: ${VCPKG_CRT_LINKAGE}\n")
string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "LibraryLinkage: ${VCPKG_LIBRARY_LINKAGE}\n")
if (DEFINED VCPKG_POLICY_DLLS_WITHOUT_LIBS)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyDLLsWithoutLIBs: ${VCPKG_POLICY_DLLS_WITHOUT_LIBS}\n")
endif()
if (DEFINED VCPKG_POLICY_DLLS_WITHOUT_EXPORTS)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyDLLsWithoutExports: ${VCPKG_POLICY_DLLS_WITHOUT_EXPORTS}\n")
endif()
if (DEFINED VCPKG_POLICY_DLLS_IN_STATIC_LIBRARY)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyDLLsInStaticLibrary: ${VCPKG_POLICY_DLLS_IN_STATIC_LIBRARY}\n")
endif()
if (DEFINED VCPKG_POLICY_MISMATCHED_NUMBER_OF_BINARIES)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyMismatchedNumberOfBinaries: ${VCPKG_POLICY_MISMATCHED_NUMBER_OF_BINARIES}\n")
endif()
if (DEFINED VCPKG_POLICY_EMPTY_PACKAGE)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyEmptyPackage: ${VCPKG_POLICY_EMPTY_PACKAGE}\n")
endif()
if (DEFINED VCPKG_POLICY_ONLY_RELEASE_CRT)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyOnlyReleaseCRT: ${VCPKG_POLICY_ONLY_RELEASE_CRT}\n")
endif()
if (DEFINED VCPKG_POLICY_ALLOW_OBSOLETE_MSVCRT)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyAllowObsoleteMsvcrt: ${VCPKG_POLICY_ALLOW_OBSOLETE_MSVCRT}\n")
endif()
if (DEFINED VCPKG_POLICY_EMPTY_INCLUDE_FOLDER)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyEmptyIncludeFolder: ${VCPKG_POLICY_EMPTY_INCLUDE_FOLDER}\n")
endif()
if (DEFINED VCPKG_POLICY_ALLOW_RESTRICTED_HEADERS)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyAllowRestrictedHeaders: ${VCPKG_POLICY_ALLOW_RESTRICTED_HEADERS}\n")
endif()
if (DEFINED VCPKG_POLICY_SKIP_DUMPBIN_CHECKS)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicySkipDumpbinChecks: ${VCPKG_POLICY_SKIP_DUMPBIN_CHECKS}\n")
endif()
if (DEFINED VCPKG_POLICY_SKIP_ARCHITECTURE_CHECK)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicySkipArchitectureCheck: ${VCPKG_POLICY_SKIP_ARCHITECTURE_CHECK}\n")
endif()
if (DEFINED VCPKG_POLICY_CMAKE_HELPER_PORT)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyCmakeHelperPort: ${VCPKG_POLICY_CMAKE_HELPER_PORT}\n")
endif()
if (DEFINED VCPKG_POLICY_SKIP_ABSOLUTE_PATHS_CHECK)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicySkipAbsolutePathsCheck: ${VCPKG_POLICY_SKIP_ABSOLUTE_PATHS_CHECK}\n")
endif()
if (DEFINED VCPKG_POLICY_SKIP_ALL_POST_BUILD_CHECKS)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicySkipAllPostBuildChecks: ${VCPKG_POLICY_SKIP_ALL_POST_BUILD_CHECKS}\n")
endif()
if (DEFINED VCPKG_POLICY_SKIP_APPCONTAINER_CHECK)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicySkipAppcontainerCheck: ${VCPKG_POLICY_SKIP_APPCONTAINER_CHECK}\n")
endif()
if (DEFINED VCPKG_POLICY_SKIP_CRT_LINKAGE_CHECK)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicySkipCrtLinkageCheck: ${VCPKG_POLICY_SKIP_CRT_LINKAGE_CHECK}\n")
endif()
if (DEFINED VCPKG_POLICY_SKIP_MISPLACED_CMAKE_FILES_CHECK)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicySkipMisplacedCMakeFilesCheck: ${VCPKG_POLICY_SKIP_MISPLACED_CMAKE_FILES_CHECK}\n")
endif()
if (DEFINED VCPKG_POLICY_SKIP_LIB_CMAKE_MERGE_CHECK)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicySkipLibCMakeMergeCheck: ${VCPKG_POLICY_SKIP_LIB_CMAKE_MERGE_CHECK}\n")
endif()
if (DEFINED VCPKG_POLICY_ALLOW_DLLS_IN_LIB)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyAllowDllsInLib: ${VCPKG_POLICY_ALLOW_DLLS_IN_LIB}\n")
endif()
if (DEFINED VCPKG_POLICY_SKIP_MISPLACED_REGULAR_FILES_CHECK)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicySkipMisplacedRegularFilesCheck: ${VCPKG_POLICY_SKIP_MISPLACED_REGULAR_FILES_CHECK}\n")
endif()
if (DEFINED VCPKG_POLICY_SKIP_COPYRIGHT_CHECK)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicySkipCopyrightCheck: ${VCPKG_POLICY_SKIP_COPYRIGHT_CHECK}\n")
endif()
if (DEFINED VCPKG_POLICY_ALLOW_KERNEL32_FROM_XBOX)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyAllowKernel32FromXBox: ${VCPKG_POLICY_ALLOW_KERNEL32_FROM_XBOX}\n")
endif()
if (DEFINED VCPKG_POLICY_ALLOW_EXES_IN_BIN)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyAllowExesInBin: ${VCPKG_POLICY_ALLOW_EXES_IN_BIN}\n")
endif()
if (DEFINED VCPKG_POLICY_SKIP_USAGE_INSTALL_CHECK)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicySkipUsageInstallCheck: ${VCPKG_POLICY_SKIP_USAGE_INSTALL_CHECK}\n")
endif()
if (DEFINED VCPKG_POLICY_ALLOW_EMPTY_FOLDERS)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyAllowEmptyFolders: ${VCPKG_POLICY_ALLOW_EMPTY_FOLDERS}\n")
endif()
if (DEFINED VCPKG_POLICY_ALLOW_DEBUG_INCLUDE)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyAllowDebugInclude: ${VCPKG_POLICY_ALLOW_DEBUG_INCLUDE}\n")
endif()
if (DEFINED VCPKG_POLICY_ALLOW_DEBUG_SHARE)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicyAllowDebugShare: ${VCPKG_POLICY_ALLOW_DEBUG_SHARE}\n")
endif()
if (DEFINED VCPKG_POLICY_SKIP_PKGCONFIG_CHECK)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "PolicySkipPkgConfigCheck: ${VCPKG_POLICY_SKIP_PKGCONFIG_CHECK}\n")
endif()

if (DEFINED VCPKG_HEAD_VERSION)
    string(APPEND "Z_BUILD_INFO_FILE_CONTENTS" "Version: ${VCPKG_HEAD_VERSION}\n")
endif()

file(WRITE "${CURRENT_PACKAGES_DIR}/BUILD_INFO" "${Z_BUILD_INFO_FILE_CONTENTS}")
