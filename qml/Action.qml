import QtQuick 2.0

Rectangle {
    id: root
//    color: "red"
//    border.color: "red"

    Rectangle {id: frame_home
        height: parent.height * 0.7
        width: height
        x: parent.width * 0.25 - width/2
        anchors.verticalCenter: parent.verticalCenter

        Image {id: home
            source: "qrc:img/home"
            anchors.horizontalCenter: parent.horizontalCenter
            height: parent.height * 0.5
            width: height
        }

        Text {
            text: "Home"
            font{family: "Comfortaa"; pointSize: 12; bold: true}
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: home.bottom
            anchors.topMargin: 4
            color: "#1552F0"
        }
    }

    Rectangle {
        id: frame_linker
        height: parent.height * 0.85
        width: height
        color: "#1552F0"
        radius: height/2
        anchors.centerIn: parent

        Text {
            text: "L"
            font{family: "Comfortaa"; pointSize: 18; bold: true}
            anchors.centerIn: parent
            color: "#ffffff"
        }
    }

    ///
    Rectangle {id: frame_setting
        height: parent.height * 0.7
        width: height
        x: parent.width * 0.75 - width/2
        anchors.verticalCenter: parent.verticalCenter

        Image {id: setting
            source: "qrc:img/set"
            anchors.horizontalCenter: parent.horizontalCenter
            height: parent.height * 0.5
            width: height
        }

        Text {
            text: "Setting"
            font{family: "Comfortaa"; pointSize: 15; bold: true}
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: setting.bottom
            anchors.topMargin: 4
            color: "#1552F0"
        }
    }
}
