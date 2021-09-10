import QtQuick 2.0

Item {
    id: root

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
    }
    Rectangle {id: org
        width: parent.width
        height: parent.height * 0.25
    }

}
