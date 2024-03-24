import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Frame")

    Frame{
        anchors.centerIn: parent

        ColumnLayout{
            Button{
                text: "Button1"
            }
            Button{
                text: "Button2"
            }
            Button{
                text: "Button3"
            }
        }
    }

}
