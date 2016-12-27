import QtQuick 2.3
import QtQuick.Window 2.2

Rectangle {

    color:"black"
    border.width:3
    border.color:"white"
    radius:5

    Text {
        color:"white"
        anchors.centerIn: parent
        text:">"
        font.pixelSize: parent.width
    }

}
