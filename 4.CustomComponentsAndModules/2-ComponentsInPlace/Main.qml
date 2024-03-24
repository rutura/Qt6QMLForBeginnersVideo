/*
        . Working with custom componets, without external files.
        . We set up the components where they are used( in the Main.qml file).
            . Method1: Use the Component together with Loader
            . Method2: Show inlined compoments as in component MButton: Rectangle

  */
import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Components in Place")

    //Method1
    /*
    Row{
        spacing: 20
        Loader{
            id: firstButton
            sourceComponent: buttonComponent

            onLoaded: {
                var customButton = firstButton.item // Retrieve the loaded item

                //Access the loaded component's properties and signals
                customButton.buttonText = "Button1"
                customButton.buttonClicked.connect(function(){
                    console.log("Clicked on Button1")
                })
            }

        }

        Loader{
            id: secondButton
            sourceComponent: buttonComponent

            onLoaded: {
                var customButton = secondButton.item // Retrieve the loaded item

                //Access the loaded component's properties and signals
                customButton.buttonText = "Button2"
                customButton.buttonClicked.connect(function(){
                    console.log("Clicked on Button2")
                })
            }

        }
    }


    Component{
        id: buttonComponent
        Item{
            id: rootId
            property  alias buttonText: buttonTextId.text
            width: containerRectId.width
            height: containerRectId.height
            signal buttonClicked


            Rectangle{
                id: containerRectId
                width: buttonTextId.implicitWidth + 10
                height: buttonTextId.implicitHeight + 10
                color: "red"
                border{
                    color: "blue"
                    width: 3
                }

                Text{
                    id: buttonTextId
                    text: "Button"
                    anchors.centerIn: parent
                }

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        rootId.buttonClicked()//Emit your signal
                    }
                }
            }
        }
    }
   */

    //Method2
    component MButton: Rectangle{
        id: mButtonId
        property alias buttonText: buttonTextId.text
        signal buttonClicked
        width: buttonTextId.implicitWidth + 20
        height: buttonTextId.implicitHeight + 20
        color: "red"
        border {
            color: "blue"
            width: 3
        }

        Text {
            id: buttonTextId
            text: "Button"
            anchors.centerIn: parent
            onTextChanged: {
                console.log("Text changed to " + buttonTextId.text);
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                //console.log("Clicked on :"+ buttonTextId.text)
                mButtonId.buttonClicked();
            }
        }
    }


    Column {
        spacing: 20
        MButton {
            buttonText: "Button3"
            onButtonClicked: {
                console.log("Clicked on inlined component button3");
            }
        }
        MButton {
            buttonText: "Button4"
            onButtonClicked: {
                console.log("clicked on inlined component button4");
            }
        }
    }
}
