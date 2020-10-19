vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Gecode/gecode
    REF 2925392ac7a0c8a7b33aaee51721d84725605919
    SHA512 15b01bdb4c190557c96a257dbdb40b368310dae5665c568028570d52e7271daa79e9f27d981c5370b314784326af626a8c6ed1f53ce2c7db7b9e8d644d55fe97
    HEAD_REF master
)

# string(COMPARE EQUAL "${VCPKG_LIBRARY_LINKAGE}" "static" JSONCPP_STATIC)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
    # OPTIONS
)

vcpkg_install_cmake()

# vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/gecode)
if(VCPKG_LIBRARY_LINKAGE STREQUAL "static")
    file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/bin" "${CURRENT_PACKAGES_DIR}/debug/bin")
endif()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)

vcpkg_copy_pdbs()

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
