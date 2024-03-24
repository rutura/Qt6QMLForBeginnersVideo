
/*

    . Function scope is where you can call the function without getting an error.

    . Things you should know about JS functions in QML
        . A function you define on the root level like min below, is callable anywhere
            in child elements of the root element. For ex, min can be called inside Rectangle

        . Functions defined in nested elements can't be called from parent scopes without
            going through the id. See sayMessage here. You can't call it in Component.onCompleted
            without using the id.

  */

import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Functions and Scope")

    //Function in the global scope
    function min(a, b): real {
        return Math.min(a,b)
    }

    Rectangle{
        id: mRectId
        width: min(500,400)
        height: 100
        anchors.centerIn: parent
        color: "blue"

        //Set up a function inside this rectangle
        function sayMessage(){
            console.log("Hello there.")
        }

        MouseArea{
            anchors.fill: parent
            onClicked: function(){
                mRectId.sayMessage()
            }
        }
    }


    Component.onCompleted: {
        //console.log("The minimum is " + min(1000,200))
        //mRectId.sayMessage() //Go through the Id to reference a nested name
    }
}
