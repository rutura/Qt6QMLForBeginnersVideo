import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals Across QML Components")


    Notifier{
        id: notifierId
        rectColor: "yellowgreen"
        /*
        onNotify: count => {
           console.log("Received: " + count)
        }
        */
        target: recieverId
    }


    Receiver{
        id: recieverId
        rectColor: "dodgerblue"
        anchors.right: parent.right

    }

    //Make the connection from notifer to receiver
    /*
    Component.onCompleted: {
        notifierId.notify.connect(recieverId.receiveInfo)
    }
    */


}
