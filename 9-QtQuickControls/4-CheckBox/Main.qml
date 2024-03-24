import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("CheckBox")

    Column{
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter

        CheckBox{
            text: "Option1"
            checked: true
            onCheckedChanged: function(){
                if(checked){
                    console.log("Option1 is checked")
                }else{
                    console.log("Option1 is unchecked")
                }
            }
        }

        CheckBox{
            text: "Option2"
        }

        CheckBox{
            text: "Option3"
            checked: true
            enabled: false
        }
    }
}
