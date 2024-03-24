import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("MessageDialog")


    Column{
        spacing: 20

        Button{
            text: "Press Me"
            onClicked: function(){
                messageDialogId.open()
            }
        }
    }

    MessageDialog{
        id: messageDialogId
        title: "Message"
        text: "Lie down and watch the sky my friend!"
        buttons: MessageDialog.Ok | MessageDialog.Cancel
        onAccepted: function(){
            console.log("Dialog accepted")
        }

        onRejected: function(){
            console.log("Dialog rejected")
        }
    }
}
