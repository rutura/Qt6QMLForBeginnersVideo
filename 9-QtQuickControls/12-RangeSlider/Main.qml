import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("RangeSlider")

    RangeSlider{
        anchors.centerIn: parent
        from: 1
        to: 100
        first.value: 25
        second.value: 75

        first.onValueChanged: function(){
            console.log("First value changed to " + first.value)
        }

        second.onValueChanged: function(){
            console.log("Second value changed to " + second.value)
        }
    }
}
