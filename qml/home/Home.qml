import QtQuick 2.0

Rectangle {
    id: root
//    color: "red"

    Rectangle {id: logomark
        width: parent.width
        height: parent.height * 0.4
        border.color: "blue"
        color: "transparent"
        Image {
            id: farmer
            source: "qrc:img/farmer"
        }
        Image {
            id: share
            source: "qrc:img/share"
            x: parent.width/2 - width/2
            y: parent.height/2 - height/2
        }
        Image {
            id: boss
            source: "qrc:img/boss"
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
