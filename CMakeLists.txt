cmake_minimum_required(VERSION 3.24)

project(AsmWorkshop LANGUAGES ASM)

add_executable(main)

target_sources(main
	PRIVATE
		main.S
)

target_compile_options(main
	PRIVATE
		-mthumb -march=armv7-m -mtune=cortex-m3
)

target_link_options(main
	PRIVATE
		-T${CMAKE_CURRENT_LIST_DIR}/linker_script.ld -nostdlib
)

find_program(OBJCOPY_EXE arm-none-eabi-objcopy REQUIRED)
add_custom_target(main_bin
	ALL
	COMMAND ${OBJCOPY_EXE} -I elf32-little -O binary $<TARGET_FILE:main> ${CMAKE_CURRENT_BINARY_DIR}/main.bin
	DEPENDS main
	BYPRODUCTS ${CMAKE_CURRENT_BINARY_DIR}/main.bin
)
