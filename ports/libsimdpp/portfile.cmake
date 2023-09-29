# header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO p12tic/libsimdpp
    REF 16878c9a877aca6022270176738fb5046ed25aa5
    SHA512 5b394f7252768e62a71f5c19bf1e85faed8fe3f07a645abdbc01061f86c166efab2422cb45a7ec374c94784d83f8df501363d233f162f15660d464425eb96304
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
)

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

# Include architecture detection
configure_file("${SOURCE_PATH}/cmake/SimdppMultiarch.cmake" "${SOURCE_PATH}/libsimdpp-config.cmake" COPYONLY)
file(APPEND "${SOURCE_PATH}/libsimdpp-config.cmake" [=[
find_path(LIBSIMDPP_INCLUDE_ROOT "libsimdpp-2.1/simdpp/capabilities.h")
set(LIBSIMDPP_INCLUDE_DIRS "${LIBSIMDPP_INCLUDE_ROOT}/libsimdpp-2.1")
]=])
file(INSTALL "${SOURCE_PATH}/libsimdpp-config.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")

# Handle copyright
file(INSTALL ${SOURCE_PATH}/LICENSE_1_0.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
