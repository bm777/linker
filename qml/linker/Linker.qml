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
                    x: 5
                }

                // search
                Search {
                    id: search
                    width: parent.width * 0.9
                    height: parent.height
                    anchors.centerIn: parent
                }
            }
        }



    }
}
