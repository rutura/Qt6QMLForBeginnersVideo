import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Elements")

    Item{
        id: containerItemId
        x: 150
        y: 50
        width: 400
        height: 200

        Rectangle{
            anchors.fill: parent // The rectangle should fill its parent: the item element
            color: "dodgerblue"

            //Grouped property syntax variation #1
            /*
            border.color: "black"
            border.width: 5
            */

            //Grouped property syntax variation #2
            /*
            border{
                color: "black"
                width: 5
            }
            */


            //

            //Grouped property syntax variation #3
            border.color: "black"; border.width: 5

        }

        Rectangle {
            x: 0
            y: 10
            width: 50
            height: 50
            color: "red"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                }
            }
        }

        Rectangle {
            x: 60
            y: 10
            width: 50
            height: 50
            color: "green"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                }
            }
        }

        Rectangle {
            x: 120
            y: 10
            width: 50
            height: 50
            color: "blue"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                }
            }
        }

        Text{
            id: mTextId
            x: 100
            y: 100
            text: "Hello World!"
            color: "black"

            //Syntax variation #1
            font.family: "Helvetica"
            font.pointSize: 13
            font.bold: true


            //Syntax variation #2
            /*
            font {
                family: "Helvetica"
                pointSize: 13
                bold: true
            }
            */

            //Syntax variation #3
            //font.family: "Helvetica"; font.pointSize: 13; font.bold: true


        }
    }
}
