import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Attached Signal Handlers")

    Rectangle{
        id: rectId
        width: 200
        height: 200
        color: "green"
    }

    Component.onCompleted: {
        //Load data for use in the UI
        console.log("Starting up...")
    }

    Component.onDestruction: {
        //Saving data from the UI to the data store
        console.log("App is dying...")
    }
}
