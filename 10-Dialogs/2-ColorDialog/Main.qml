import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ColorDialog")


    Column{
        spacing: 20
        anchors.centerIn: parent

        Button{
            text: "Choose color"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: function(){
                colorDialogId.open()
            }
        }


        Rectangle{
            id: rectangleId
            width: 200
            height: 200
            border.color: "black"
            border.width: 8
            anchors.horizontalCenter: parent.horizontalCenter

        }

        ColorDialog{
            id: colorDialogId
            title: "Choose color"
            onAccepted: function(){
                console.log("Choosen color: " + selectedColor)
                rectangleId.color = selectedColor
            }

            onRejected: function(){
                console.log("User rejected the dialog")
            }
        }
    }
}
