import QtQuick
import QtQuick.Layouts


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextInput: Doing Better!")

    ColumnLayout {
        Layout.topMargin: 10
        spacing: 50

        LabeledTextInput {
            id: firstNameId
            label: "First Name: "
            placeHolderText: "Type in your first name..."
            onEditingFinished: {
                console.log("The first name changed to: " + firstNameId.text);
            }
        }

        LabeledTextInput {
            id: lastNameId
            label: "Last Name: "
            placeHolderText: "Type in your last name..."
            onEditingFinished: {
                console.log("The last name changed to: " + lastNameId.text);
            }
        }
    }
}
