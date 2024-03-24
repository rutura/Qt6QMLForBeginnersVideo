import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Header, Footer and Highlight")


    ListView{
        id: listViewId
        anchors.fill: parent
        header: headerId
        footer: Rectangle{
            width: rootId.width
            height: 50
            color: "dodgerblue"
        }

        highlight: Rectangle{
            width: rootId.width
            color: "blue"
            radius: 15
            border.color: "yellowgreen"
            opacity: 0.1
            z: 3
        }

        model: ["January",
                "February",
                "March",
                "April",
                "May",
                "June",
                "July",
                "August",
                "September",
                "October",
                "November",
                "December"]
        delegate: Rectangle{
            id: rectangleId
            width: rootId.width
            height: 50
            color: "beige"
            border.color: "yellowgreen"
            radius: 5


            Text{
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: modelData
            }

            MouseArea{
                anchors.fill: parent
                onClicked: function(){
                    console.log("Clicked on: " + modelData)
                    listViewId.currentIndex = index
                }
            }
        }
    }

    Component{
        id: headerId
        Rectangle{
            id: headerRectId
            width: rootId.width
            height: 50
            color: "yellowgreen"
            border{
                color: "#9EDDF2"
                width: 2
            }

            Text{
                anchors.centerIn: parent
                text: "Months"
                font.pointSize: 20
            }
        }
    }
}
