import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signal Parameters")

    Rectangle{
        id: rectId
        width: 150
        height: 150
        color: "red"

        MouseArea{
            anchors.fill: parent

            //Syntax variation #1
            //This is on the way to deprecation
            /*
            onClicked: {
                console.log("Position x: " + mouse.x + " ,y: " + mouse.y)
            }
            */

            //Syntax variation #2: JavasCript Functions
            /*
            onClicked: function(mouse_param){
                 console.log("Position x: " + mouse_param.x + " ,y: " + mouse_param.y)
            }
            */

            //Syntax variation #3 : Arrow functions
            onClicked: mouse_param => {
                  console.log("Position x: " + mouse_param.x + " ,y: " + mouse_param.y)
            }
        }
    }
}
