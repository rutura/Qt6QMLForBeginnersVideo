import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Image")

    Item{
        id: containerItemId
        x: 150
        y: 50
        width: 600
        height: 300

        Image{
            x: 10
            y: 50
            width: 100
            height: 100
            //Loading the image from the working directory
            source: "file:LearnQt.png"
        }

        Image{
            x: 150
            y: 50
            width: 100
            height: 100
            // Load the image from a resource file
            source: "qrc:/images/LearnQt.png"
        }

        Image {
            x: 300
            y: 50
            width: 100
            height: 100
            //Specify the full path to the image
            source: "file:///D:/Artwork/LearnQt.png" // platform-dependent(windows)
        }

        Image {
            x: 450
            y: 50
            width: 100
            height: 100
            //Specify the full web path to the image
            source: "https://www.learnqt.guide/assets/blog/image/LearnQt.png"
        }
    }
}
