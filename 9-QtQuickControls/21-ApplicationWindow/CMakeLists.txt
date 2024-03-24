cmake_minimum_required(VERSION 3.16)

project(21-ApplicationWindow VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(app21-ApplicationWindow
    main.cpp
)

qt_add_qml_module(app21-ApplicationWindow
    URI 21-ApplicationWindow
    VERSION 1.0
    QML_FILES Main.qml
    RESOURCES
        images/copyIcon.png
        images/cutIcon.png
        images/info.png
        images/newFileIcon.png
        images/openIcon.png
        images/pasteIcon.png
        images/quitIcon.png
        images/redoIcon.png
        images/saveAsIcon.png
        images/saveIcon.png
        images/undoIcon.png
    RESOURCE_PREFIX /
    QML_FILES Page1.qml
    QML_FILES Page2.qml
    QML_FILES Page3.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(app21-ApplicationWindow PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.app21-ApplicationWindow
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(app21-ApplicationWindow
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS app21-ApplicationWindow
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
