import QtQuick 2.0

Rectangle {
    id: root


    Rectangle {id: logomark
        width: parent.width
        height: parent.height * 0.25
        color: "red"
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
