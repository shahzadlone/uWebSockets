
file(GLOB_RECURSE
    uWebSockets__0__0.0.1_files
    "/home/shahzad/Desktop/Waterloop/wio/git/uWebSockets/src/*.cpp"
    "/home/shahzad/Desktop/Waterloop/wio/git/uWebSockets/src/*.cc"
    "/home/shahzad/Desktop/Waterloop/wio/git/uWebSockets/src/*.c")

add_library(
    uWebSockets__0__0.0.1
    STATIC
    ${uWebSockets__0__0.0.1_files})

set_property(TARGET uWebSockets__0__0.0.1 PROPERTY CXX_STANDARD 11)
set_property(TARGET uWebSockets__0__0.0.1 PROPERTY C_STANDARD 99)

target_compile_definitions(
    uWebSockets__0__0.0.1
    PRIVATE
    )

target_compile_definitions(
    uWebSockets__0__0.0.1
    PUBLIC
    )

target_compile_definitions(
    uWebSockets__0__0.0.1
    PRIVATE
    WIO_PLATFORM_${PLATFORM}
    WIO_FRAMEWORK_${FRAMEWORK}
    WIO_OS_${OS})

target_compile_options(
    uWebSockets__0__0.0.1
    PUBLIC
    -std=c++11 -O3 -I src -shared -fPIC -s -o libuWS.so)

target_include_directories(
    uWebSockets__0__0.0.1
    PRIVATE
    "/home/shahzad/Desktop/Waterloop/wio/git/uWebSockets/src")

target_include_directories(
    uWebSockets__0__0.0.1
    PUBLIC
    "/home/shahzad/Desktop/Waterloop/wio/git/uWebSockets/include")



target_link_libraries(${TARGET_NAME} PRIVATE uWebSockets__0__0.0.1 )