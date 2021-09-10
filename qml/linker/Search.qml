import QtQuick 2.0
import QtQuick.Controls 2.0

TextField {
    placeholderText: "Search by Place or Potition"

    property string lang: ""
    property string thema: ""
    property bool c_visible: false
    color: "#80000000"
    maximumLength: 30
    hoverEnabled: true
    font{family: "Comfortaa"}
    background: Rectangle {

    }
    cursorVisible: c_visible


}
