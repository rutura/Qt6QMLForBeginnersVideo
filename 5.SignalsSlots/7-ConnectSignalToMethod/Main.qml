import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Connection Signal to Method")

    Rectangle{
        id: rectId
        width : 300
        height: 300
        color: "dodgerblue"

        //Set up the signal
        signal greet(string message)

        //Set up the custom handler function
        function respond_your_way(message){
            console.log("Custom response: " + message)
        }
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            rectId.greet("The water is nice")
        }
    }


    Component.onCompleted: {
        //Connecting the signal the handler(slot)
        rectId.greet.connect(rectId.respond_your_way)
    }
}
