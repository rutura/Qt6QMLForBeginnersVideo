import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("SplitView")

    SplitView{
        anchors.fill: parent
        orientation: Qt.Horizontal

        Rectangle{
            id: rect1Id
            SplitView.preferredWidth: 100
            color: "lightblue"
            Text{
                text: "View1"
                anchors.centerIn: parent
            }
        }
        Rectangle{
            id: rect2Id
            SplitView.preferredWidth: 100
            SplitView.minimumWidth: 50
            color: "lightgray"
            Text{
                text: "View2"
                anchors.centerIn: parent
            }
        }
        Rectangle{
            id: rect3Id
            SplitView.preferredWidth: 100
            color: "lightgreen"
            Text{
                text: "View3"
                anchors.centerIn: parent
            }
        }
    }
}
