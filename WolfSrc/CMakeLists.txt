PROJECT(WOLF3D)

CMAKE_MINIMUM_REQUIRED(VERSION 2.6.0)

SET(CMAKE_COLOR_MAKEFILE ON)
SET(CMAKE_VERBOSE_MAKEFILE OFF)

# Check header files
INCLUDE (CheckIncludeFiles)

CHECK_INCLUDE_FILES (stddef.h HAVE_STDDEF_H)
CHECK_INCLUDE_FILES ("sys/types.h" HAVE_SYS_TYPES_H)
CHECK_INCLUDE_FILES ("sys/time.h" HAVE_SYS_TIME_H)

CHECK_INCLUDE_FILES (alloc.h HAVE_ALLOC_H)
CHECK_INCLUDE_FILES (ctype.h HAVE_CTYPE_H)
CHECK_INCLUDE_FILES (dos.h HAVE_DOS_H)
CHECK_INCLUDE_FILES (errno.h HAVE_ERRNO_H)
CHECK_INCLUDE_FILES (fcntl.h HAVE_FCNTL_H)
CHECK_INCLUDE_FILES (io.h HAVE_IO_H)
CHECK_INCLUDE_FILES (mem.h HAVE_MEM_H)
CHECK_INCLUDE_FILES (process.h HAVE_PROCESS_H)
CHECK_INCLUDE_FILES (stdio.h HAVE_STDIO_H)
CHECK_INCLUDE_FILES (stdlib.h HAVE_STDLIB_H)
CHECK_INCLUDE_FILES (string.h HAVE_STRING_H)
CHECK_INCLUDE_FILES ("sys/stat.h" HAVE_SYS_STAT_H)
CHECK_INCLUDE_FILES (values.h HAVE_VALUES_H)
CHECK_INCLUDE_FILES (dir.h HAVE_DIR_H)

SET(TARGET_SRC
    contigsc.c
    detect.c
    
    id_ca.c
    id_in.c
    id_mm.c
    id_pm.c
    id_sd.c
    id_us_1.c
    id_vh.c
    id_vl.c
    
    munge.c
    oldscale.c
    
    wl_act1.c
    wl_act2.c
    wl_agent.c
    wl_debug.c
    wl_draw.c
    wl_game.c
    wl_inter.c
    wl_main.c
    wl_menu.c
    wl_play.c
    wl_scale.c
    wl_state.c
    wl_text.c
    
    wolfhack.c
    
    audiosdm.h
    audiosod.h
    audiowl1.h
    audiowl6.h
    budiosod.h
    budiowl6.h
    f_spear.h
    foreign.h
    gfxe_sod.h
    gfxe_wl1.h
    gfxe_wl6.h
    gfxv_sdm.h
    gfxv_sod.h
    gfxv_wl1.h
    gfxv_wl6.h
    id_ca.h
    id_head.h
    id_heads.h
    id_in.h
    id_mm.h
    id_pm.h
    id_sd.h
    id_us.h
    id_vh.h
    id_vl.h
    mapssdm.h
    mapssod.h
    mapswl1.h
    mapswl6.h
    mapswlf.h
    piclist.h
    sdmver.h
    sharemsg.h
    sodver.h
    spanish.h
    spanver.h
    version.h
    wl_def.h
    wl_menu.h
    wlfj1ver.h
    wolf1ver.h
    wolfgtv.h
    wolfjver.h
    wolfver.h

    c0.asm
    h_ldiv.asm
    id_sd_a.asm
    id_us_a.asm
    id_vh_a.asm
    id_vl_a.asm
    jabhack.asm
    whack_a.asm
    wl_asm.asm
    wl_dr_a.asm
)

ADD_EXECUTABLE(wolf3d ${TARGET_SRC}) 

SET(CMAKE_C_FLAGS "-g -Wall -Wno-unknown-pragmas -DMAXSCALERMEMORY=1048576 -fasm-blocks")
#Will work on linux
#SET(CMAKE_C_FLAGS "-g -Wall -Wno-unknown-pragmas -DMAXSCALERMEMORY=1048576 -masm=intel -fasm-blocks")