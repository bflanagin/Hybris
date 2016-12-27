import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2

import QtQuick.LocalStorage 2.0


import "openseed.js" as Openseed
import "main.js" as Scripts


Item {

    Rectangle {
        anchors.fill:parent
        color:"black"
    }

    DialPopup {
                id:hpdial
                state:"InActive"
                affects:"hp"
                width:parent.width * 0.80
                height:parent.height * 0.90
                }

    ActionPopUp {
                id:attackOptions
                state:"InActive"
                list:"weapons"
                width:parent.width * 0.80
                height: parent.height * 0.30
    }
    ActionPopUp {
                id:castOptions
                state:"InActive"
                list:"spells"
                width:parent.width * 0.80
                height: parent.height * 0.30
    }

    RollPopUp {
            id:attackGo
            state:"InActive"
            width:parent.width * 0.80
            height:parent.height * 0.90
    }
    RollPopUp {
            id:castingGo
            state:"InActive"
            width:parent.width * 0.80
            height:parent.height * 0.90
    }
    RollPopUp {
            id:savingThrowGo
            state:"InActive"
            width:parent.width * 0.80
            height:parent.height * 0.90
    }

    ItemPopUp {
        id:itemsSelect
        state:"InActive"
        width:parent.width * 0.80
        height:parent.height * 0.90
    }


    SkillsPopup {
        id:skillsSelect
        state:"InActive"
        width:parent.width * 0.80
        height:parent.height * 0.90
    }


    FeatsPopup {
        id:featsSelect
        state:"InActive"
        width:parent.width * 0.80
        height:parent.height * 0.90
    }


Rectangle {
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top:parent.top
   // anchors.topMargin: parent.height * 0.02
    color:"black"
    border.width:2
    border.color:"darkgray"
    width:parent.width / 2
    height:characterName.height
    z:2


Text {
    id:characterName
    text:charname
    font.pixelSize: parent.width / (charname.length * 1.2)
    anchors.horizontalCenter: parent.horizontalCenter
    horizontalAlignment: Text.horizontalCenter
    color:"white"
}

}

Rectangle {
    id:hpBorder
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top:parent.top
    anchors.topMargin:80
    width:parent.height * 0.50
    height:parent.height * 0.50
    radius: width*0.5
    border.width:4
    border.color:"white"
    color:"green"
    clip:true


    Text {
        text:hp
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.verticalCenter
        color:"white"
        font.pixelSize: parent.width / 5

    }

    Image {
        anchors.fill:parent
        source:"img/glass.png"
    }


    MouseArea {
        anchors.fill:parent
        onClicked: { hpdial.state = "Active"
        }
    }

}

Rectangle {
    id:acBorder
    z:2
    anchors.right:hpBorder.left
    anchors.rightMargin:-1 * (parent.width * 0.18)
    anchors.bottom:hpBorder.top
    anchors.bottomMargin:-1 * (parent.height * 0.16)
    width:hpBorder.width / 3
    height:hpBorder.width /3
    border.width:3
    border.color:"white"
    color:"lightgray"
    radius:width*0.5
    clip:true



    Text {
        text:charAC
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.verticalCenter
        color:"white"
        font.pixelSize: parent.width / 5

    }

    Image {
        anchors.fill:parent
        source:"img/glass.png"
    }
}

Rectangle {
    id:ffBorder
    z:1
    anchors.right:hpBorder.left
    anchors.rightMargin:-1 * (parent.width * 0.085)
    anchors.bottom:acBorder.bottom
    anchors.bottomMargin:-1 * (parent.height * 0.08)
    width:acBorder.width / 1.3
    height:acBorder.width /1.3
    border.width:3
    border.color:"white"
    color:"gray"
    radius:width*0.5
    clip:true



    Text {
        text:charFF
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.verticalCenter
        color:"white"
        font.pixelSize: parent.width / 5

    }

    Image {
        anchors.fill:parent
        source:"img/glass.png"
    }
}

Rectangle {
    id:touchBorder
    z:0
    anchors.right:hpBorder.left
    anchors.rightMargin: -1 * (parent.width * 0.08)
    anchors.bottom:ffBorder.bottom
    anchors.bottomMargin:-1 * (parent.height * 0.08)
    width:acBorder.width / 1.5
    height:acBorder.width /1.5
    border.width:3
    border.color:"white"
    color:"gray"
    radius:width*0.5
    clip:true



    Text {
        text:charTAC
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.verticalCenter
        color:"white"
        font.pixelSize: parent.width / 5

    }

    Image {
        anchors.fill:parent
        source:"img/glass.png"
    }
}

Rectangle {
    id:nlBorder
    z: -1
    anchors.left:hpBorder.right
    anchors.leftMargin: -1 * (parent.width * 0.25)
    anchors.bottom:hpBorder.bottom
    anchors.bottomMargin:-50
    width:hpBorder.width / 2.5
    height:hpBorder.width / 2.5
    border.width:3
    border.color:"white"
    color:"gold"
    radius:width*0.5
    clip:true



    Text {
        text:charNL
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.verticalCenter
        color:"white"
        font.pixelSize: parent.width / 5

    }

    Image {
        anchors.fill:parent
        source:"img/glass.png"
    }
}

Rectangle {
    id:skillSelect
    width:parent.width * 0.05
    height:parent.height * 0.10
    color:"silver"
    anchors.right:parent.right
    anchors.top:parent.top
    anchors.topMargin:characterName.height
    border.color:"white"
    border.width:2

    Text {
        text:if(skillsSelect.state == "InActive") { return "Skills";} else { return "Dismiss";}
        anchors.centerIn: parent
        rotation:270
        font.pixelSize: parent.width * 0.80
    }

    MouseArea {
        anchors.fill:parent
        onClicked: {if(skillsSelect.state == "InActive") {skillsSelect.state = "Active";} else {skillsSelect.state = "InActive";} }

    }
}

Rectangle {
    id:featSelect
    width:parent.width * 0.05
    height:parent.height * 0.10
    color:"silver"
    anchors.right:parent.right
    anchors.top:parent.top
    anchors.topMargin:skillSelect.height + characterName.height + 10
    border.color:"white"
    border.width:2

    Text {
        text:if(featsSelect.state == "InActive") {return "Feats"; } else { return "Dismiss";}
        anchors.centerIn: parent
        rotation:270
        font.pixelSize: parent.width * 0.80
    }

    MouseArea {
        anchors.fill:parent
        onClicked: {if(featsSelect.state == "InActive") {featsSelect.state = "Active";} else {featsSelect.state = "InActive";} }

    }

}

Rectangle {
    id:itemSelect
    width:parent.width * 0.40
    height:parent.height * 0.05
    anchors.horizontalCenter: parent.horizontalCenter
    y:parent.height - height
    color:"silver"
    border.color:"white"
    border.width:2

    Text {
        anchors.centerIn: parent
        text:{if(itemsSelect.state == "InActive") {return "Items";} else {return "Dismiss";} }
        font.pixelSize: parent.height * 0.80

    }
    MouseArea {
        anchors.fill:parent
        onClicked: {if(itemsSelect.state == "InActive") {itemsSelect.state = "Active";} else {itemsSelect.state = "InActive";} }

    }
}

GenButton {
    id:wsButton
    anchors.top:hpBorder.bottom
    anchors.topMargin: -1 * (parent.height * 0.05)
    anchors.right:hpBorder.left
    width:parent.width * 0.12
    height:parent.width * 0.12
    buttonText:"WS"

    MouseArea {
        anchors.fill:parent
        onClicked: {roll=Scripts.saveRoll("ws");savingThrowGo.state = "Save"}
    }
}
GenButton {
    id:fsButton
    anchors.top:wsButton.bottom
    anchors.left:wsButton.left
    width:parent.width * 0.12
    height:parent.width * 0.12
    buttonText:"FS"

    MouseArea {
        anchors.fill:parent
        onClicked: {roll=Scripts.saveRoll("fs");savingThrowGo.state = "Save"}
    }
}
GenButton {
    id:rsButton
    anchors.top:wsButton.bottom
    anchors.left:fsButton.right
    width:parent.width * 0.12
    height:parent.width * 0.12
    buttonText:"RS"

    MouseArea {
        anchors.fill:parent
        onClicked: {roll=Scripts.saveRoll("rs");savingThrowGo.state = "Save"}
    }
}


Rectangle {
    id:attack
    width:parent.width * 0.20
    height:parent.width * 0.20
    anchors.left: parent.left
    y:parent.height - height
    color:"silver"
    border.color:"white"
    border.width:2

    Text {
        text:"A"
        anchors.centerIn: parent
        font.pixelSize: parent.width
    }

    MouseArea {
        anchors.fill:parent


        onClicked:{roll20=Scripts.attackRoll();roll=Scripts.diceRoll("1d8");attackGo.state = "Active"}
        onPressAndHold: {castOptions.state = "InActive",attackOptions.state = "Active"}
    }
}

Rectangle {
    id:cast
    width:parent.width * 0.20
    height:parent.width * 0.20
    anchors.right: parent.right
    y:parent.height - height
    color:"silver"
    border.color:"white"
    border.width:2

    Text {
        text:"C"
        anchors.centerIn: parent
        font.pixelSize: parent.width
    }

    MouseArea {
        anchors.fill:parent
        onClicked:{roll20=Scripts.attackRoll();roll=Scripts.diceRoll("1d8");castingGo.state = "Active"}
        onPressAndHold: {attackOptions.state = "InActive",castOptions.state = "Active"}
    }

}

}
