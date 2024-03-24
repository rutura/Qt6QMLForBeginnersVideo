import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("FontDialog")


    Column {
        spacing: 20
        anchors.centerIn: parent

        Button {
            text: "Change Font"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                fontDialogId.open();
            }
        }

        Text {
            id: textId
            text: "Hello World"
        }

        FontDialog{
            id: fontDialogId
            title: "Choose Font"
            options: FontDialog.MonospacedFonts
            currentFont: Qt.font({
                                 family: "Arial",
                                 pointSize: 24,
                                 weight: Font.Normal
                                 })
            onAccepted: function(){
                textId.font = fontDialogId.selectedFont
            }

            onRejected: function(){
                console.log("Dialog is rejected.")
            }

        }

    }
}
