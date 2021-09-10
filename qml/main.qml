import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    visible: true
    width: Screen.width === 411 ? Screen.width : 411
    height: Screen.height === 811 ? Screen.height : 811
    title: qsTr("Linker")
    property int intervalTimeout: 2500

    // Splash
    Splash {
        id: splash
        visible: true
    }







    //timer
    Timer {
        interval: intervalTimeout
    }
}
