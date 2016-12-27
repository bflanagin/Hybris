import QtQuick 2.4
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3

import Ubuntu.Components 1.2

Item {
    property int lvlmod: 0
    property int mods: 0
    property int currentVal: 0
    property int maxvalue:(18 + mods + lvlmod) * 1.5

Row {
    width:parent.width
    height:parent.height
    spacing:2

    Repeater {
             model:currentVal

        Tick {
            width:parent.width / maxvalue
            height:parent.height
        }
    }


}

Text {
    color:"white"
    text:currentVal
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter

}
}
