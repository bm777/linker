import QtQuick 2.0

Rectangle {
    id: root
//    border.color: "blue"
    radius: width * 0.1
    property string p: "How to plant rice ? this will show you how to plant on a wrong saison."
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
        text: p
        font{family: "Comfortaa"; pointSize: 17}
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height * 0.2
        width: parent.width * 0.8
        height: parent.height * 0.4
        wrapMode: Text.WordWrap
    }
    Text {id: lab_place
        text: place
        font{family: "Comfortaa"; pointSize: 14}
        anchors.top: lab.bottom
        color: "#1552F0"
        x: lab.x
        wrapMode: Text.WordWrap
    }

    Rectangle {
        width: parent.width * 0.7
        height: parent.height * 0.15
        color: "#1552F0"
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height - height * 1.5
        radius: height * 0.2
        Text {
            text: "Go Forward"
            font{family: "Comfortaa"; pointSize: 15}
            anchors.centerIn: parent
            color: "#ffffff"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: root.visible = false
        }
    }

}
