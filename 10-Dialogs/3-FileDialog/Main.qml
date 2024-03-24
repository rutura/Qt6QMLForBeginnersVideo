import QtQuick
import QtQuick.Dialogs
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("FileDialog")


    Column{
        spacing: 20
        anchors.centerIn: parent

        Button{
            text: "Choose file"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: function(){
                fileDialogId.open()
            }
        }


        Text{
            id: textId
            text: "User hasn't chosen yet."
            wrapMode: Text.Wrap

        }


        FileDialog{
            id: fileDialogId
            title: "Choose file"
            nameFilters: ["Text files (*.txt)", "HTML files (*.html *.htm)", "Images (*.jpg *.png)"]
            fileMode: FileDialog.OpenFiles // Allow for selecting multiple files
            onAccepted: function(){
                textId.text = currentFile
            }

            onRejected: function(){
                console.log("Dialog rejected")
            }

        }
    }
}
