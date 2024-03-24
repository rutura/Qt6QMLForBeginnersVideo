import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("FocusScope")


    Column{
        spacing: 20
        anchors.centerIn: parent

        CustomElement{
            color: "yellow"
            focus: true
        }

        CustomElement{
            color: "green"
            //focus: true
        }
    }


}
