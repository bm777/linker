import QtQuick 2.0

Rectangle {
    id: root
//    radius: height /2
    height: 70
    color: "#EDF8FF"
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
            Rectangle {
                height: parent.height * 0.5
                width: height * 1.5
                color: "#1552f0"
                x: parent.width - point.x - width
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
}
