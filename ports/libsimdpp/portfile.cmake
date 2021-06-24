# header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO mfornace/libsimdpp
    REF 2d7e8f288f0e685b35526f627b5cd20c73960543
    SHA512 6c8feb401ea13487eb9fcf03bb097848e163f4e6acd3e3953b33f6c6756b3bec876e6779c67af4fe13231b4d2cc1d4553f6f77ccb79227c8cdf6ef2b333fbd7b
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
)

vcpkg_install_cmake()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

# Include architecture detection
configure_file("${SOURCE_PATH}/cmake/SimdppMultiarch.cmake" "${SOURCE_PATH}/libsimdpp-config.cmake" COPYONLY)
file(APPEND "${SOURCE_PATH}/libsimdpp-config.cmake" "\nset(LIBSIMDPP_INCLUDE_DIRS \"${CURRENT_PACKAGES_DIR}/include/libsimdpp-2.1\")\n")
file(INSTALL "${SOURCE_PATH}/libsimdpp-config.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")

# Handle copyright
file(INSTALL ${SOURCE_PATH}/LICENSE_1_0.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)

