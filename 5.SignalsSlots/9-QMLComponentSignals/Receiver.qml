import QtQuick

Item {

    property alias rectColor: receiverRectId.color
    width: receiverRectId.width
    height: receiverRectId.height

    function receiveInfo(count){
        displayTextId.text = count
    }


    Rectangle{
        id: receiverRectId
        width: 200
        height: 200
        color: "red"

        Text{
            id: displayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: "0"
        }
    }
}
