import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2

import "main.js" as Scripts


Item {
    id:popup
    property string number: "0"
    //property string roll:""

    clip: true

    //onStateChanged: Scripts.loadActions(list)
    states: [
        State {
            name:"Active"
            PropertyChanges {
                target: popup
                z: 3
                visible:true

            }
            PropertyChanges {
               target:armorcheck
               visible:true
            }

        },
        State {
          name:"InActive"
          PropertyChanges {
              target: popup
              z: -2
              visible:false
          }
        },
        State {
            name:"Save"
            PropertyChanges {
                target:popup
                z:3
                visible:true
            }
            PropertyChanges {
               target:armorcheck
                visible:false
            }

        }

    ]


    anchors.centerIn: parent

    Rectangle {
        height:parent.height
        width:parent.width
        color:"black"
        border.width: 2
        border.color:"gray"
    }

    Image {
        id:damage
        anchors.horizontalCenter: parent.horizontalCenter
        source:"img/glass.png"
        height:parent.width * 0.90
        width:parent.width * 0.90

        Text {
            anchors.centerIn: parent
            color:"white"
            font.pixelSize: parent.width / 3
            text: roll
        }
    }

    Image {
        id:armorcheck
        visible: true
        anchors.right: parent.right
        anchors.top:damage.bottom
        anchors.topMargin: parent.height * -0.10
        source:"img/glass.png"
        height:parent.width * 0.40
        width:parent.width * 0.40

        Rectangle {
            z:-1
            width:parent.width
            height:parent.width
            anchors.centerIn: parent
            radius: width / 2
            color:"black"
        }


        Text {
            anchors.centerIn: parent
            color:"white"
            font.pixelSize: parent.width / 3
            text: roll20
        }
    }

    Image {
        id:critcheck
        visible: if(critchance == 1) {return true;} else {return false;}
        anchors.right: armorcheck.left
        anchors.top:damage.bottom
        anchors.topMargin: parent.height * -0.05
        source:"img/glass.png"
        height:parent.width * 0.40
        width:parent.width * 0.40

        Rectangle {
            z:-1
            width:parent.width
            height:parent.width
            anchors.centerIn: parent
            radius: width / 2
            color:"black"
        }


        Text {
            anchors.centerIn: parent
            color:"white"
            font.pixelSize: parent.width / 3
            text: critCheck
        }
    }

    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom:parent.bottom
        anchors.bottomMargin:parent.height * 0.10
        width:parent.width * 0.70
        height:parent.height * 0.10
        color:"black"
        border.color: "white"
        border.width: 2
        radius: 10

        Text {
            text:"Okay"
            font.pixelSize: parent.height / 2
            anchors.centerIn: parent
            color:"white"
        }

        MouseArea {
            anchors.fill:parent
            onClicked: popup.state = "inActive"
        }
    }

}




