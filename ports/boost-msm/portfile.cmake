# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/msm
    REF boost-1.81.0
    SHA512 4e52cdd009af2df9e012051cdee78d69610b6dc3edf9b3e08d90de742242e7508e14ccf1c9f68f9001c453bb1fc3644b0c5a6f8818a25158048649e4ae17287f
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
