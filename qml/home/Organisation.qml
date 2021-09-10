import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: root
//    border.color: "red"
    property string img: "qrc:img/e1"
    property string company: "GetBoarded"
    property int value: 38

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
            font{family: "Comfortaa"; pointSize: 12; bold: false}
            color: "#000000"
            anchors.left: logo.right
            anchors.leftMargin: 5
            anchors.verticalCenter: logo.verticalCenter
        }

        Text {id: v
            text: "+"+value
            font{family: "Comfortaa"; pointSize: 30; bold: false}
            color: "#3ba55d"
            anchors.top: logo.bottom
            anchors.topMargin: parent.height * 0.15
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            text: "Total hired"
            font{family: "Comfortaa"; pointSize: 9; bold: false}
            color: "#646D76"
            anchors.top: v.bottom
            anchors.topMargin: parent.height * 0.01
            x: v.x
        }
    }
}
