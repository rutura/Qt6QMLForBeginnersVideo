import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Anchors: Parents and siblings")

    Rectangle{
        id: containerRectId
        width: 300
        height: width
        border.color: "black"
        anchors.centerIn: parent


        Rectangle{
            id: topLeftRectId
            width: 100
            height: width
            color: "magenta"

            //Anchor that will fail
            anchors.top: siblingRectId.bottom

        }
    }


    Rectangle{
        id: siblingRectId
        width: 200
        height: width
        color: "black"
        anchors.right: containerRectId.left
    }
}
