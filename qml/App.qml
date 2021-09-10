import QtQuick 2.0
import QtGraphicalEffects 1.12
import "home"

Rectangle {
    id: root




    // [2] : Home place
    Rectangle {
        width: 100
        height: width
        border.color: "blue"
    }

    Home {
        id: home
        width: parent.width
        height: parent.height - action.width
        anchors.centerIn: parent
    }




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
