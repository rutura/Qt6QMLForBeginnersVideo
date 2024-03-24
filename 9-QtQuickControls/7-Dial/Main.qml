import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Dial")

    Column{
        width: parent.width
        spacing: 40

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "A Knob used to let the user choose a value from a range"
            font.pointSize: 15
        }

        Dial{
            anchors.horizontalCenter: parent.horizontalCenter
            from: 1
            to: 100
            value: 50
            //wrap: true // Read the docs to figure out if you really want this for your project!

            onValueChanged: function(){
                console.log("Current value: " + Math.ceil(value))
            }
        }
    }
}
