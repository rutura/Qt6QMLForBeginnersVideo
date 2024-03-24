import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Inline Models")

    ListView{
        id: listViewId
        anchors.fill: parent
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
                }
            }
        }
    }
}
