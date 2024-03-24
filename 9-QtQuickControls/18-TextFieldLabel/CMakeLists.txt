cmake_minimum_required(VERSION 3.16)

project(18-TextFieldLabel VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(app18-TextFieldLabel
    main.cpp
)

qt_add_qml_module(app18-TextFieldLabel
    URI 18-TextFieldLabel
    VERSION 1.0
    QML_FILES Main.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(app18-TextFieldLabel PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.app18-TextFieldLabel
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(app18-TextFieldLabel
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS app18-TextFieldLabel
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
