import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("The Qt Global Object")

    property var fonts: Qt.fontFamilies()


        Text {
            anchors.centerIn: parent
            color: Qt.rgba(1, 0, 0, 1)
            text: Qt.md5("hello, world")
            font.pointSize: 20
        }

        Rectangle{
            id: clickableRectId
            width: 300
            height: 100
            color: "dodgerblue"
            anchors.bottom: parent.bottom

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    /*
                    //Quit the applications
                    Qt.quit()

                    //Loop through the fonts
                    for(var i = 0; i < fonts.length; i++){
                        console.log("[" + i +"]" + fonts[i])
                    }

                    //Hash a string
                    var mText = "hello, world"
                    var mTextHash = Qt.md5(mText)
                    console.log("The hash of the name is: " + mTextHash)

                    //Open url externally
                    Qt.openUrlExternally("https://www.learnqt.guide/udemy-discounted-9/")

                    //Open local files with the default program
                    Qt.openUrlExternally("file:///D:/artwork/LearnQt.png")
                    */

                    //Capture platform info
                    console.log("The current platform is: " + Qt.platform.os)
                }
            }
        }
}
