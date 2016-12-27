import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2

import QtQuick.LocalStorage 2.0

import "main.js" as Scripts


Item {
    id:popup
    property string number: "0"
    property string list:""

    clip: true

    onStateChanged: Scripts.loadActions(list)
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

    anchors.centerIn: parent

    Rectangle {
        width:chaselect.width
        height:chaselect.height
        color:"black"
    }

    Rectangle {
        width:parent.width
        height:parent.height
    }




    Row {

        width:parent.width * 0.90
        height:parent.height * 0.90
        anchors.centerIn: parent
        //clip:true
        spacing: 2

        Rectangle {
            width:parent.width / 2
            height:parent.height
            radius:10
            border.color:"darkgray"
            border.width:2

            Image {
                source:"img/male.png"
                anchors.centerIn: parent

                width:parent.width * 0.80
                height:parent.height * 0.80
            }

            MouseArea {
                anchors.fill:parent
                onClicked: {charsex = 0;Scripts.heightweight(race,0);popup.state = "InActive"}
            }

        }
        Rectangle {
            width:parent.width / 2
            height:parent.height
            radius: 10
            border.color:"darkgray"
            border.width:2

            Image {
                source: "img/female.png"
                anchors.centerIn: parent

                width:parent.width * 0.80
                height:parent.height * 0.80
            }

            MouseArea {
                anchors.fill:parent
                onClicked: {charsex = 1;Scripts.heightweight(race,1);popup.state = "InActive"}
            }
        }
    }

    Image {
        width:parent.width
        height:parent.height
        source:"img/Border.png"
    }

}




