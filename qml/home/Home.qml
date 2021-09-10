import QtQuick 2.0

Rectangle {
    id: root
    color: "red"

    Rectangle {id: logomark
        width: parent.width
        height: parent.height * 0.4
        border.color: "blue"
    }
    Rectangle {id: speech
        width: parent.width
        height: parent.height * 0.25
        anchors.top: logomark.bottom
        border.color: "blue"
    }
    Rectangle {id: hired
        width: parent.width
        height: parent.height * 0.25
        anchors.top: speech.bottom
        border.color: "blue"
    }
    Rectangle {id: org
        width: parent.width
        height: parent.height * 0.25
        anchors.top: hired  .bottom
        border.color: "blue"
    }

}
