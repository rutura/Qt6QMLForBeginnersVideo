import QtQuick
import custom_buttons 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Modules with QMake")

    // Components
    Column {
            x: 10
            y: 10
            YellowButton {
                buttonText: "Button1"
                onButtonClicked: {
                    console.log("Clicked on component button1");
                }
            }
            RedButton {
                buttonText: "Button2"
                onButtonClicked: {
                    console.log("clicked on component button2");
                }
            }
            GreenButton{
                buttonText: "Button3"
            }
            GrayButton{
                buttonText: "Button4"
            }
        }
}
