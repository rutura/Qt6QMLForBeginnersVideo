
/*
        . Exploring property change signals

        . For any property you have defined in your QML components,
            QML will set up a signal named <propertyName>Changed, and you can handle it
            through the on<PropertyName>Changed handler,
            with the property name starting with Capital

         . These signals are generated for properties, not signals

              . For example, for MouseArea, we don'thave an
                onClickedChanged signal, because clicked is a signal
                not a property.
              . But enabled is a property, so it has a changed signal

  */
import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Change Handlers")

    Rectangle{
        id: rectId
        width: 300
        height: width + 50 // Property binding
        color: "dodgerblue"

        //Custom property
        property string descritption: "A rectangle to play with"

        //Property change handlers
        onWidthChanged: {
            console.log("Width changed to :" + rectId.width)
        }

        onHeightChanged: {
            console.log("Height changed to :" + rectId.height)
        }

        onColorChanged: {}

        onVisibleChanged: {}

        onDescritptionChanged: {
            console.log("Description changed to: " + rectId.descritption)
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rectId.width += 20
                rectId.descritption = "New data"
            }
        }
    }
}
