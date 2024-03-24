import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ProgressBar")

    Column{
        width: parent.width
        spacing: 20

        Button{
            text: "Start"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: function(){
                //Respond when the button is clicked.
                progressBarId1.value = 75
            }
        }

        Dial{
            id: dialId
            from: 1
            to : 100
            value: 40
            anchors.horizontalCenter: parent.horizontalCenter
            onValueChanged: function(){
                //Transfer the value to some ProgressBar
                progressBarId.value = value
            }
        }

        ProgressBar{
            id: progressBarId
            from: 1
            to: 100
            value: 40
            anchors.horizontalCenter: parent.horizontalCenter
            onValueChanged: function(){
                console.log("Current value: " + visualPosition)
            }
        }


        ProgressBar{
            id: progressBarId1
            //value: 40
            indeterminate: true
            from: 1
            to: 100
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
