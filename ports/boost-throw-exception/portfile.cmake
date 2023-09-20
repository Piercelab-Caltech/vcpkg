# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/throw_exception
    REF boost-1.83.0
    SHA512 5f730520fbc7d3783257071bbf8db2ecbf0170c5d3ae45c603b98d48ca5920c9cbab0dc0d3584670345970f550bb0ab612eaf18d701a44332168fa9aec847a36
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
