import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("BusyIndicator")


    ColumnLayout{
        width: parent.width

        BusyIndicator{
            id: busyIndicatorId
            running: true
            visible: true
            Layout.alignment: Qt.AlignHCenter
        }

        ColumnLayout{

            Button{
                id: button1
                text: "Running"
                Layout.fillWidth: true
                onClicked: {
                    busyIndicatorId.running = true
                    busyIndicatorId.visible = true
                }
            }

            Button{
                id: button2
                text: "Not Running"
                Layout.fillWidth: true
                onClicked: {
                    busyIndicatorId.running = false
                    busyIndicatorId.visible = false
                }
            }
        }


    }
}
