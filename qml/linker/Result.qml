import QtQuick 2.0

Rectangle {
    id: root
//    radius: height /2
    height: 70
    color: "#EDF8FF"
    Rectangle {
        anchors.centerIn: parent
        width: parent.width
        height: parent.height * 0.9
    }
}
