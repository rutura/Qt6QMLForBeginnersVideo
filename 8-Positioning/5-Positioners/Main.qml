import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioners")

    Grid{
        columns: 2
        // spacing: 10
        rowSpacing: 10
        columnSpacing: 10

        horizontalItemAlignment: Grid.AlignLeft
        verticalItemAlignment:  Grid.AlignVCenter


        LayoutMirroring.enabled: true
        LayoutMirroring.childrenInherit: true

        Rectangle {
            id: topLeftRectId
            width: 60
            height: width
            color: "magenta"
            Text {
                text: "1"
                anchors.centerIn: parent
                font.pointSize: 20
            }
        }

        Rectangle {
            id: topRightId
            width: 100
            height: width
            color: "yellowgreen"
            Text {
                text: "2"
                anchors.centerIn: parent
                font.pointSize: 20
            }
        }

        Rectangle {
            id: bottomLeftId
            width: 100
            height: width
            color: "dodgerblue"
            Text {
                text: "3"
                anchors.centerIn: parent
                font.pointSize: 20
            }
        }

        Rectangle {
            id: bottomRightId
            width: 100
            height: width
            color: "beige"
            Text {
                text: "4"
                anchors.centerIn: parent
                font.pointSize: 20
            }
        }
    }

}
