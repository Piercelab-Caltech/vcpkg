#Blocked by ninja: error: build.ninja:348: multiple rules generate lib/redis++.lib [-w dupbuild=err]
vcpkg_fail_port_install(ON_TARGET "Windows")

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sewenew/redis-plus-plus
    REF 59552fa6c49dddffc20f8eb32f8c8f00ff2daed1 # 1.2.0
    SHA512 1ea7bdc089dbb61bddf67c168b1b594ac859125c3cf4507dde2bfbe45e36e383085fc06fba9906d6ff4ab05669d36513dba99fa048d0b220efd8ad17e1a4df54
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
    OPTIONS
        -DREDIS_PLUS_PLUS_BUILD_TEST=OFF
        -DCMAKE_CXX_FLAGS="-DREDIS_PLUS_PLUS_HAS_STRING_VIEW=1"
)

vcpkg_install_cmake()

vcpkg_copy_pdbs()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)

# Handle copyright
file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright )
