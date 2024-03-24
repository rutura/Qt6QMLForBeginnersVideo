import QtQuick
import "utilities1.js" as Utilities1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("JavaScript Indirect Import")

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
                //console.log("The ages yield: " + Utilities1.combineAges(33,17))
                value = Utilities1.add(33, 17); //Error
            }
        }
    }
}
