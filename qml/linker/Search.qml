import QtQuick 2.0
import QtQuick.Controls 2.0

TextField {
    placeholderText: "Search by Place or Potition"
    color: "#80000000"
    maximumLength: 30
    hoverEnabled: true
    font{family: "Comfortaa"; pointSize: 14}
    background: Rectangle {
        color: "transparent"
//        border.color: "black"
    }
    verticalAlignment: TextInput.AlignVCenter

}
