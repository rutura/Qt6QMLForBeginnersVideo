import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Dynamic Models")


    ListModel {
        id: listModelId

        ListElement {
            firstName: "John"
            lastName: "Snow"
        }
        ListElement {
            firstName: "Nicholai"
            lastName: "Itchenko"
        }
        ListElement {
            firstName: "Mitch"
            lastName: "Mathson"
        }
        ListElement {
            firstName: "Ken"
            lastName: "Kologorov"
        }
        ListElement {
            firstName: "Vince"
            lastName: "Luvkyj"
        }
    }

    ColumnLayout{
        anchors.fill: parent

        ListView{
            id: listViewId
            model: listModelId
            delegate: delegateId
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Button{
            text: "Add Item"
            Layout.fillWidth: true
            onClicked: function(){
                    listModelId.append({
                                           "firstName": "Daniel",
                                           "lastName": "Gakwaya"
                                       });
            }
        }
        Button{
            text: "Clear"
            Layout.fillWidth: true
            onClicked: function(){
                listModelId.clear()
            }
        }
        Button{
            text: "Delete Item at index 2"
            Layout.fillWidth: true
            onClicked: function(){
                if(2 < listViewId.model.count){ // If we have more than 2 items
                    listModelId.remove(2,1)
                }else{
                    console.log("Index is invalid")
                }
            }
        }
        Button{
            text: "Set item at index 1"
            Layout.fillWidth: true
            onClicked: function(){
                listModelId.set(1,{
                                    "firstName": "Daniel",
                                    "lastName": "Gakwaya"
                                })
            }
        }

    }





    Component {
        id: delegateId
        Rectangle {
            id: rectangleId
            width: listViewId.width
            height: 50
            color: "beige"
            border.color: "yellowgreen"
            radius: 14

            Text {
                id: textId
                anchors.centerIn: parent
                text: firstName + " " + lastName
                font.pointSize: 20
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on: " + firstName + " " + lastName);
                }
            }
        }
    }

}
