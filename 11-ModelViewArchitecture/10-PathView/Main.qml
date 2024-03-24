import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("PathView")

    Rectangle{
        width: parent.width
        height: parent.height
        color: "#EBEBEB"

        ListModel {
            id: modelId
            ListElement {
                our_color: "red"
            }
            ListElement {
                our_color: "green"
            }
            ListElement {
                our_color: "blue"
            }
            ListElement {
                our_color: "yellow"
            }
            ListElement {
                our_color: "black"
            }
            ListElement {
                our_color: "dodgerblue"
            }
            ListElement {
                our_color: "purple"
            }
            ListElement {
                our_color: "magenta"
            }
            ListElement {
                our_color: "yellowgreen"
            }
            ListElement {
                our_color: "skyblue"
            }
        }

        Component{
            id: delegateId
            Column{
                scale: PathView.scale // Pick the current scale
                opacity: PathView.isCurrentItem ? 1 : 0.3
                readonly property bool is_current : PathView.isCurrentItem
                Rectangle{
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 64
                    height: width
                    radius: 10
                    color: our_color

                    MouseArea{
                        anchors.fill: parent
                        onClicked: function(){
                            if(is_current){
                                console.log("Clicked on " + model.our_color)
                            }else{
                                console.log("Not the current item")
                            }
                        }
                    }
                }

                Text{
                    id: textId
                    text: model.our_color
                    font.pointSize: 24
                }

            }
        }

        PathView{
            anchors.fill: parent
            //model: 100
            model: modelId
            delegate: delegateId
            focus: true
            path: Path{
                //Starting point
                startX: rootId.width/2
                startY: rootId.height - 50
                PathAttribute{
                    name: "scale"
                    value: 1
                }

                //Towards left : Q1
                PathCubic{
                    x: 50
                    y: rootId.height/2
                    control1X: rootId.width/2 - rootId.width/8
                    control1Y: rootId.height
                    control2X: 0
                    control2Y: rootId.height/2 + rootId.height/8
                }
                PathAttribute{
                    name: "scale"
                    value: 0.5
                }

                //Towards the top: Q2
                PathCubic {
                    x: rootId.width / 2
                    y: 50
                    control1X: 0
                    control1Y: (rootId.height / 2 - rootId.height / 8)
                    control2X: (rootId.width / 2 - rootId.width / 8)
                    control2Y: 0
                }
                PathAttribute{
                    name: "scale"
                    value: 0.3
                }

                //Towards Right: Q3
                PathCubic {
                    x: rootId.width - 50
                    y: rootId.height / 2
                    control1X: rootId.width / 2 + rootId.width / 8
                    control1Y: 0
                    control2X: rootId.width
                    control2Y: rootId.height / 2 - rootId.height / 8
                }
                PathAttribute{
                    name: "scale"
                    value: 0.5
                }

                //Towards bottom: Q4
                PathCubic {
                    x: rootId.width / 2
                    y: rootId.height - 50
                    control1X: rootId.width
                    control1Y: rootId.height / 2 + rootId.height / 8
                    control2X: rootId.width / 2 + rootId.width / 8
                    control2Y: rootId.height
                }
                PathAttribute{
                    name: "scale"
                    value: 1
                }
            }

            Keys.onLeftPressed: function(){
                decrementCurrentIndex()
            }
            Keys.onRightPressed: function(){
                incrementCurrentIndex()
            }
        }


    }
}
