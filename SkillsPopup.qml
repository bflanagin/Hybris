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
    anchors.centerIn: parent

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
            name:"Single"
            PropertyChanges {
                target:popup
                z:3
                visible:true
            }


        }

    ]

    Rectangle {
        border.width:2
        border.color:"darkgray"
        width:parent.width
        height:parent.height
        color:"black"
    }

    ListView {
        anchors.top:parent.top
        anchors.topMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: parent.width * 0.04
        clip:true
        width:parent.width * 0.92
        height:parent.height * 0.955 - skillsTitlebase.y - skillsTitlebase.height
        flickableDirection: Flickable.VerticalFlick
        //contentHeight:notopdiscript.height
        spacing: 5

        delegate: Genlist{
                        width:popup.width * 0.903
                        height:popup.height / 8
                        type: "append"

                        //backlayout: "CharacterSelect"
                        //frontlayout: "CharacterSelect"

        }

        model: ListModel {
            id:skillList

        }


    }
    onStateChanged: {currentItem = -1;Scripts.loadSkills(charclassShort)}

}
