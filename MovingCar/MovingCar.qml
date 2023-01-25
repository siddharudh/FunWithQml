import QtQuick
import QtQuick.Controls

Window {
    width: 800
    height: 600
    visible: true
    title: qsTr("Moving Car")

    Text {
        id: message
        color: "#aaa"
        text: qsTr("Click and Drag mouse")
        anchors.centerIn: parent
        font.pixelSize: 32
    }

    Image {
        id: car
        source: "assets/car-body.svg"
        scale: 0.3
        x: mouse.mouseX - width / 2.0
        y: mouse.mouseY - height / 2.0

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
                duration: 100
            }
        }

        Behavior on y {
            NumberAnimation {
                duration: 100
            }
        }
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        // hoverEnabled: true
    }

}
