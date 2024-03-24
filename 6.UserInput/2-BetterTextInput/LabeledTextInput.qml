import QtQuick

Item {
    readonly property alias text: textInputId.text
    property alias label: labelId.text
    property alias placeHolderText: placeHolderId.text

    //Set up the editingFinished signal
    signal editingFinished


    Row{
        spacing: 10

        Rectangle{
            id: labelRectId
            width: labelId.implicitWidth  + 20
            height: labelId.implicitHeight + 20
            color: "dodgerblue"

            Text{
                id: labelId
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: textInputRectId
            color: "dodgerblue"

            //Set up width and height
            width: placeHolderId.implicitWidth + textInputId.implicitWidth + 20
            height: placeHolderId.implicitHeight + 20

            //Text element representing the placeholder text
            Text{
                id: placeHolderId
                /*
                anchors.centerIn: parent
                anchors.fill: parent
                */
                anchors{
                    centerIn: parent
                    fill: parent
                }

                //The text element will only be visilble if the text input element doesn't contain any text
                // or if we're not typing text in the textinput element
                visible: !textInputId.text && !textInputId.inputMethodComposing
                verticalAlignment: TextInput.AlignVCenter
            }

            TextInput{
                id: textInputId
                anchors{
                    centerIn: parent
                    fill: parent
                }
                focus: true
                verticalAlignment: TextInput.AlignVCenter
            }

        }


        Component.onCompleted: {
            //Connecting a signal to a signal
            textInputId.editingFinished.connect(editingFinished)
        }

    }

}
