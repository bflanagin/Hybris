import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2

import QtQuick.LocalStorage 2.0

import "main.js" as Scripts

Item {
    id:biocard
    y:parent.height * 0.025


    SexSelect {
        width:parent.width * 0.75
        height:parent.height * 0.22
        state:"Active"
    }



 Rectangle {
    //y:titlebarbase.y - 10
    //x:parent.width * 0.05
     anchors.centerIn: parent
    width:parent.width / 1.16
    height:parent.height / 1.10
    color:"white"
    border.color: "gray"
    border.width: 2
    id:mainStats

    Image {
        anchors.centerIn: parent
        width:parent.width * 0.99
        height:parent.height * 0.99
        source: "img/Border.png"




    Rectangle {
        id:nameagesex
    anchors.left:parent.left
    anchors.leftMargin: parent.width * 0.035

     anchors.top:pageOpts.bottom
    color:"white"
    border.color:"darkgray"
    border.width:2
    width:parent.width /2
    height:parent.height /8

   Column {
       anchors.left:parent.left
       anchors.leftMargin:5
       anchors.top:parent.top
       anchors.topMargin:10
       width:parent.width
       height:parent.height
       spacing: 4

    Text {
        text:"Name: "+charname
        font.pixelSize: nameagesex.width / 7 - charname.length

    }
    Rectangle {
        width:parent.width
        height:3
        color:"black"
    }

    Row {
        width:parent.width
        height:parent.height
        spacing: 20
        Text {
            text: "Age: "+charage
            font.pixelSize: nameagesex.width / 12 - charsex.length
        }
        Text {
            text: switch(charsex) {
                                case "1": return "Sex: Female";break;
                                case "0": return "Sex: Male";break;
                                default: return "Sex: Depends";break;
                        }


            font.pixelSize: nameagesex.width / 12
        }
    }
   }

   MouseArea {
       anchors.fill:parent
       onClicked:appearanceScreen.state = "Active"
   }

}

    Rectangle {
        id:deityhomeland
        anchors.left:parent.left
        anchors.leftMargin: parent.width * 0.035
     anchors.top:nameagesex.bottom
    color:"white"
    border.color:"darkgray"
    border.width:2
    width:parent.width /2
    height:parent.height / 20

    Row {
        anchors.left:parent.left
        anchors.leftMargin:5
        anchors.top:parent.top
        anchors.topMargin:10
        width:parent.width
        height:parent.height
        spacing: 10
        Text {
            text: "Deity: "+chargod
            font.pixelSize: deityhomeland.width / 11 - charht.length
        }
        Text {
            text: "Hometown: "+charht
            font.pixelSize: deityhomeland.width / 11 - charht.length
        }
    }
    MouseArea {
        anchors.fill:parent
        onClicked:appearanceScreen.state = "Active"
    }

}

    Rectangle {
        id:heightweighteyeshair
    anchors.left:parent.left
    anchors.leftMargin: parent.width * 0.035

     anchors.top:deityhomeland.bottom
    color:"white"
    border.color:"darkgray"
    border.width:2
    width:parent.width /2
    height:parent.height /6

   Column {
       anchors.top:parent.top
       anchors.topMargin:10
       anchors.left:parent.left
       anchors.leftMargin:5
       width:parent.width
       height:parent.height
       spacing: 10

        Text {
            text: "Eyes: "+chareyes
            font.pixelSize: heightweighteyeshair.width / 10 - chareyes.length
        }
        Text {
            text: "Hair: "+charhair
            font.pixelSize: heightweighteyeshair.width / 10 - charhair.length
        }
        Row {
            height:parent.height
            width:parent.width
            spacing: 5
            Text {
                text: "Height: "+charhf+"'"+charhi+"\""
                font.pixelSize: heightweighteyeshair.width / 12

            }
            Text {
                text: "Weight: "+charWeight
                font.pixelSize: heightweighteyeshair.width / 12
            }
        }

    }

   MouseArea {
       anchors.fill:parent
       onClicked:appearanceScreen.state = "Active"
   }

    }

    Rectangle {
        id:classacts
        anchors.top:heightweighteyeshair.bottom
        anchors.left:parent.left
        width:parent.width /2
        height: parent.width / 10
        color:"white"
        border.color:"darkgray"
        border.width:2
        anchors.leftMargin: parent.width * 0.035

        Row {

            anchors.centerIn: parent
            spacing: parent.width / 18

            Text {
                text:"Feats"
                font.pixelSize: classacts.height / 2
                MouseArea {
                    anchors.fill:parent
                    onClicked:featsPage.state = "Active"
                }

            }
            Text {
                text:"Spells"
                font.pixelSize: classacts.height / 2
                MouseArea {
                    anchors.fill:parent
                    onClicked:spellsPage.state = "Active"
                }
            }
        }
    }


    Rectangle {
    anchors.left:parent.left
    anchors.leftMargin:parent.width * 0.035
    width:parent.width * 0.925
    height:parent.height / 12
    color:"white"
    border.color:"darkgray"
    border.width:2
    anchors.top:parent.top
    anchors.topMargin:parent.height * 0.035
    clip:true

    id:pageOpts

    Row {
        spacing: parent.width * 0.05
        anchors.centerIn:parent
    Text {
        text:"Skills"
        font.pixelSize: pageOpts.width * 0.06
        color:"black"

        MouseArea {
            anchors.fill:parent
            onClicked:skillsPage.state = "Active"
        }
    }

    Text {

        text:"Weapons"
        font.pixelSize: pageOpts.width * 0.06
        color:"black"
        MouseArea {
            anchors.fill:parent
            onClicked:weaponsPage.state = "Active"
        }
    }
    Text {

        text:"Armor"
        font.pixelSize: pageOpts.width * 0.06
        color:"black"
        MouseArea {
            anchors.fill:parent
            onClicked:armorPage.state = "Active"
        }
    }
    }
    }

    Rectangle {
        anchors.top:pageOpts.bottom
        color:"white"
        width:parent.width * 0.45
        height:parent.height / 4
        anchors.right:parent.right
        anchors.rightMargin: parent.width * 0.04
        border.color:"darkgray"
        border.width: 2
        id:hpblock
        clip:true

    Column {
        width:parent.width
        height:parent.height


    Text {
        text:"HP: "
        color:"black"
        font.pixelSize: parent.width / 6
        Text {
            text:hp
            color:"black"
            font.pixelSize: parent.height
            anchors.left:parent.right
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    Text {
        text:" AC: "
        color:"black"
        font.pixelSize: parent.width / 12
        Text {
            text:charAC
            color:"black"
            font.pixelSize: parent.height
            anchors.left:parent.right
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    Text {
        text:" Touch: "
        color:"black"
        font.pixelSize: parent.width / 12
        Text {
            text:charTAC
            color:"black"
            font.pixelSize: parent.height
            anchors.left:parent.right
            anchors.verticalCenter: parent.verticalCenter
        }
    }

    Text {
        text:" FF: "
        color:"black"
        font.pixelSize: parent.width / 12
        Text {
            text:charFF
            color:"black"
            font.pixelSize: parent.height
            anchors.left:parent.right
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    }

}


    Rectangle {
        anchors.top:hpblock.bottom
        width:parent.width * 0.45
        height:parent.height / 2
        color:"white"
        border.color:"darkgray"
        border.width:2
        clip:true
        anchors.right:parent.right
        anchors.rightMargin: parent.width * 0.04

        Column {
            id:statsColumn
            width:parent.width
            height:parent.height
            spacing:10
            x:10
            y:10
            clip:true

             Text {
                text: "Str: "
                color:"black"
                font.pixelSize: parent.width / 7

                CharProgressBar {
                    anchors.left: parent.right
                    width:statsColumn.width - (parent.width * 1.2)
                    height:parent.height
                    currentVal:str
                    lvlmod: 0
                    mods:strMod

                }

            }
            Text {
                text:"Dex: "
                color:"black"
                font.pixelSize: parent.width / 7

                CharProgressBar {
                    anchors.left: parent.right
                    width:statsColumn.width - (parent.width * 1.2)
                    height:parent.height
                    currentVal:dex
                    lvlmod: 0
                    mods:dexMod
                }
            }
            Text {
                text: "Con: "
                color:"black"
                font.pixelSize: parent.width / 7

                CharProgressBar {
                    anchors.left: parent.right
                    width:statsColumn.width - (parent.width * 1.2)
                    height:parent.height
                    currentVal:con
                    lvlmod: 0
                    mods:conMod
                }
            }
            Text {
                text:"Int: "
                color:"black"
                font.pixelSize: parent.width / 7

                CharProgressBar {
                    anchors.left: parent.right
                    width:statsColumn.width - (parent.width * 1.2)
                    height:parent.height
                    currentVal:intel
                    lvlmod: 0
                    mods:intMod
                }
            }
            Text {
                text: "Wis: "
                color:"black"
                font.pixelSize: parent.width / 7

                CharProgressBar {
                    anchors.left: parent.right
                    width:statsColumn.width - (parent.width * 1.2)
                    height:parent.height
                    currentVal:wis
                    lvlmod: 0
                    mods:wisMod
                }
            }
            Text {
                text:"Cha: "
                color:"black"
                font.pixelSize: parent.width / 7

                CharProgressBar {
                    anchors.left: parent.right
                    width:statsColumn.width - (parent.width * 1.2)
                    height:parent.height
                    currentVal:cha
                    lvlmod: 0
                    mods:chaMod
                }
            }
        }
       }
    }


    }

Rectangle {
    id:skillsPage
    width:mainStats.width
    x:mainStats.x
    states: [
        State {
            name: "Active"
            PropertyChanges {
                target:skillsPage
                y:mainStats.y + 10
            }

        },
        State {
            name:"InActive"
            PropertyChanges {
                target:skillsPage
                y:mainStats.height * 1.2
            }
        }

    ]
    state:"InActive"



    y:titlebarbase.y
    //x:10

    height:parent.height * 0.90
    color:"white"
    //id:skillsSelect
    border.width: 2
    border.color:"darkgray"
    clip:true

    Image {
        width:parent.width * 0.99
        height:parent.height * 0.99
        anchors.centerIn: parent
        source:"img/Border.png"


    Text {
        text:"Skills"
        anchors.top:parent.top
        anchors.topMargin:parent.height * 0.04
        font.pixelSize: parent.width / 10
        anchors.horizontalCenter: parent.horizontalCenter
        color:"black"
        id:skillsTitle
    }
    Text {
        text:charSkillPoints
        font.pixelSize: parent.width / 20
        anchors.right:parent.right

    Text {
        text:"Points: "
        anchors.right:parent.left
        font.pixelSize: parent.width
    }
    }

    Backbutton {
        anchors.bottom:skillsTitlebase.top
        anchors.bottomMargin: 10

        height:parent.width / 10
        width:parent.width / 10

        MouseArea {
            anchors.fill:parent
            onClicked:skillsPage.state = "InActive"
        }
    }
        Rectangle {
            color:"black"
            anchors.top:skillsTitle.bottom
            anchors.topMargin:10
            width:skillsPage.width
            height:parent.height * 0.005
            x:skillsPage.x
            id:skillsTitlebase
        }
        ListView {
            anchors.top:skillsTitlebase.bottom
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
                            width:skillsPage.width * 0.903
                            height:skillsPage.height / 8
                            type: "append"

                            //backlayout: "CharacterSelect"
                            //frontlayout: "CharacterSelect"

            }

            model: ListModel {
                id:skillList

            }


        }
    }

        onStateChanged: {currentItem = -1;Scripts.loadSkills(charclassShort)}



}


Rectangle {
    id:weaponsPage
    x:mainStats.x
    width:mainStats.width
    states: [
        State {
            name: "Active"
            PropertyChanges {
                target:weaponsPage
                y:mainStats.y + 10
            }

        },
        State {
            name:"InActive"
            PropertyChanges {
                target:weaponsPage
                y:mainStats.height * 1.2
            }
        }

    ]
    state:"InActive"




    y:titlebarbase.y
    //x:10

    height:parent.height * 0.90
    color:"white"
    //id:skillsSelect
    border.width: 2
    border.color:"darkgray"
    clip:true

    Image {
        width:parent.width * 0.99
        height:parent.height * 0.99
        anchors.centerIn: parent
        source:"img/Border.png"


    Text {
        text:"Weapons"
        font.pixelSize: parent.width / 10
        anchors.top:parent.top
        anchors.topMargin:parent.height * 0.04
        anchors.horizontalCenter: parent.horizontalCenter
        color:"black"
        id:weaponsTitle
    }
    Text {
        text:charSkillPoints
        font.pixelSize: parent.width / 20
        anchors.right:parent.right

    Text {
        text:"Points: "
        anchors.right:parent.left
        font.pixelSize: parent.width
    }
    }

    Backbutton {
        anchors.bottom:weaponsTitlebase.top
        anchors.bottomMargin: 10

        height:parent.width / 10
        width:parent.width / 10

        MouseArea {
            anchors.fill:parent
            onClicked:weaponsPage.state = "InActive"
        }
    }
        Rectangle {
            color:"black"
            anchors.top:weaponsTitle.bottom
            anchors.topMargin:10
            width:weaponsPage.width
            height:parent.height * 0.005
            x:weaponsPage.x
            id:weaponsTitlebase
        }
        ListView {
            anchors.top:weaponsTitlebase.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.04
            clip:true
            width:parent.width * 0.92
            height:parent.height * 0.955 - weaponsTitlebase.y - weaponsTitlebase.height
            flickableDirection: Flickable.VerticalFlick
            //contentHeight:notopdiscript.height
            spacing: 5

            delegate: Genlist{
                            width:weaponsPage.width * 0.903
                            height:weaponsPage.height / 8
                            type: "add"
                            addto: "weapon"

                            //backlayout: "CharacterSelect"
                            //frontlayout: "CharacterSelect"

            }

            model: ListModel {
                id:weaponList

            }
        }

        }

        onStateChanged: {currentItem = -1;Scripts.loadWeapons(race)}

       //Timer { interval: 1; running:true; repeat: false
        //onTriggered:Scripts.loadSkills(charclassShort)
       //}

}



Rectangle {
    id:armorPage

    x:mainStats.x
    width:mainStats.width

    states: [
        State {
            name: "Active"
            PropertyChanges {
                target:armorPage
                y:mainStats.y + 10
            }

        },
        State {
            name:"InActive"
            PropertyChanges {
                target:armorPage
                y:mainStats.height * 1.2
            }
        }

    ]
    state:"InActive"



    y:titlebarbase.y
    //x:10

    height:parent.height * 0.90
    color:"white"
    //id:skillsSelect
    border.width: 2
    border.color:"darkgray"
    clip:true

    Image {
        width:parent.width * 0.99
        height:parent.height * 0.99
        anchors.centerIn: parent
        source:"img/Border.png"


    Text {
        text:"Armor"
        anchors.top:parent.top
        anchors.topMargin:parent.height * 0.04
        font.pixelSize: parent.width / 10
        anchors.horizontalCenter: parent.horizontalCenter
        color:"black"
        id:armorTitle
    }
    Text {
        text:charSkillPoints
        font.pixelSize: parent.width / 20
        anchors.right:parent.right

    Text {
        text:"Points: "
        anchors.right:parent.left
        font.pixelSize: parent.width
    }
    }

    Backbutton {
        anchors.bottom:armorTitlebase.top
        anchors.bottomMargin: 10

        height:parent.width / 10
        width:parent.width / 10

        MouseArea {
            anchors.fill:parent
            onClicked:armorPage.state = "InActive"
        }
    }
        Rectangle {
            color:"black"
            anchors.top:armorTitle.bottom
            anchors.topMargin:10
            width:armorPage.width
            height:parent.height * 0.005
            x:armorPage.x
            id:armorTitlebase
        }
        ListView {
            anchors.top:armorTitlebase.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.04
            clip:true
            width:parent.width * 0.92
            height:parent.height * 0.955 - armorTitlebase.y - armorTitlebase.height
            flickableDirection: Flickable.VerticalFlick
            //contentHeight:notopdiscript.height
            spacing: 5

            delegate: Genlist{
                            width:armorPage.width * 0.903
                            height:armorPage.height / 8
                            type: "add"
                            addto: "armor"

                            //backlayout: "CharacterSelect"
                            //frontlayout: "CharacterSelect"

            }

            model: ListModel {
                id:armorList

            }
}

        }

        onStateChanged:{currentItem = -1; Scripts.loadArmor(charclassShort)}

       //Timer { interval: 1; running:true; repeat: false
        //onTriggered:Scripts.loadSkills(charclassShort)
       //}

}



Rectangle {
    id:featsPage

    x:mainStats.x
    width:mainStats.width

    states: [
        State {
            name: "Active"
            PropertyChanges {
                target:featsPage
                y:mainStats.y + 10
            }

        },
        State {
            name:"InActive"
            PropertyChanges {
                target:featsPage
                y:mainStats.height * 1.2
            }
        }

    ]
    state:"InActive"



    y:titlebarbase.y
    //x:10
    //width:parent.width * 0.90
    height:parent.height * 0.90
    color:"white"
    //id:skillsSelect
    border.width: 2
    border.color:"darkgray"
    clip:true

    Image {
        width:parent.width * 0.99
        height:parent.height * 0.99
        anchors.centerIn: parent
        source:"img/Border.png"


    Text {
        text:"Feats"
        anchors.top:parent.top
        anchors.topMargin:parent.height * 0.04
        font.pixelSize: parent.width / 10
        anchors.horizontalCenter: parent.horizontalCenter
        color:"black"
        id:featsTitle
    }
    Text {
        text:charSkillPoints
        font.pixelSize: parent.width / 20
        anchors.right:parent.right

    Text {
        text:"Points: "
        anchors.right:parent.left
        font.pixelSize: parent.width
    }
    }

    Backbutton {
        anchors.bottom:featsTitlebase.top
        anchors.bottomMargin: 10

        height:parent.width / 10
        width:parent.width / 10

        MouseArea {
            anchors.fill:parent
            onClicked:featsPage.state = "InActive"
        }
    }
        Rectangle {
            color:"black"
            anchors.top:featsTitle.bottom
            anchors.topMargin:10
            width:featsPage.width
            height:parent.height * 0.005
            x:featsPage.x
            id:featsTitlebase
        }
        ListView {
            anchors.top:featsTitlebase.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.04
            clip:true
            width:parent.width * 0.92
            height:parent.height * 0.955 - featsTitlebase.y - featsTitlebase.height
            flickableDirection: Flickable.VerticalFlick
            //contentHeight:notopdiscript.height
            spacing: 5

            delegate: Genlist{
                            width:featsPage.width * 0.903
                            height:featsPage.height / 8
                            type: "add"
                            addto: "feat"

                            //backlayout: "CharacterSelect"
                            //frontlayout: "CharacterSelect"

            }

            model: ListModel {
                id:featsList

            }
}

        }

        onStateChanged:{currentItem = -1; Scripts.loadFeats(charclassShort)}

       //Timer { interval: 1; running:true; repeat: false
        //onTriggered:Scripts.loadSkills(charclassShort)
       //}

}



Rectangle {

    x:mainStats.x
    width:mainStats.width

    id:spellsPage
    states: [
        State {
            name: "Active"
            PropertyChanges {
                target:spellsPage
                //x:parent.width * 0.05
                y:mainStats.y + 10
            }

        },
        State {
            name:"InActive"
            PropertyChanges {
                target:spellsPage
                y:mainStats.height * 1.2
            }
        }

    ]
    state:"InActive"



    y:titlebarbase.y
    //x:10
    //width:parent.width * 0.90
    height:parent.height * 0.90
    color:"white"
    //id:skillsSelect
    border.width: 2
    border.color:"darkgray"
    clip:true

    Image {
        width:parent.width * 0.99
        height:parent.height * 0.99
        anchors.centerIn: parent
        source:"img/Border.png"


    Text {
        text:"Spells"
        anchors.top:parent.top
        anchors.topMargin:parent.height * 0.04
        font.pixelSize: parent.width / 10
        anchors.horizontalCenter: parent.horizontalCenter
        color:"black"
        id:spellsTitle
    }
    Text {
        text:charSkillPoints
        font.pixelSize: parent.width / 20
        anchors.right:parent.right

    Text {
        text:"Points: "
        anchors.right:parent.left
        font.pixelSize: parent.width
    }
    }

    Backbutton {
        anchors.bottom:spellsTitlebase.top
        anchors.bottomMargin: 10

        height:parent.width / 10
        width:parent.width / 10

        MouseArea {
            anchors.fill:parent
            onClicked:spellsPage.state = "InActive"
        }
    }
        Rectangle {
            color:"black"
            anchors.top:spellsTitle.bottom
            anchors.topMargin:10
            width:spellsPage.width
            height:parent.height * 0.005
            x:spellsPage.x
            id:spellsTitlebase
        }
        ListView {
            anchors.top:spellsTitlebase.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.04
            clip:true
            width:parent.width * 0.92
            height:parent.height * 0.955 - spellsTitlebase.y - spellsTitlebase.height
            flickableDirection: Flickable.VerticalFlick
            //contentHeight:notopdiscript.height
            spacing: 5

            delegate: Genlist{
                            width:spellsPage.width * 0.903
                            height:spellsPage.height / 8
                            type: "add"
                            addto: "spell"

                            //backlayout: "CharacterSelect"
                            //frontlayout: "CharacterSelect"

            }

            model: ListModel {
                id:spellsList

            }
}

        }

        onStateChanged:{currentItem = -1;Scripts.loadSpells(charclassShort)}

       //Timer { interval: 1; running:true; repeat: false
        //onTriggered:Scripts.loadSkills(charclassShort)
       //}

}





Rectangle {
    id:appearanceScreen
   // y:mainStats.y + 10

   width:parent.width / 1.16
   height:parent.height / 1.10

    x:mainStats.x
    color:"white"
    border.color:"darkgray"
    border.width:2
   // radius: 20

    states: [
        State {
            name:"Active"
            PropertyChanges {
                target: appearanceScreen

                y:mainStats.y + 10
            }
        },
        State {
            name:"InActive"
            PropertyChanges {
                target:appearanceScreen
                //x:parent.width * -1
                y:mainStats.height * 1.2
            }
        }

    ]
    state:"InActive"

    Image {
        width:parent.width * 0.99
        height:parent.height * 0.99
        anchors.centerIn: parent
        source:"img/Border.png"
    }


    Text {
        text:"Info"
        color:"black"
        id:appearTitle
        x:5
        font.pixelSize: parent.width / 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:parent.top
        anchors.topMargin:parent.height * 0.04

    }


    Backbutton {
        width:parent.width / 10
        height:parent.width /10
        anchors.left:parent.left
        anchors.leftMargin: 10
        anchors.top:parent.top
        anchors.topMargin: 10

        MouseArea {
            anchors.fill:parent
            onClicked: {appearanceScreen.state = "InActive"}
        }
    }


    Rectangle {
        anchors.top:appearTitle.bottom
        anchors.topMargin: 10
        width:parent.width
        height:3
        color:"black"
        id:appearTitleBase
    }

    Column {
        anchors.top:appearTitleBase.bottom
        anchors.topMargin:10
        anchors.left:parent.left
        anchors.leftMargin:parent.width * 0.04
        width:parent.width * 0.92
        height:parent.height

        spacing:4
        id:appearanceStatss
        clip:true

        Text {

            text:"Name: "
            color:"black"
            font.pixelSize: parent.height / 20
            id:charNameTittle


            TextField {
                id:character_name
                anchors.left:parent.right
                width:appearanceStatss.width - parent.width - 10
                height:parent.height
                text:charname
                onTextChanged: {charname = text}
                font.pixelSize: parent.height * 0.5
            }
        }

        /* Row {
            width:parent.width

            spacing: parent.width / 8

                Text {

                text:"Age: "
                 color:"black"
                 font.pixelSize: appearanceScreen.width / 20
                     TextField {
                         anchors.left:parent.right
                         width:parent.width
                         height:parent.height
                         text:charage
                         onTextChanged: {charage = text}
                         font.pixelSize: parent.height * 0.5
                     }

             }

                 Text {

                     text:"Sex: "
                     color:"black"
                     font.pixelSize: appearanceScreen.width / 20

                        TextField {
                          anchors.left:parent.right
                          width:parent.width
                          height:parent.height
                         text:charsex
                         onTextChanged: {charsex = text}
                         font.pixelSize: parent.height * 0.5
                 }
         }
    }
        Rectangle {
            width:parent.width
            height:3
            color:"black"
        } */

        Text {
            x:4
             font.pixelSize: parent.width / 16
            text: "Deity: "
            color: "black"

            TextField {
                anchors.left:parent.right
                width:appearanceStatss.width - parent.width - 10
                height:parent.height
                text:chargod
                onTextChanged: {chargod = text}
                font.pixelSize: parent.height * 0.5
            }

             }

        Text {
             x:4
              font.pixelSize: parent.width / 16
            text: "Homeland: "
            color: "black"

            TextField {
                anchors.left:parent.right
                width:appearanceStatss.width - parent.width - 10
                height:parent.height
                text:charht
                onTextChanged: {charht = text}
                font.pixelSize: parent.height * 0.5
            }
        }

        Rectangle {
            width:parent.width
            height:3
            color:"black"
        }

        Text {
            x:4
             font.pixelSize: parent.width / 16
            text: "Eyes: "
            color: "black"

            TextField {
                anchors.left:parent.right
                width:appearanceStatss.width - parent.width - 10
                height:parent.height
                text:chareyes
                onTextChanged: {chareyes = text}
                font.pixelSize: parent.height * 0.5
            }
            }

        Text {
            x:4
             font.pixelSize: parent.width / 16
            text: "Hair:  "
            color: "black"

            TextField {
                anchors.left:parent.right
                width:appearanceStatss.width - parent.width - 10
                height:parent.height
                text:charhair
                onTextChanged: {charhair = text}
                font.pixelSize: parent.height * 0.5
            }
            }



   /*  Text {

        text:" Height: "
        color:"black"
        font.pixelSize: parent.width / 16
        TextField {
            id:feet
            anchors.left:parent.right
            width:parent.width / 2
            height:parent.height
            text:charhf
            onTextChanged: {charhf = text}
            font.pixelSize: parent.height * 0.5

        }


        TextField {
            id:inches
            anchors.left:feet.right
            anchors.leftMargin: 10
            width:parent.width / 1.5
            height:parent.height
            text:charhi
            onTextChanged: {charhi = text}
            font.pixelSize: parent.height * 0.5

        }
    }

    Text {
        x:4
         font.pixelSize: parent.width / 16
        text: " Weight: "
        color: "black"

        TextField {
            anchors.left:parent.right
            width:appearanceStatss.width - parent.width - 10
            height:parent.height
            text:charWeight
            onTextChanged: {charWeight = text}
            font.pixelSize: parent.height * 0.5
        }

        } */





    Rectangle {
        width:parent.width
        height:3
        color:"black"
    }







    }

}


}

