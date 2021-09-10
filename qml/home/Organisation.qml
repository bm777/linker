import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: root

    RectangularGlow {
        anchors.fill: rect
        glowRadius: 10
        spread: 0.2
        color: "white"
        cornerRadius: rect.radius + glowRadius
    }

    Rectangle {
        width: parent.width * 0.9
        height: width
        radius: 4
    }
}
