import QtQuick 2.0
import QtQuick.Controls 2.10

Rectangle {
    id: root
//    color: "red"
    property string content: "Potential"

    Rectangle {id: logomark
        width: parent.width
        height: parent.height * 0.4
//        border.color: "blue"
        color: "transparent"
        Rectangle {id: mover
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
            rotation: -mover.rotation
            radius: 5
            Text {
                id: label
                text: content
                font{family: "Comfortaa"; pointSize: 18; bold: true}
                anchors.centerIn: parent
                color: "#ffffff"
            }
        }
    }

    // the second
    Rectangle {id: speech
        width: parent.width
        height: parent.height * 0.15
        anchors.top: logomark.bottom
//        border.color: "blue"
        color: "transparent"

        Text {
            id: welcome
            text: "Welcome to Linker!"
            font{family: "Comfortaa"; pointSize: 14; bold: true}
            anchors.centerIn: parent
            color: "#000000"
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.3
        }
        Text {
            id: desc
            text: "Get hired for your first time today"
            font{family: "Comfortaa"; pointSize: 12; bold: false}
            color: "#646D76"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: welcome.bottom
            anchors.topMargin: 7
        }
    }
    Rectangle {id: hired
        width: parent.width
        height: parent.height * 0.15
        anchors.top: speech.bottom
//        border.color: "blue"
        color: "transparent"
        Rectangle {
            anchors.centerIn: parent
            width: parent.width * 0.8
            height: 55
            color: "#1552F0"
            radius: 7
            Text {
                text: "Get Hired"
                font{family: "Comfortaa"; pointSize: 14; bold: true}
                color: "#ffffff"
                anchors.centerIn: parent
            }
        }
    }
    Rectangle {id: org
        width: parent.width
        height: parent.height * 0.3
        anchors.top: hired  .bottom
//        border.color: "blue"
        color: "transparent"
        Text {id: label_org
            text: "Top organisations"
            font{family: "Comfortaa"; pointSize: 14; bold: false}
            color: "#000000"
            x: root.width * 0.1
        }
        Rectangle {
            id: frame
            width: parent.width * 0.9
            height: parent.height * 0.9
            x: root.width * 0.1
            y: label_org.height
            color: "transparent"
            ScrollView {
                clip: true
                width: parent.width
                height: parent.height
                contentWidth: row.width
                contentHeight: row.height

                Row {
                    id: row
                }
            }

        }
    }

}
