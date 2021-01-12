# CMake setup used for SDL2 Builds on Raspberry Pi.

set(lib_base /usr/include)
set(sdl_root ${lib_base}/SDL2)

include_directories("${sdl_root}")

link_libraries(cannonball 
    SDL2
)

# Linking
link_directories(
    "${sdl_root}/lib"
)

add_definitions(-O2 -DSDL2 -march=armv7-a -mfpu=neon-vfpv4 -mfloat-abi=hard)
 
# Location for Cannonball to create save files
# Used to auto-generate setup.hpp with various file paths
set(xml_directory ./)
set(sdl_flags "SDL_WINDOW_RESIZABLE")

# Set SDL2 instead of SDL1
set(SDL2 1)
