import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextEdit")

    TextEdit {
        width: 240
        text: "<b>Hello</b> <i>World!</i>"
        font.family: "Helvetica"
        font.pointSize: 20
        color: "blue"
        focus: true
        wrapMode: TextEdit.Wrap
        textFormat: TextEdit.RichText

        onEditingFinished: {
            console.log("The current text is: " + text)
        }
    }


}
