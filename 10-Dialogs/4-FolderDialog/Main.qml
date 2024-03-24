import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("FolderDialog")

    Column {
        spacing: 20
        anchors.centerIn: parent

        Button {
            text: "Choose Folder"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: function(){
                folderDialogId.open();
            }
        }

        Text {
            id: textId
            text: "Use hasn't chosen yet"
            wrapMode: Text.Wrap
        }

        FolderDialog {
            id: folderDialogId
            title: "Choose Folder"
            currentFolder: folderDialogId.currentFolder
            onAccepted: {
                textId.text = currentFolder;
            }

            onRejected: {
                textId.text = "Dialog rejected";
            }
        }
    }

}
