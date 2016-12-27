import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2
import QtQuick.LocalStorage 2.0

import "main.js" as Scripts
import "openseed.js" as OpenSeed

Item {
    clip:true
    anchors.centerIn:parent

    Rectangle {
        width:parent.width
        height:parent.height
        anchors.centerIn: parent
        color:"gray"
        border.color:"darkgray"
        border.width:2

    }

    Image {
            width:parent.width * 0.99
            height:parent.height * 0.99
            anchors.centerIn: parent
            source:"img/"+race+".png"
    }


    Image {
        width:parent.width * 0.99
        height:parent.height * 0.99
        anchors.centerIn: parent
        source:"img/"+charalignment+".png"

        Image {
                width:parent.width * 0.55
                height:parent.height * 0.55
                //anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top:parent.top
                anchors.topMargin: 75
                source:"img/"+charclass+".png"
                fillMode:Image.PreserveAspectFit
                }

    }




    Text {
        id: name
        text:charname
        anchors.top:parent.top
        anchors.topMargin: parent.height * 0.10
        font.pixelSize: parent.height / 15

        anchors.horizontalCenter: parent.horizontalCenter
        color:"white"


            }


            Text {
                id:alignment
                text:charalignment
                font.pixelSize: parent.height / 15
                anchors.left: parent.left
                anchors.leftMargin: 20
                color: "white"
                anchors.bottom:parent.bottom
                anchors.bottomMargin:parent.height * 0.2

                }

    Text {
        text:race
        font.pixelSize: parent.height / 18

        color: "white"
        anchors.top:alignment.bottom
        anchors.topMargin: 10
        anchors.left:alignment.left
        anchors.leftMargin:parent.width / 4

        x: parent.width / 10
        Text {
            text:charclass
            font.pixelSize: parent.height * 1
            //anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            anchors.top:parent.bottom
            anchors.topMargin:0
            anchors.left:parent.right
            anchors.leftMargin:4
        }

    }

    Rectangle {
     color: Qt.rgba(0.0,0.0,0.0,0.2)
     anchors.fill:parent

     Rectangle {
         color:"black"
         border.color:"white"
         border.width:2
         radius:20
         anchors.centerIn: parent
         width:parent.width / 2
         height:parent.height /6
         Text {
             anchors.centerIn: parent
             text:"Save"
             color:"white"
             font.pixelSize: parent.height * 0.5
         }

         MouseArea {
             anchors.fill:parent
             onClicked:{Scripts.saveCharacter();OpenSeed.upload_character();mainWindow.state = "CharacterSelect"}
         }
     }
    }
}
