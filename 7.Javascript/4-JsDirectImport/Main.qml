import QtQuick
import "utilities1.js" as Utilities1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("JavaScript Direct Import")

    Rectangle {
        width: 300
        height: 100
        color: "yellowgreen"
        anchors.centerIn: parent

        Text {
            text: "Click Me"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                //console.log("Hello there")
                Utilities1.greeting();
            }
        }
    }
}
