import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextInput")

    Row{
        x: 10
        y: 10
        spacing: 20

        Rectangle{
            id: firstNameRectId
            width: firstNameLabelId.implicitWidth + 20
            height: firstNameLabelId.implicitHeight + 20
            color: "dodgerblue"

            Text{
                id: firstNameLabelId
                anchors.centerIn: parent
                text: "First name: "
            }
        }

        Rectangle{
            id: firstNameTextRectId
            width: firstNameTextId.implicitWidth + 20
            height: firstNameTextId.implicitHeight + 20
            color: "dodgerblue"

            TextInput{
                id: firstNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type in your first name"
                onEditingFinished: {
                    console.log("The first name changed to: " + text)
                }
            }
        }
    }

    Row{
        x: 10
        y: 60
        spacing: 20

        Rectangle{
            id: lastNameRectId
            width: lastNameLabelId.implicitWidth + 20
            height: lastNameLabelId.implicitHeight + 20
            color: "dodgerblue"

            Text{
                id: lastNameLabelId
                anchors.centerIn: parent
                text: "Last name: "
            }
        }

        Rectangle{
            id: lastNameTextRectId
            width: lastNameTextId.implicitWidth + 20
            height: lastNameTextId.implicitHeight + 20
            color: "dodgerblue"

            TextInput{
                id: lastNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type in your last name"
                onEditingFinished: {
                    console.log("The last name changed to: " + text)
                }
            }
        }
    }
}
