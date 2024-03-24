import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("1-CustomComponents")

    //Playing with Row and Column
    /*
    Row{
        spacing: 2

        Rectangle { color: "red"; width: 50; height: 50 }
        Rectangle { color: "green"; width: 20; height: 50 }
        Rectangle { color: "blue"; width: 50; height: 20 }
    }
    */

    //Building a custom button
    /*
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
                console.log("Clicked on the buttton")
            }
        }
    }
    */

    Column{
        spacing: 3
        MButton{
            id: button1Id
            buttonText: "Button1"
            onButtonClicked: {
                console.log("Clicked on button1")
            }
        }
        MButton{
            id: button2Id
            buttonText: "Button2"
            onButtonClicked: {
                console.log("Clicked on button2")
            }
        }
    }

}
