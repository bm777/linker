import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    visible: true
    width: Screen.width === 411 ? Screen.width : 411
    height: Screen.height === 811 ? Screen.height : 811
    title: qsTr("Linker")
    property int intervalTimeout: 1500//2500
    property bool shutdown: false





    // App
    App {
        id: app
        width: parent.width
        height: parent.height
    }

    // Splash
    Splash {
        id: splash
        visible: true
        width: parent.width
        height: parent.height
        anchors.horizontalCenter: parent.horizontalCenter
    }





    //timer
    Timer {
        interval: intervalTimeout
        running: true
        repeat: false
        onTriggered: {
            effect.running = true
        }
    }

    ParallelAnimation {
        id: effect

        NumberAnimation {
            target: splash
            property: "width"
            duration: 500
            to: 0
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: splash
            property: "height"
            duration: 500
            to: 0
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: splash
            property: "radius"
            duration: 500
//                from: 40
            to: splash.height/2
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: splash
            property: "y"
            duration: 500
//                from: 40
            to: root.height - root.height * 0.08/2
            easing.type: Easing.InOutQuad
        }
    }
}
