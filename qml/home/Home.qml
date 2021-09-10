import QtQuick 2.0

Rectangle {
    id: root
//    color: "red"
    property string content: "Potential"

    Rectangle {id: logomark
        width: parent.width
        height: parent.height * 0.4
//        border.color: "blue"
        color: "transparent"
        Rectangle {id: mover
            width: parent.width * 0.4
            height: width
            anchors.centerIn: parent
            color: "#F1C40F"
            rotation: 10
            radius: 5
        }
        Rectangle {
            width: parent.width * 0.4
            height: width
            anchors.centerIn: parent
            color: "#1552F0"
            rotation: -mover.rotation
            radius: 5
            Text {
                id: label
                text: content
                font{family: "Comfortaa"; pointSize: 18; bold: true}
                anchors.centerIn: parent
                color: "#ffffff"
            }
        }
    }

    // the second
    Rectangle {id: speech
        width: parent.width
        height: parent.height * 0.15
        anchors.top: logomark.bottom
//        border.color: "blue"
        color: "transparent"

        Text {
            id: welcome
            text: "Welcome to Linker!"
            font{family: "Comfortaa"; pointSize: 14; bold: true}
            anchors.centerIn: parent
            color: "#000000"
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.3
        }
        Text {
            id: desc
            text: "Get hired for your first time today"
            font{family: "Comfortaa"; pointSize: 12; bold: false}
            color: "#646D76"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: welcome.bottom
            anchors.topMargin: 7
        }
    }
    Rectangle {id: hired
        width: parent.width
        height: parent.height * 0.2
        anchors.top: speech.bottom
        border.color: "blue"
        color: "transparent"
    }
    Rectangle {id: org
        width: parent.width
        height: parent.height * 0.25
        anchors.top: hired  .bottom
//        border.color: "blue"
        color: "transparent"
    }

}
