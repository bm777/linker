import QtQuick 2.0

Rectangle {
    id: root
//    color: "red"
    property string content: "Potential"

    Rectangle {id: logomark
        width: parent.width
        height: parent.height * 0.4
        border.color: "blue"
        color: "transparent"
        Rectangle {
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
            rotation: -10
            radius: 5
            Text {
                id: label
                text: content
            }
        }
    }
    Rectangle {id: speech
        width: parent.width
        height: parent.height * 0.15
        anchors.top: logomark.bottom
//        border.color: "blue"
        color: "transparent"
    }
    Rectangle {id: hired
        width: parent.width
        height: parent.height * 0.2
        anchors.top: speech.bottom
//        border.color: "blue"
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
