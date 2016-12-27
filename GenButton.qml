import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2

import "main.js" as Scripts


Item {
    id:button
    property string number: "0"
    property string list:""
    property string picture:""
    property string buttonText:""

    clip: true

    states: [
        State {
            name:"Active"
            PropertyChanges {
                target: popup
                z: 3
            }

        },
        State {
          name:"InActive"
          PropertyChanges {
              target: popup
              z: -2
          }
        }
    ]

    //anchors.centerIn: parent

    Rectangle {
        width:parent.width
        height:parent.height
        border.width:2
        border.color:"darkgray"
        color:"black"

        Image {
            source:picture
            anchors.fill:parent

        }
        Text {
            text:buttonText
            font.pixelSize: parent.width / 2
            anchors.centerIn:parent
            color:"white"
        }
    }



}




