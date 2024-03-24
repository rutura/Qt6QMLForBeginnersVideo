import QtQuick
import QtQuick.LocalStorage
import QtQuick.Dialogs
import "Database.js" as JS

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("SQLite")
    property var db;


    Rectangle{
        id: rectId
        anchors.fill: parent
        color: "red"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                colorDialogId.open()
            }
            ColorDialog {
                id: colorDialogId
                title: "Please choose a color"
                onAccepted: {
                    console.log("The new color is: "+ selectedColor)
                    rectId.color = selectedColor
                }
                onRejected: {
                    console.log("Canceled")
                }
            }


        }
    }

    Component.onCompleted: {
        //Initialize the db
        JS.dbInit()

        //Read the data
        JS.readData()

    }

    Component.onDestruction: {
        //Store the data
        JS.storeData()

    }
}
