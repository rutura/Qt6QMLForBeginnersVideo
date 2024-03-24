set(MODULE_NAME MyUtilities)
set(LIB_NAME ${MODULE_NAME}Lib) 

qt_add_library(${LIB_NAME} STATIC)

set_target_properties(${LIB_NAME} PROPERTIES AUTOMOC ON)
target_link_libraries(${LIB_NAME} PRIVATE Qt6::Quick)

list(APPEND MODULE_JS_FILES Utils.js)

qt_add_qml_module(${LIB_NAME}
    URI ${MODULE_NAME}
    VERSION 1.0
    RESOURCE_PREFIX /
    QML_FILES
        ${MODULE_JS_FILES}
)

