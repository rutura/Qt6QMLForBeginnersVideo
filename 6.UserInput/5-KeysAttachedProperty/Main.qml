/*
    . Specific signals: onDigit5Pressed
    . General signal: onPressed
    . Forwading: event.accepted
    . Modifiers

  */
import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Keys Attached Property")


    Rectangle{
        id: containedRectId
        anchors.centerIn: parent
        width : 300
        height: 50
        color: "dodgerblue"
        focus: true // This is important if you want to handler Key events.


        //Going through the specific signals
        /*
        Keys.onDigit5Pressed: function(event){
            if(event.modifiers === Qt.ControlModifier){
                console.log("Specific signal: Pressed key 5 with Ctrl")
            }else{
                           console.log("Specific signal: Pressed key 5")
            }
            event.accepted = true // Forward the event to other handlers that may handle it.
        }
        */

        //Going through the general signal
        Keys.onPressed: function(event){
            if((event.key === Qt.Key_5) && event.modifiers & Qt.ControlModifier){
                console.log("General signal: Pressed key 5 with Ctrl")
            }else if((event.key === Qt.Key_5)){
                console.log("General signal: Pressed key 5")
            }
        }

        Keys.onReleased: event => {
            switch (event.key) {
            case Qt.Key_5:
                print("Key_5 released");
                break;
            case Qt.Key_M:
                print(event.text + " Released");
                break;
            }
        }
    }
}
