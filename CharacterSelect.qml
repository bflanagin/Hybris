import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2

import QtQuick.LocalStorage 2.0

import "main.js" as Scripts
import "openseed.js" as Openseed

Item {
    id:chaselect
    onVisibleChanged: {charactercardslist.clear(); Scripts.loadCharacters()}
    Rectangle {
        id:add
        radius: 10
        anchors.right:parent.right
        anchors.rightMargin:10
        anchors.top:parent.top
        anchors.topMargin:10

        width: parent.width * 0.08
        height:parent.width * 0.08
        color:"black"
        border.width:2
        border.color:"darkgray"

        Text {
            anchors.centerIn: parent
            font.pixelSize: parent.width
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.verticalCenter
            color:"white"
            text:"+"
        }
        MouseArea {
            anchors.fill:parent
            onClicked:{currentcard = -1;mainWindow.state = "CharacterSetup";characterSetup.state = "Alignment"}

        }
    }
    Rectangle {
        id:edit
        radius: 10
        anchors.right:add.right
        anchors.rightMargin:0
        anchors.top:add.bottom
        anchors.topMargin:10

        width: parent.width * 0.08
        height:parent.width * 0.08
        color:"black"
        border.width:2
        border.color:"darkgray"

        Text {
            anchors.centerIn: parent
            font.pixelSize: parent.width
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.verticalCenter
            color:"white"
            text:"e"
        }
    }

    Rectangle {
        id:reload
        radius: 10
        anchors.left:parent.left
        anchors.leftMargin:10
        anchors.top:parent.top
        anchors.topMargin:10

        width: parent.width * 0.08
        height:parent.width * 0.08
        color:"black"
        border.width:2
        border.color:"darkgray"

        Text {
            anchors.centerIn: parent
            font.pixelSize: parent.width
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.verticalCenter
            color:"white"
            text:"R"
        }

        MouseArea {
            anchors.fill:parent
            onClicked:{Openseed.racesync();Openseed.classsync();Openseed.alignmentsync();Openseed.skillssync();
            Openseed.featsync();Openseed.weaponssync();Openseed.armorsync();Openseed.spellsync();Openseed.xpsync();Openseed.vitalssync();Openseed.levelsync(1);
                Openseed.levelsync(2);Openseed.levelsync(3);
            Openseed.levelsync(4);Openseed.levelsync(5);Openseed.levelsync(6);Openseed.levelsync(7);Openseed.levelsync(8);Openseed.levelsync(9);Openseed.levelsync(10);
            Openseed.levelsync(11);Openseed.levelsync(12);Openseed.levelsync(13);Openseed.levelsync(14);Openseed.levelsync(15);Openseed.levelsync(16);Openseed.levelsync(17);
            Openseed.levelsync(18);Openseed.levelsync(19);Openseed.levelsync(20);}

        }


    }

    GridView {
            id:charactercards
            z:-1
            width:parent.width * 0.85
            height:parent.height * 0.85
            contentWidth: parent.width * charactercardslist.count
            contentHeight: parent.height

            snapMode: GridView.SnapOneRow
            flow: GridView.FlowTopToBottom

            cellHeight: parent.height
            cellWidth: parent.width



                delegate: Cardlist{
                                width:chaselect.width
                                height:chaselect.height
                                backlayout: "CharacterSelect"
                                frontlayout: "CharacterSelect"

                }

                model: ListModel {
                    id:charactercardslist

                }


                }

   /* Timer { interval: 10; running:true; repeat: false
    onTriggered:Scripts.loadCharacters()
    } */

    Rectangle {
        id:select
        radius:20
        color:"black"
        border.width:2
        border.color:"white"
        anchors.horizontalCenter: parent.horizontalCenter
        width:selecttext.width + 20
        height:selecttext.height + 20
        anchors.bottom:parent.bottom
        anchors.bottomMargin:parent.height * 0.02
        Text {
            id:selecttext
            text:"Select"
            color:"white"
            anchors.centerIn: parent
            font.pixelSize: chaselect.height * 0.05
        }

        MouseArea {
            anchors.fill:parent
            onClicked:{ mainWindow.state = "PlayScreen"}

        }
    }

}
