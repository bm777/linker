import QtQuick 2.0
import QtGraphicalEffects 1.12

Item {
    id: root

    // [1] : action menu
    Action {
        id: action
        width: parent.width
        height: parent.height * 0.08
        y: parent.height - height
    }
    DropShadow {
        anchors.fill: action
        horizontalOffset: 0
        verticalOffset: 1
        radius: 4
        samples: 5
        color: "#20000000"
        source: action
    }


}
