import QtQuick 2.0

Rectangle {
    id: root
    border.color: "blue"
    property string position: "How to plant rice ? this will show you how to plant on a wrong saison."

    Text {
        text: position
        font{family: "Comfortaa"; pointSize: 17}
        anchors.centerIn: parent
    }
}
