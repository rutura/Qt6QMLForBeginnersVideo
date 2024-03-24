import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("DelayButton")

    ColumnLayout{
        width: parent.width
        spacing: 40

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            Layout.fillWidth: true
            text: "Delayed Button. Use it when you want to prevent accidental clicks"
            font.pointSize: 15
        }

        DelayButton{
            property bool activated: false
            text: "DelayButton"
            Layout.fillWidth: true
            delay: 1000

            onPressed: function(){
                if(activated === true){
                    console.log("Button is clicked. Carrying out the task")
                    activated = false
                }
            }

            onActivated: function(){
                console.log("Button actiaved")
                activated = true
            }

            onProgressChanged: function(){
                console.log(progress)
            }
        }
    }


}
