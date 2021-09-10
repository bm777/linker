import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    visible: true
    width: Screen.width
    height: Screen.height
    title: qsTr("Linker")

    Text {
        id: content
        text: "width : " + root.width + ", height : "+root.height
        anchors.centerIn: parent
    }
}
