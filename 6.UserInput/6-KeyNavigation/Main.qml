import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Key Navigation")

    /*
    Row{
        anchors.centerIn: parent

        Rectangle{
            id: firstRectId
            width: 200
            height: width
            border.color: "black"
            color: "red"
            focus: true

            onFocusChanged: {
                color = focus? "red" : "gray"
            }

            Keys.onDigit5Pressed: {
                console.log("I am Rect1")
            }
            KeyNavigation.right: secondRectId
        }

        Rectangle{
            id: secondRectId
            width: 200
            height: width
            border.color: "black"
            color: "gray"
            focus: true

            onFocusChanged: {
                color = focus? "red" : "gray"
            }

            Keys.onDigit5Pressed: {
                console.log("I am Rect2")
            }
            KeyNavigation.left: firstRectId
        }
    }
    */

    Grid {
        width: 100; height: 100
        columns: 2

        Rectangle {
            id: topLeft
            width: 50; height: 50
            color: focus ? "red" : "lightgray"
            focus: true

            KeyNavigation.right: topRight
            KeyNavigation.down: bottomLeft
        }

        Rectangle {
            id: topRight
            width: 50; height: 50
            color: focus ? "red" : "lightgray"

            KeyNavigation.left: topLeft
            KeyNavigation.down: bottomRight
        }

        Rectangle {
            id: bottomLeft
            width: 50; height: 50
            color: focus ? "red" : "lightgray"

            KeyNavigation.right: bottomRight
            KeyNavigation.up: topLeft
        }

        Rectangle {
            id: bottomRight
            width: 50; height: 50
            color: focus ? "red" : "lightgray"

            KeyNavigation.left: bottomLeft
            KeyNavigation.up: topRight
        }
    }


}
