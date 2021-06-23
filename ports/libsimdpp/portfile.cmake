# header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO mfornace/libsimdpp
    REF fe3e92db3ebc19b3c43774e74cc86086e6e18551
    SHA512 e4dff5d24f79e4cda8c195c0debe60eb8408ed85801e871906180fcef76ce728c7a4365df76a5c5171a4e6d15c437010540c17e54e5e5b07c6769b03df1c3e0c
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

