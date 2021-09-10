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
                horizontalCenter: parent.horizontalCenter
                x: y

                Search {
                    id: search
                    width: parent.width
                }
            }
        }



    }
}
