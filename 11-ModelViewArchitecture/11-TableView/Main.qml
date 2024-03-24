import QtQuick
import QtQuick.Controls
import Qt.labs.qmlmodels

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TableView")

    HorizontalHeaderView{
        id: horizontalHeaderViewId
        anchors.left: tableViewId.left
        anchors.top: parent.top
        syncView: tableViewId
        //If you want your custom header data, you can use the model property
        //model: ["One", "Two", "Three", "Four", "Five"]

    }

    VerticalHeaderView{
        id: verticalHeaderViewId
        anchors.top: tableViewId.top
        anchors.left: parent.left
        syncView: tableViewId
    }


    TableModel {
        id: tableModelId
        TableModelColumn { display: "checked" }
        TableModelColumn { display: "amount" }
        TableModelColumn { display: "fruitType" }
        TableModelColumn { display: "fruitName" }
        TableModelColumn { display: "fruitPrice" }

        // Each row is one type of fruit that can be ordered
        rows: [
            {
                // Each property is one cell/column.
                checked: false,
                amount: 1,
                fruitType: "Apple",
                fruitName: "Granny Smith",
                fruitPrice: 1.50
            },
            {
                checked: true,
                amount: 4,
                fruitType: "Orange",
                fruitName: "Navel",
                fruitPrice: 2.50
            },
            {
                checked: false,
                amount: 1,
                fruitType: "Banana",
                fruitName: "Cavendish",
                fruitPrice: 3.50
            }
        ]
    }

    TableView{
        id: tableViewId
        anchors.left: verticalHeaderViewId.right
        anchors.top: horizontalHeaderViewId.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        columnSpacing: 1
        rowSpacing: 1
        model: tableModelId
        /*
        delegate: TextInput{
            text: model.display
            padding: 12
            //selectByMouse: true // Not needed in Qt versions new than Qt 6.4
            onAccepted: function(){
                model.display = text
            }
            Rectangle{
                anchors.fill: parent
                color: "#efefef"
                z: -1
            }
        }
        */

        //Use DelegateChooser
        delegate: DelegateChooser{
            DelegateChoice{
                column: 0
                delegate: CheckBox{
                    checked: model.display
                    onToggled: function(){
                        model.display = checked
                    }
                }
            }

            DelegateChoice{
                column: 1
                delegate: SpinBox{
                    value: model.display
                    onValueModified: function(){
                        model.display = value
                    }
                }
            }

            DelegateChoice{
                delegate: TextField {
                    text: model.display
                    implicitWidth: 140
                    onAccepted: function(){
                        model.display = text
                    }
                }
            }
        }
    }

    Button{
        text: "Show the data"
        anchors.bottom:  parent.bottom
        onClicked: function(){
            console.log(tableModelId.data(tableModelId.index(0,1),"display"))
        }
    }
}
