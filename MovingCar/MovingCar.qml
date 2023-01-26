import QtQuick
import QtQuick.Controls

Window {
    id: window
    width: 1000
    height: 400
    visible: true
    title: qsTr("Moving Car")

    Row {
        id: forest
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 44
        Repeater {
            model: 10
            Image {
                id: trees
                opacity: 0.2
                source: "assets/trees.svg"
            }
        }
    }

    Rectangle {
        id: road
        height: 40
        color: "#e3e0e0"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
    }


    Text {
        id: message
        color: "#aaa"
        text: qsTr("Click and Drag the Car to move it")
        anchors.top: parent.top
        font.pixelSize: 32
        anchors.topMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Image {
        id: car
        x: -440
        y: 0
        anchors.bottom: parent.bottom
        source: "assets/car-body.svg"
        anchors.bottomMargin: -224
        scale: 0.3

        Image {
            id: front_wheel
            source: "assets/car-wheel.svg"
            x: 990
            y: 324
            rotation: car.x
        }

        Image {
            id: rear_wheel
            source: "assets/car-wheel.svg"
            x: 180
            y: 324
            rotation: car.x
        }

        Behavior on x {
            NumberAnimation {
                duration: 500
            }
        }

        DragHandler {
            yAxis.enabled: false
        }
    }




}
