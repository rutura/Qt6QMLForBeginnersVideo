import QtQuick
import QtQuick.Dialogs
import QtCore

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Settings Automatic")


    Rectangle{
        id: rectId
        anchors.fill: parent
        color: "red"


        MouseArea{
            anchors.fill: parent
            onClicked: function(){
                colorDialogId.open()// Open the color dialog
            }

            ColorDialog{
                id: colorDialogId
                title: "Choose color"
                onAccepted: function(){
                    rectId.color = selectedColor
                }
                onRejected: function(){
                    console.log("Dialog rejected")
                }
            }



        }
    }

    Settings{
        category: "window"
        property alias x: rootId.x
        property alias y: rootId.y
        property alias width: rootId.width
        property alias height: rootId.height
    }

    Settings{
        category: "colors"
        property alias rectColor: rectId.color
    }
}
