import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ListView and ListModel")

    ListView{
        id: listViewId
        anchors.fill: parent
        model: modelId
        //delegate: delegateId
        delegate:         Rectangle{
            id: rectangleId
            width: parent.width
            height: 50
            color: "beige"
            border.color: "black"
            radius: 5

            Text{
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: country + ": " + capital
            }

            MouseArea{
                anchors.fill: parent
                onClicked: function(){
                    console.log("Clicken on " + country + ": " + capital)
                }
            }
        }
    }


    ListModel{
        id: modelId

        ListElement{
            country: "Rwanda"
            capital: "Kigali"
        }

        ListElement{
            country: "Kenya"
            capital: "Nairobi"
        }

        ListElement{
            country: "Germany"
            capital: "Berlin"
        }

        ListElement{
            country: "India"
            capital: "Mumbai"
        }
    }


    Component{
        id: delegateId
        Rectangle{
            id: rectangleId
            width: parent.width
            height: 50
            color: "beige"
            border.color: "black"
            radius: 5

            Text{
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: country + ": " + capital
            }
        }
    }
}
