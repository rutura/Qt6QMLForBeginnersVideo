import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Flickable and ScrollBar")


    Flickable{
        width: parent.width
        height: parent.height
        contentHeight: mColumnId.implicitHeight

        Column{
            id: mColumnId
            anchors.fill: parent

            Rectangle{
                color: "red"
                width: parent.width
                height: 200
                Text{
                    anchors.centerIn: parent
                    text: "Element1"
                    font.pointSize: 30
                    color: "white"
                }
            }
            Rectangle{
                color: "lightgray"
                width: parent.width
                height: 200
                Text{
                    anchors.centerIn: parent
                    text: "Element2"
                    font.pointSize: 30
                    color: "white"
                }
            }
            Rectangle{
                color: "gray"
                width: parent.width
                height: 200
                Text{
                    anchors.centerIn: parent
                    text: "Element3"
                    font.pointSize: 30
                    color: "white"
                }
            }
            Rectangle{
                color: "yellowgreen"
                width: parent.width
                height: 200
                Text{
                    anchors.centerIn: parent
                    text: "Element4"
                    font.pointSize: 30
                    color: "white"
                }
            }
            Rectangle{
                color: "dodgerblue"
                width: parent.width
                height: 200
                Text{
                    anchors.centerIn: parent
                    text: "Element5"
                    font.pointSize: 30
                    color: "white"
                }
            }
            Rectangle{
                color: "green"
                width: parent.width
                height: 200
                Text{
                    anchors.centerIn: parent
                    text: "Element6"
                    font.pointSize: 30
                    color: "white"
                }
            }
        }

        ScrollBar.vertical: ScrollBar{

        }
    }
}
