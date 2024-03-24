cmake_minimum_required(VERSION 3.16)

project(8-QMLModulesUtilities VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(app8-QMLModulesUtilities
    main.cpp
)

qt_add_qml_module(app8-QMLModulesUtilities
    URI 8-QMLModulesUtilities
    VERSION 1.0
    QML_FILES Main.qml
)

add_subdirectory(components)
add_subdirectory(constants)
add_subdirectory(utilities)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(app8-QMLModulesUtilities PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.app8-QMLModulesUtilities
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(app8-QMLModulesUtilities
    PRIVATE Qt6::Quick MyComponentsLibplugin MyConstantsLibplugin MyUtilitiesLibplugin
)

include(GNUInstallDirs)
install(TARGETS app8-QMLModulesUtilities
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
