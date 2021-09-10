import QtQuick 2.0

Item {
    id: root
    anchors.fill: parent

    Rectangle {
        anchors.fill: parent
        color: "#1552F0"
    }

    // content text
    Text {
        id: label
        text: "Linker"
        font{family: "Comfortaa"; pointSize: 24; bold: true}
        anchors.centerIn: parent
        color: "#ffffff"
    }
}
