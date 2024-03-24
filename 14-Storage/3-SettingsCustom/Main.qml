/*
    . We don't want for the settings to be saved automatically
    . We actively save them at a time and place we choose
    . In this case, se save them when the window is destroyed
    . Flow :
        . 1. Don't use property aliases in settings objects
        . 2. Read the data from the settings objects
        . 3. Save the data when the window object is about to die.
  */
import QtQuick
import QtQuick.Dialogs
import QtCore

Window {

    //Read position and size info from the settings object
    id: rootId
    x: windowSettingsId.x
    y: windowSettingsId.y
    width: windowSettingsId.width
    height: windowSettingsId.height
    visible: true
    title: qsTr("Custom Settings")


    Rectangle{
        id: rectId
        anchors.fill: parent
        color: colorSettingsId.rectColor // Read color info from the settings object

        MouseArea{
            anchors.fill: parent
            onClicked: function(){
                colorDialogId.open()
            }
            ColorDialog {
                id: colorDialogId
                title: "Please choose a color"
                onAccepted: {
                    console.log("The new color is: " + selectedColor);
                    rectId.color = selectedColor;
                }
                onRejected: {
                    console.log("Canceled");
                }
            }
        }
    }

    //1. Don't use property aliases in the Settings object here
    Settings{
        id: windowSettingsId
        category: "window"
        property int x: 300
        property int y: 300
        property int width: 640
        property int height: 480
    }

    Settings{
        id: colorSettingsId
        category: "colors"
        property color rectColor: "red"
    }

    Component.onDestruction: {
        //Save position and size information
        windowSettingsId.x = rootId.x
        windowSettingsId.y = rootId.y
        windowSettingsId.width = rootId.width
        windowSettingsId.height = rootId.height

        //Save the color
        colorSettingsId.rectColor = rectId.color
    }
}
