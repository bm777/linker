import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: root
//    border.color: "red"
    property string img: "qrc:img/e1"
    property string img: "getBoarded"

    RectangularGlow {
        anchors.fill: child
        glowRadius: 4
        spread: 0.2
        color: "#20000000"
        cornerRadius: glowRadius
    }

    Rectangle {id: child
        width: parent.width * 0.9
        height: width
        radius: 4
        anchors.centerIn: parent

        Image {
            id: logo
            source: img
            width: parent.width * 0.25
            height: width
            x: parent.width * 0.1
            y: x
        }
        Text {
            text: company
        }
    }
}
