import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("ApplicationWindow")


    menuBar: MenuBar{

        Menu{
            title: "File"
            Action{
                id: newActionId
                text: "New"
                icon.source: "images/newFileIcon.png"
                onTriggered: function(){
                    console.log("Clicked on new")
                }
            }

            Action{
                id: openActionId
                text: "Open"
                icon.source: "images/openIcon.png"
            }

            Action{
                id: saveActionId
                text: "Save"
                icon.source: "images/saveIcon.png"
            }

            Action{
                id: saveAsActionId
                text: "Save as"
                icon.source: "images/saveAsIcon.png"
            }

            MenuSeparator{

            }

            Action{
                id: quitActionId
                text: "Quit"
                icon.source: "images/quitIcon.png"
                onTriggered: function(){
                    Qt.quit()
                }
            }
        }

        Menu{
            title: "Edit"
            Action{
                id: cutActionId
                text: "Cut"
                icon.source: "images/cutIcon.png"
            }
            Action {
                text: "Copy"
                icon.source: "images/copyIcon.png"
            }
            Action {
                text: "Paste"
                icon.source: "images/pasteIcon.png"
            }
            MenuSeparator {
            }
            Action {
                text: "Undo"
                icon.source: "images/undoIcon.png"
            }
            Action {
                text: "Redo"
                icon.source: "images/redoIcon.png"
            }
        }

        Menu{
            id: helpMenuId
            title: "Help"
            Action{
                id: aboutActionId
                text: "Help"
                icon.source: "images/info.png"
            }
        }

    }

    header: ToolBar{
        Row{
            anchors.fill: parent
            ToolButton{
                action: newActionId
            }
            ToolButton{
                action: saveActionId
            }
            ToolButton{
                action: saveAsActionId
            }
            ToolButton{
                action: quitActionId
            }
        }
    }


    footer: TabBar{
        id: tabBarId
        width: parent.width

        TabButton{
            text: "Page1"
            onClicked: function(){
                stackId.pop()
                stackId.push("Page1.qml")
                console.log("Numbers of stack items: " + stackId.depth)
            }
        }
        TabButton{
            text: "Page2"
            onClicked: function(){
                stackId.pop()
                stackId.push("Page2.qml")
                console.log("Numbers of stack items: " + stackId.depth)
            }
        }
        TabButton{
            text: "Page3"
            onClicked: function(){
                stackId.pop()
                stackId.push("Page3.qml")
                console.log("Numbers of stack items: " + stackId.depth)
            }
        }
    }


    //Main content
    StackView{
        id: stackId
        anchors.fill: parent
        initialItem: Page1{

        }
    }


}
