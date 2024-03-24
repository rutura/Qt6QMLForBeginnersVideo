import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Switch")

    Column{
        width: parent.width
        spacing: 20

        Switch{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "WiFi"
            checked: true
            onCheckedChanged: function(){
                if(checked){
                    console.log("WiFi switch is turned ON")
                }else{
                    console.log("WiFi switch is turned OFF")
                }
            }
        }

        Switch{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Bluetooth"
        }

        Switch{
            anchors.horizontalCenter: parent.horizontalCenter
            enabled: false
            text: "NFC"
        }
    }
}
