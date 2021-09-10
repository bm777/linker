import QtQuick 2.0

Rectangle {
    id: root
    Behavior on width {
        NumberAnimation {
            target: root
            property: "radius"
            duration: 500
            from: 40
            to: 50
            easing.type: Easing.InOutQuad
        }
    }

    Rectangle {
        anchors.fill: parent
        color: "#1552F0"
    }

    // content text
    Text {
        id: label
        visible: root.width < 300 ? false : true
        text: "L i n k e r"
        font{family: "Comfortaa"; pointSize: 32; bold: true}
        anchors.centerIn: parent
        color: "#ffffff"
    }


}
