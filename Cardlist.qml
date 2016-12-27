import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2

import QtQuick.LocalStorage 2.0

import "main.js" as Scripts


        Flipable {
                id:infocard
                property string frontborder: "img/"+title1+".png"
                property string backlayout:""
                property string frontlayout:""

                property bool flipped: false
                property string selected: ""


            width:parent.width
            height:parent.height

            front: Item {

                states: [
                    State {
                        name:"CharacterSetup"
                        PropertyChanges {
                            target:raceimg
                            source:"img/"+title1+".png"
                        }
                        PropertyChanges {
                             target:classimg
                             source:"img/"+title1+".png"
                            visible:false
                            }
                        PropertyChanges {
                             target:alignimg
                             source:"img/"+title1+".png"
                            visible:false
                            }


                    },
                    State {
                        name:"CharacterSelect"

                        PropertyChanges {
                            target:raceimg
                            source:"img/"+racetype+".png"
                        }
                        PropertyChanges {
                             target:classimg
                             source:"img/"+classtype+".png"
                            visible:true
                            }
                        PropertyChanges {
                             target:alignimg
                             source:"img/"+aligntype+".png"
                            visible:true
                            }

                    }

                ]

                state:frontlayout

                width: parent.width / 1.16
                height:parent.height / 1.16
                anchors.centerIn: parent
                Rectangle {
                width: parent.width
                height:parent.height
                //color: cardColor
                color:"black"
                border.width:1
                border.color:"darkgray"

                Image {
                    id:raceimg
                    visible:true
                    width:parent.width * 0.99
                    height:parent.height * 0.99
                    anchors.centerIn: parent
                    source:"img/"+title1+".png"
                }

                Image {
                    id:alignimg
                    visible:false
                    width:parent.width * 0.99
                    height:parent.height * 0.99
                    anchors.centerIn: parent
                    source:"img/"+title1+".png"

                    Image {
                        id:classimg
                        visible:false
                        width:parent.width * 0.50
                        height:parent.height * 0.55
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top:parent.top
                        anchors.topMargin: 75

                        source:"img/"+title1+".png"
                        fillMode: Image.PreserveAspectFit
                    }
                }


            }
            Text {
                text:title1
                color:"white"
                font.pixelSize: 40
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom:parent.bottom
                anchors.bottomMargin:100

            }
            Text {
                text:title1
                color:"white"
                font.pixelSize: 40
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom:parent.bottom
                anchors.bottomMargin:100

            }
            }

            back:
                Item {

                states: [
                    State {
                        name: "stats"
                        PropertyChanges {target:stattop;visible:true}

                    },
                    State {
                        name: "info"
                        PropertyChanges {target:infotop;visible:true}

                    },
                    State {
                        name: "none"
                        PropertyChanges {target:notop;visible:true}

                    },
                    State {
                      name: "CharacterSelect"
                      PropertyChanges {target:charstats;visible:true}

                    }



                ]
                state:backlayout

                width: parent.width / 1.16
                height:parent.height / 1.16
                anchors.centerIn: parent

                Rectangle {
                    width: parent.width
                    height:parent.height
                    color: "white"
                    border.width: 2
                   border.color: "darkgray"

                   Image {
                       width:parent.width * 0.99
                       height:parent.height * 0.99
                       anchors.centerIn: parent
                       source:"img/Border.png"
               }

                }

                Item {
                    width: parent.width * 0.85
                    height:parent.height * 0.92
                    anchors.centerIn: parent
                    id:stattop
                    visible:false
                    clip:true

                Text {
                    id:stattitle
                    anchors.top:parent.top
                    anchors.topMargin:10
                    anchors.left:parent.left
                    anchors.leftMargin: 6

                    text:"Stats:"
                    font.pixelSize: 20
                }
                Row {
                    id:statlist
                    anchors.top: stattitle.bottom
                    anchors.topMargin: 3
                    anchors.left:parent.left
                    anchors.leftMargin: 10
                    spacing: 20

                    Text{
                        text:"STR: "
                        font.pixelSize: 20
                        Text { anchors.left:parent.right;text:strmod;font.pixelSize: parent.height;anchors.verticalCenter: parent.verticalCenter }
                    }
                    Text{
                        text:"DEX: "
                      font.pixelSize: 20
                        Text { anchors.left:parent.right;text:dexmod;font.pixelSize: parent.height;anchors.verticalCenter: parent.verticalCenter }
                    }
                    Text{
                        text:"CON: "
                       font.pixelSize: 20
                        Text { anchors.left:parent.right;text:conmod;font.pixelSize: parent.height;anchors.verticalCenter: parent.verticalCenter }
                    }
                    Text{
                        text:"INT: "
                     font.pixelSize: 20
                        Text { anchors.left:parent.right;text:intmod;font.pixelSize: parent.height;anchors.verticalCenter: parent.verticalCenter }
                    }
                    Text{
                        text:"WIS: "
                       font.pixelSize: 20
                        Text { anchors.left:parent.right;text:wismod;font.pixelSize: parent.height;anchors.verticalCenter: parent.verticalCenter }
                    }
                    Text{
                        text:"CHA: "
                       font.pixelSize: 20
                        Text { anchors.left:parent.right;text:chamod;font.pixelSize: parent.height;anchors.verticalCenter: parent.verticalCenter }
                    }

                }

                Rectangle {
                    id:statsbottom
                    width:parent.width
                    height:5
                    color:"black"
                    anchors.top:statlist.bottom
                    anchors.topMargin:5
                }
                Flickable {
                    anchors.top:statsbottom.bottom
                    anchors.topMargin: 5
                    clip:true
                    width:parent.width
                    height:parent.height
                    flickableDirection: Flickable.VerticalFlick
                    contentHeight:discript.height

                Text {
                    id:discript

                    x: 10


                    width:parent.width - 20
                    text: discription
                    font.pixelSize: parent.width * 0.05
                    wrapMode: Text.WordWrap
                }

                }


            }



            Item {
                width: parent.width * 0.85
                height:parent.height * 0.92
                anchors.centerIn: parent
                id:infotop
                visible:false
                clip:true

            Text {
                id:infotitle
                anchors.top:parent.top
                anchors.topMargin:10
                anchors.left:parent.left
                anchors.leftMargin: 6

                text:"Info:"
                font.pixelSize: 20
            }
            Row {
                id:infolist
                anchors.top: infotitle.bottom
                anchors.topMargin: 3
                anchors.left:parent.left
                anchors.leftMargin: 10

                spacing: 16


            }

            Rectangle {
                id:infobottom
                width:parent.width
                height:5
                color:"black"
                anchors.top:infolist.bottom
                anchors.topMargin:5
            }

            Flickable {
                anchors.top:infobottom.bottom
                anchors.topMargin: 5
                clip:true
                width:parent.width
                height:parent.height
                flickableDirection: Flickable.VerticalFlick
                contentHeight:infodiscript.height

            Text {
                id:infodiscript

                x: 10


                width:parent.width - 20
                text: discription
                font.pixelSize: parent.width * 0.05
                wrapMode: Text.WordWrap
            }

            }


        }
            Item {
                width: parent.width * 0.85
                height:parent.height * 0.92
                anchors.centerIn: parent
                id:notop
                visible:false
                clip:true

                Flickable {
                    anchors.top:parent.top
                    anchors.topMargin: 5
                    clip:true
                    width:parent.width
                    height:parent.height
                    flickableDirection: Flickable.VerticalFlick
                    contentHeight:notopdiscript.height

                Text {
                    id:notopdiscript

                    x: 10


                    width:parent.width - 20
                    text: discription
                    font.pixelSize: parent.width * 0.05
                    wrapMode: Text.WordWrap
                }

                }


        }

            Item {
                id:charstats
                width: parent.width * 0.85
                height:parent.height * 0.92
                anchors.centerIn: parent
                visible:false
                clip:true

                Item {
                    id:charvars
                    anchors.left:parent.left
                    anchors.top:parent.top
                    anchors.topMargin: parent.height * 0.02
                    width: parent.width / 2
                    clip:true
                    height:parent.height / 3

                    Text {
                        text:"HP: "
                        font.pixelSize: charstats.width / 8

                   Text {
                     anchors.left:parent.right
                     id:hppulled
                        text:hp
                        font.pixelSize: charstats.width / 8

                    }
                    }
                    Text {
                        y:hppulled.height
                        text:"AC: "
                        font.pixelSize: charstats.width / 12

                   Text {
                     anchors.left:parent.right
                     id:acpulled
                        text:charAC
                        font.pixelSize: charstats.width / 12

                    }
                    }
                    Text {
                        y:acpulled.height + hppulled.height
                        text:"FF: "
                        font.pixelSize: charstats.width / 12

                   Text {
                     anchors.left:parent.right
                     id:ffpulled
                        text:charFF
                        font.pixelSize: charstats.width / 12

                    }
                    }
                    Text {
                        y:acpulled.height + hppulled.height + ffpulled.height
                        text:"Touch: "
                        font.pixelSize: charstats.width / 12

                   Text {
                     anchors.left:parent.right
                     id:tacpulled
                        text:charTAC
                        font.pixelSize: charstats.width / 12

                    }
                    }


                }

                Item {
                    anchors.top:parent.top
                    anchors.topMargin:parent.height * 0.02
                    anchors.right:parent.right
                    width:parent.width / 2
                    height:parent.height / 3
                    clip:true
                    id:statsview

                    Column {
                        //spacing: 10
                    Text {
                        anchors.left:parent.left
                        text:"Str: "
                        font.pixelSize: statsview.height * 0.12

                        CharProgressBar{
                            anchors.left:parent.right
                            currentVal: pulledstr
                            width:statsview.width
                             height:parent.height

                        }

                    }

                    Text {
                        anchors.left:parent.left
                        text:"Dex: "
                        font.pixelSize:statsview.height * 0.12

                        CharProgressBar{
                            anchors.left:parent.right
                            currentVal: pulleddex
                             width:statsview.width
                              height:parent.height
                        }

                    }

                    Text {
                        anchors.left:parent.left
                        text:"Con: "
                        font.pixelSize: statsview.height * 0.12

                        CharProgressBar{
                            anchors.left:parent.right
                            currentVal: pulledcon
                             width:statsview.width
                             height:parent.height
                        }

                    }
                    Text {
                        anchors.left:parent.left
                        text:"Wis: "
                        font.pixelSize: statsview.height * 0.12

                        CharProgressBar{
                            anchors.left:parent.right
                            currentVal: pulledwis
                             width:statsview.width
                             height:parent.height
                        }

                    }
                    Text {
                        anchors.left:parent.left
                        text:"Int: "
                        font.pixelSize: statsview.height * 0.12

                        CharProgressBar{
                            anchors.left:parent.right
                            currentVal: pulledintel
                             width:statsview.width
                             height:parent.height
                        }

                    }
                    Text {
                        anchors.left:parent.left
                        text:"Cha: "
                        font.pixelSize: statsview.height * 0.12

                        CharProgressBar{
                            anchors.left:parent.right
                            currentVal: pulledcha
                             width:statsview.width
                             height:parent.height
                        }

                    }

                }
            }
            Rectangle {
                width:parent.width
                height:parent.height * 0.005
                y:charvars.height
                id:statsborder
                color:"black"
            }

            Row {
                anchors.top:statsborder.bottom
                anchors.topMargin:10
                //anchors.left:parent.left
               spacing: parent.width / 7
                width:parent.width
                id:aswh

                Text{
                    text:"Age:"
                    font.pixelSize: statsview.height * 0.065
                    Text {
                        anchors.left:parent.right
                        text:pulledage
                        font.pixelSize: statsview.height * 0.065
                    }

                }
                Text{
                    text:"Sex: "
                    font.pixelSize: statsview.height * 0.065
                    Text {
                        anchors.left:parent.right
                        font.pixelSize: statsview.height * 0.065

                        text:switch (pulledsex) {
                             case 1: {return "Female";break;}
                             case 0: {return "Male";break;}
                             case 3: {return "Depends";break;}
                             default: {return "Male";break;}
                             }
                    }

                }
                Text{
                    text:"Weight: "
                    font.pixelSize: statsview.height * 0.065
                    Text {
                        anchors.left:parent.right
                        text:pulledweight
                        font.pixelSize: statsview.height * 0.065
                    }

                }
                Text{
                    text:"Height: "
                    font.pixelSize: statsview.height * 0.065
                    Text {
                        anchors.left:parent.right
                        text:pulledheight
                        font.pixelSize: statsview.height * 0.065
                    }

                }

            }
            Row {
                anchors.top:aswh.bottom
                anchors.topMargin:10
                //anchors.left:parent.left
               spacing: parent.width / 7
                width:parent.width
                id:hehd

                Text{
                    text:"Hair: "
                    font.pixelSize: statsview.height * 0.065

                    Text {
                        anchors.left:parent.right
                        text:pulledhair
                        font.pixelSize: statsview.height * 0.065
                    }

                }
                Text{
                    text:"Eyes: "
                    font.pixelSize: statsview.height * 0.065
                    Text {
                        anchors.left:parent.right
                        text:pulledeye
                        font.pixelSize: statsview.height * 0.065
                    }

                }
                Text{
                    text:"Home: "
                    font.pixelSize: statsview.height * 0.065
                    Text {
                        anchors.left:parent.right
                        text:pulledht
                        clip:true
                        width:parent.width
                        font.pixelSize: statsview.height * 0.065
                    }

                }
                Text{
                    text:"Deity: "
                    font.pixelSize: statsview.height * 0.065
                    Text {
                        anchors.left:parent.right
                        text:pulledgod
                        font.pixelSize: statsview.height * 0.065
                    }

                }
            }

            Rectangle {
                width:parent.width
                height:parent.height * 0.005
                anchors.top:hehd.bottom
                anchors.topMargin:15
                id:discriptbottom
                color:"black"
            }

            }


        }

            transform: Rotation {
                id: rotation
                origin.x: infocard.width /2
                origin.y: infocard.height /2
                axis.x: 0;axis.y: 1;axis.z: 0
                angle:0

            }

            states: State {
                name:"back"
                PropertyChanges { target:rotation; angle: 180 }
                when:currentcard == index
            }

            transitions: Transition {

                NumberAnimation {
                    target: rotation
                    property: "angle"
                    duration: 400
                    //easing.type: Easing.InOutQuad
                }
            }

            MouseArea {
                width:parent.width
                height:parent.height
                onClicked: {currentcard = index;infocard.flipped = !infocard.flipped;
                            switch(characterSetup.state) {
                            case "Class": charclass = title1;hitDie = hitdie;charclassShort = Short;break;
                            case "Race": race = title1;strMod = strmod;dexMod = dexmod;conMod = conmod;intMod = intmod;wisMod = wismod;chaMod = chamod;sizeMod = charSize;
                                            break;
                            case "Alignment": charalignment = title1;break;
                            }
                            if(frontlayout == "CharacterSelect") {
                                hp=pulledhp


                                charname=title1

                                sizeMod =pulledsizeMod
                                str=pulledstr
                                dex=pulleddex
                                con=pulledcon
                                intel=pulledintel
                                wis=pulledwis
                                cha=pulledcha
                                strMod = pulledstrMod
                                dexMod = pulleddexMod
                                conMod = pulledconMod
                                intMod = pulledintelMod
                                wisMod =pulledwisMod
                                chaMod = pulledchaMod
                                charAC = Scripts.genArmor("AC")
                                charTAC = Scripts.genArmor("TAC")
                                charFF = Scripts.genArmor("FF")


                            }

                }


            }

        }


