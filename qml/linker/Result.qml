import QtQuick 2.0

Rectangle {
    id: root
//    radius: height /2
    height: 70
    color: "#401552f0"
//    radius: height/2
    Rectangle {
        anchors.centerIn: parent
        width: parent.width
        height: parent.height * 0.9
        radius: 5

        Rectangle {
            height: parent.height * 0.5
            width: height
            radius: height/2
            border.color: "#1552f0"
            anchors.verticalCenter: parent.verticalCenter
            x: y

            Rectangle {id: point
                height: parent.height * 0.2
                width: height
                color: "#1552f0"
                anchors.centerIn: parent
            }
        }

        // end for open
        Rectangle {
            height: parent.height * 0.6
            width: height * 2
            radius: height/2
            color: "#1552f0"
            x: parent.width - point.x - width
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: "Open"
                font{family: "Comfortaa"; pointSize: 12}
                anchors.centerIn: parent
                color: "#ffffff"
            }
        }
    }
}
