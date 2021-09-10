import QtQuick 2.0

Item {
    id: root

    Rectangle {
        width: parent.width
        height: parent.height
        border.color: "blue"
    }

    Rectangle {id: logomark
        width: parent.width
        height: parent.height * 0.25
    }
    Rectangle {id: speech
        width: parent.width
        height: parent.height * 0.25
        anchors.top: logomark.bottom
    }
    Rectangle {id: hired
        width: parent.width
        height: parent.height * 0.25
        anchors.top: speech.bottom
    }
    Rectangle {id: org
        width: parent.width
        height: parent.height * 0.25
        anchors.top: hired  .bottom
    }

}
