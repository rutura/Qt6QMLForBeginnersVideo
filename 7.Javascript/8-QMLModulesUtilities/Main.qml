import QtQuick
import MyComponents
import MyConstants
import MyUtilities

Window {
    width: Constants.windowWidth
    height: Constants.windowHeight
    visible: true
    title: qsTr("QML Modules Project Organization")

    // Components
    Column {
        x: 10
        y: 10
        MButton {
            buttonText: "Button1"
            onButtonClicked: {
                // console.log("Clicked on component button1");
                Utils.buttonAlert(buttonText);
            }
        }
        MButton {
            buttonText: "Button2"
            onButtonClicked: {
                Utils.buttonAlert(buttonText);
            }
        }
    }
}
