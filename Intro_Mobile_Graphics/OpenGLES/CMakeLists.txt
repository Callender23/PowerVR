cmake_minimum_required(VERSION 3.3)
project(OpenGLESPracticals)

set(PRACTICALS 
	01_IntroducingPVRShell
		01_IntroducingPVRShell_EX1_COMPLETED
		01_IntroducingPVRShell_EX2_COMPLETED
		01_IntroducingPVRShell_EX3_COMPLETED
	02_IntroducingPVRUtils
		02_IntroducingPVRUtils_EX1_COMPLETED
		02_IntroducingPVRUtils_EX2_COMPLETED
	03_2D_Texturing
		03_2D_Texturing_EX1_COMPLETED
		03_2D_Texturing_EX2_COMPLETED
		03_2D_Texturing_EX3-4_COMPLETED
		03_2D_Texturing_EX5_COMPLETED
	04_SimpleLighting
		04_SimpleLighting_EX1_COMPLETED
		04_SimpleLighting_EX2_COMPLETED
		04_SimpleLighting_EX4_COMPLETED
		04_SimpleLighting_EX5_COMPLETED
		04_SimpleLighting_EX6_COMPLETED
	05_PointLighting
		05_PointLighting_EX1_COMPLETED
		05_PointLighting_EX2_COMPLETED
		05_PointLighting_EX3_COMPLETED
	06_Reflection_Refraction
		06_Reflection_Refraction_EX1_COMPLETED
		06_Reflection_Refraction_EX2_COMPLETED
		06_Reflection_Refraction_EX3_COMPLETED
		06_Reflection_Refraction_EX4_COMPLETED
)

foreach(PRACTICAL ${PRACTICALS})
	message ("==>CMake generation for OpenGLES/${PRACTICAL}...")
	add_subdirectory("${CMAKE_CURRENT_LIST_DIR}/${PRACTICAL}")
endforeach()