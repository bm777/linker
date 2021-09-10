import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: root
//    border.color: "red"

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
            source: "qrc:img/e1"
        }
    }
}
