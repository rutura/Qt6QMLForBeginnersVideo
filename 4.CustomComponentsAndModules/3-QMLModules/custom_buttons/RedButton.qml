import QtQuick

Item{
    id: rootId
    property  alias buttonText: buttonTextId.text
    width: containerRectId.width
    height: containerRectId.height
    signal buttonClicked


    Rectangle{
        id: containerRectId
        width: buttonTextId.implicitWidth + 10
        height: buttonTextId.implicitHeight + 10
        color: "red"
        border{
            color: "blue"
            width: 3
        }

        Text{
            id: buttonTextId
            text: "Button"
            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rootId.buttonClicked()//Emit your signal
            }
        }
    }
}
