import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntax Demo")

    property string textToShow: "hello"


    Row{
        anchors.centerIn: parent
        spacing: 20

        Rectangle{
            id: redRectId
            width: 100
            height: 100
            color: "red"
            border.color: "black"
            border.width: 5
            radius: 15
            MouseArea{
                anchors.fill: parent // Telling the MouseArea element to fill the rectangle that contains it.
                onClicked: {
                    console.log("Clicked on red")
                    textToShow = "red"
                }

            }
        }
        Rectangle{
            id: blueRectId
            width: 100
            height: 100
            color: "green"
            border.color: "black"
            border.width: 5
            radius: 15
            MouseArea{
                anchors.fill: parent // Telling the MouseArea element to fill the rectangle that contains it.
                onClicked: {
                    console.log("Clicked on green")
                    textToShow = "green"
                }

            }
        }
        Rectangle{
            id: greenRectId
            width: 100
            height: 100
            color: "blue"
            border.color: "black"
            border.width: 5
            radius: 15
            MouseArea{
                anchors.fill: parent // Telling the MouseArea element to fill the rectangle that contains it.
                onClicked: {
                    console.log("Clicked on blue")
                    textToShow = "blue"
                }

            }
        }

        Rectangle{
            id: circleId
            width: 100
            height: 100
            color: "dodgerblue"
            border.color: "black"
            border.width: 5
            radius: 60

            Text{
                id: textId
                anchors.centerIn: parent
                text: textToShow // Property binding
            }

            MouseArea{
                anchors.fill: parent // Telling the MouseArea element to fill the rectangle that contains it.
                onClicked: {
                    console.log("Clicked on the circle")
                    textId.text = "broken"
                }

            }
        }

    }

}
