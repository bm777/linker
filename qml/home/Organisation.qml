import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: root

    RectangularGlow {
        anchors.fill: child
        glowRadius: 4
        spread: 0.2
        color: "#000000"
        cornerRadius: glowRadius
    }

    Rectangle {id: child
        width: parent.width * 0.9
        height: width
        radius: 4
    }
}
