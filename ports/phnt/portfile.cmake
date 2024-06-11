vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO winsiderss/phnt
    REF 4889215a26ece2105548103adba45238fc213fa4
    SHA512 6f6a8d85f321da636a6849e270dc8f23a5706154fa8c63b351ece2198cce55e5ce79d5b05289ede61ee772205f523520c7090961dbba161addd9e78578cb7816
    HEAD_REF master
)

file(GLOB HEADER_FILES ${SOURCE_PATH}/*.h)
file(INSTALL ${HEADER_FILES} DESTINATION ${CURRENT_PACKAGES_DIR}/include)

configure_file(${SOURCE_PATH}/LICENSE ${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright COPYONLY)