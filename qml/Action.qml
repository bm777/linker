import QtQuick 2.0

Rectangle {
    id: root
//    color: "red"
//    border.color: "red"
    property bool home_clicked: true
    property bool linker_clicked: false
    property bool setting_clicked: false

    Rectangle {id: frame_home
        height: parent.height * 0.7
        width: height
        x: parent.width * 0.25 - width/2
        anchors.verticalCenter: parent.verticalCenter

        Image {id: home
            source: home_clicked ? "qrc:img/home" : "qrc:img/home-dark"
            anchors.horizontalCenter: parent.horizontalCenter
            height: parent.height * 0.5
            width: height
        }

        Text {id: label_home
            text: "Home"
            font{family: "Comfortaa"; pointSize: 12; bold: true}
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: home.bottom
            anchors.topMargin: 4
            color: "#1552F0"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                label_home.color = "#1552F0"
                label_setting.color = "#5E7B94"
                home_clicked = true
                linker_clicked = false
                setting_clicked = false
            }
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
        MouseArea {
            anchors.fill: parent
            onClicked: {
                label_home.color = "#5E7B94"
                label_setting.color = "#5E7B94"
                home_clicked = false
                linker_clicked = true
                setting_clicked = false
            }
        }
    }

    ///
    Rectangle {id: frame_setting
        height: parent.height * 0.7
        width: height
        x: parent.width * 0.75 - width/2
        anchors.verticalCenter: parent.verticalCenter

        Image {id: setting
            source: setting_clicked ? "qrc:img/set" : "qrc:img/set-dark"
            anchors.horizontalCenter: parent.horizontalCenter
            height: parent.height * 0.5
            width: height
        }

        Text {id: label_setting
            text: "Setting"
            font{family: "Comfortaa"; pointSize: 12; bold: true}
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: setting.bottom
            anchors.topMargin: 4
            color: "#1552F0"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                label_home.color = "#5E7B94"
                label_setting.color = "#1552F0"
                home_clicked = false
                linker_clicked = false
                setting_clicked = true
            }
        }
    }
}
