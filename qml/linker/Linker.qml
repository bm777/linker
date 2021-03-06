import QtQuick 2.0
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.5

Item {
    id: linker
    property real inter: selector.width * 0.98
    Rectangle {
        id: root
        width: parent.width
        height: parent.height
        color: "#EDF8FF"

        ////////////////////////////////////////////////////////////////////////////
        Rectangle {id: selector
            width: parent.width
            height: parent.height * 1
            radius: parent.width * 0.13
            y: root.height //parent.height * 0.5

            Rectangle {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width * 0.13
                height: 5
                radius: height/2
                y: frame_search.x
                color: "#F0F0F0"
            }
            Text {
                id: logo
                text: "Linker"
                font{family: "Comfortaa"; pointSize: 25; bold: true}
                x: parent.width/2 - width/2
                color: "#1552F0"
                anchors.bottom: frame_search.top
                anchors.bottomMargin: 20
            }

            Rectangle {id: frame_search
                width: parent.width * 0.9
                height: 50
                x: parent.width/2-width/2
//                anchors.horizontalCenter: parent.horizontalCenter
                y: parent.height * 0.18
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
            //// go button
            Rectangle {
                visible: !submit.visible
                height: frame_search.height * 0.8
                width: (selector.width - frame_search.width)/2
                color: "#1552f0"
                radius: height/2
                anchors.left: frame_search.right
                anchors.leftMargin: 10
                anchors.verticalCenter: frame_search.verticalCenter
                Text {
                    text: "GO"
                    font{family: "Comfortaa"; pointSize: 10; bold: true}
                    anchors.centerIn: parent
                    color: "#ffffff"
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: load.restart()
                }
            }
            /////
            //////////////////////////////////////////////////////////////////////
            Text {
                id: res
                visible: !submit.visible
                text: "Optimized results rearby"
                x: parent.width * 0.1
                font{family: "Comfortaa"; pointSize: 13; bold: false}
                color: "#646D76"
                anchors.top: frame_search.bottom
                anchors.topMargin: 10
            }

            Rectangle {id: separator
                visible: !submit.visible
                x: 0
                width: root.width
                anchors.top: res.bottom
                anchors.topMargin: 5
                height: 1
                color: "#80b6b6b6"

            }
            Rectangle {
                id: backend
                visible: !submit.visible
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width * 1
                height: selector.height - res.y - res.height - 5 // 5 is for separator
                anchors.top: res.bottom
                anchors.topMargin: 5
//                border.color: "red"
                AnimatedImage {

                    source: "qrc:img/inf"
                    anchors.horizontalCenter: parent.horizontalCenter
                    y: parent.height * 0.1
                }
            }

            Rectangle {id: result
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width * 1
                height: selector.height - res.y - res.height - 5 // 5 is for separator
                anchors.top: res.bottom
                anchors.topMargin: 5
                color: "#D4EDFF"
//                border.color: "blue"
                ScrollView {
                    clip: true
                    width: parent.width
                    height: parent.height
                    contentHeight: col.height
                    contentWidth: col.width
                    spacing: 0

                    Column {
                        id: col
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            p: "Famrer for planting rice for 3 weeks"
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            p: "Famrer for weeding for 5 weeks"
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                        Result {
                            width: inter
                            x: (selector.width - width)/2
                            MouseArea {anchors.fill: parent; onClicked: {pop.visible=true; pop.p=parent.p} }
                        }
                    }
                }

            }


            //////////////////////////////////////////////////////////////////////////////

            Text {
                id: desc
                text: "Search open opportunities around you!"
                font{family: "Comfortaa"; pointSize: 12; bold: false}
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#1552f0"
                anchors.top: frame_search.bottom
                anchors.topMargin: 20
                visible: submit.visible
            }

            Rectangle {
                id: submit
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width * 0.5
                height: 50
                color: "#1552F0"
                radius: 5
                anchors.top: desc.bottom
                anchors.topMargin: 40

                Text {
                    text: "Go"
                    font{family: "Comfortaa"; pointSize: 17}
                    anchors.centerIn: parent
                    color: "#ffffff"
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        up.running = true
                        load.running = true
                    }
                }
            }
        }
    }
    Rectangle {
        width: parent.width
        height: root.height
        visible: pop.visible
        color: "#201552f0"

    }
    Pop {
        id: pop
        visible: false
        width: parent.width * 0.8
        height: width
        anchors.centerIn: parent
    }

    Timer {
        id: load
        interval: 2000
        repeat: false
        onTriggered: {
            if(search.text.toLowerCase().includes("agriculture")) result.visible = true
            else {
                result.visible = true
                col.visible = false
            }
        }
    }


    /// SequentialAnimation
    SequentialAnimation {
        running: linker.visible

        NumberAnimation {
            target: selector
            property: "y"
            to: selector.y === 0 ? 0 : root.height * 0.5
            duration: 500
            easing.type: Easing.OutBack
        }
    }
    ParallelAnimation {
        id: up

        NumberAnimation {
            target: selector
            property: "y"
            to: 0
            duration: 500
            easing.type: Easing.OutBack
        }
        NumberAnimation {
            target: selector
            property: "radius"
            to: 0
            duration: 500
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: frame_search
            property: "width"
            to: root.width * 0.7
            duration: 500
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: frame_search
            property: "x"
            to: selector.width * 0.05
            duration: 500
            easing.type: Easing.InOutQuad
        }
        PropertyAnimation {
            target: submit
            property: "visible"
            to: false
            duration: 100
            easing.type: Easing.InOutQuad
        }
    }
}
