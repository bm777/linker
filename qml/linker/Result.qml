import QtQuick 2.0
import QtQuick.Window 2.0

Rectangle {
    id: root
//    radius: height /2
    height: 70
    color: "#D4EDFF"
    property string position: "How to plant a rice during a wrong period"
//    radius: height/2
    Rectangle {
        anchors.centerIn: parent
        width: parent.width
        height: parent.height * 0.95
        radius: 5

        Rectangle {id: circle
            height: parent.height * 0.5
            width: height
            radius: height/2
            border.color: "#1552f0"
            anchors.verticalCenter: parent.verticalCenter
            x: y

            Rectangle {id: point
                height: parent.height * 0.2
                width: height
                color: "#1552f0"
                anchors.centerIn: parent
            }
        }

        // end for open
        Rectangle {
            height: parent.height * 0.6
            width: height * 2
            radius: height/2
            color: "#1552f0"
            x: parent.width - point.x - width
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: "Open"
                font{family: "Comfortaa"; pointSize: 12}
                anchors.centerIn: parent
                color: "#ffffff"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }


        // Text
        Text {
            text: position
            font{family: "Comfortaa"; pointSize: 12}
            width: parent.width * 0.65
            height: parent.height * 0.5
            wrapMode: Text.WordWrap
            anchors.left: circle.right
            anchors.leftMargin: 5
            y: circle.y
        }
    }
    Pop {
        id: pop
        width: Screen.width * 0.5
        height: 100
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
