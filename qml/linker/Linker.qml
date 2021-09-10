import QtQuick 2.0

Item {
//    id: root
    Rectangle {
        id: root
        width: parent.width
        height: parent.height
        color: "#EDF8FF"

        Rectangle {
            width: parent.width
            height: parent.height * 0.6
            radius: parent.width * 0.13
            y: parent.height * 0.5

            Rectangle {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width * 0.13
                height: 5
                radius: height/2
                y: frame_search.y / 2 - height/2
                color: "#F0F0F0"
            }

            Rectangle {id: frame_search
                width: parent.width * 0.9
                height: 50
                anchors.horizontalCenter: parent.horizontalCenter
                y: x
                radius: height/2
                color: "#10b6b6b6"
                // icon searcah
                Image {
                    source: "qrc:img/search"
                    height: parent.height * 0.4
                    width: height
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: search.left
                }

                // search
                Search {
                    id: search
                    width: parent.width * 0.8
                    height: parent.height
                    anchors.centerIn: parent
                }

                // micro
                Image {
                    source: "qrc:img/micro"
                    height: parent.height * 0.4
                    width: height
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: search.right
                }
            }
        }



    }
}
