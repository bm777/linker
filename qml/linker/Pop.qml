import QtQuick 2.0

Rectangle {
    id: root
//    border.color: "blue"
    radius: width * 0.1
    property string position: "How to plant rice ? this will show you how to plant on a wrong saison."
    property string place: "Singapore"
    Rectangle {
        width: parent.width * 0.12
        height: width
        radius: height/2
        x: 20
        y: x
        border.color: "#1552F0"
        Rectangle {
            anchors.centerIn: parent
            color: "#1552F0"
            width: parent.width * 0.2
            height: width
        }
    }

    Text {id: lab
        text: position
        font{family: "Comfortaa"; pointSize: 17}
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height * 0.2
        width: parent.width * 0.8
        height: parent.height * 0.4
        wrapMode: Text.WordWrap
    }
    Text {
        text: place
        font{family: "Comfortaa"; pointSize: 14}
        anchors.top: lab.bottom
        color: "#1552F0"
        x: lab.x
        width: parent.width * 0.8
        height: 100
        wrapMode: Text.WordWrap
    }


}
