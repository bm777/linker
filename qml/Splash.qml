import QtQuick 2.0

Rectangle {
    id: root
    color: "#1552F0"



    // content text
    Text {
        id: label
        visible: root.width < 300 ? false : true
        text: "L i n k e r"
        font{family: "Comfortaa"; pointSize: 35; bold: true}
        anchors.centerIn: parent
        color: "#ffffff"
    }


}
