
import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2
import QtQuick.LocalStorage 2.0

import "main.js" as Scripts
import "openseed.js" as Openseed


MainView {
        id:mV

    visible: true
    width: units.gu(70)
    height: units.gu(100)

    applicationName:"hybris.vagueentertainment"


    property string devId: "Vag-01001011"
    property string appId: "VagRpg-45454"
    property int gametype: 0

    property string userid:""
    property string datasync:""

    //variables

    property int str: 0
    property int dex: 0
    property int con: 0
    property int intel: 0
    property int wis: 0
    property int cha: 0

    property int strMod: 0
    property int dexMod: 0
    property int conMod: 0
    property int intMod: 0
    property int wisMod: 0
    property int chaMod: 0

    property string hitDie: ""


    property int hp: 0
    property int xp: 0
    property int charNL: 0
    property int charAC: 0
    property int charTAC: 0
    property int charFF: 0
    property int charlvl: 1

    property int charbab: 0


    property int charfs: 0
    property int charws: 0
    property int charrs: 0
    property int charCMB: 0
    property int charCMD: 0
    property int speed: 1
    property int charsize: 0

    property int aBonus: 0
    property int sBonus: 0
    property int sizeMod: 0
    property int natA: 0
    property int deflect: 0
    property int acMM: 0


    property string charalignment: "Neutral"

    property string charname : "No Body"
    property string charsex: ""
    property string chargod: "none"
    property string charht: "vagabond"

    property int charage: 0
    property int charhf: 0
    property int charhi: 0

    property string charhair: "Brown"
    property string chareyes: "Brown"
    property int charWeight: 0


    property string charclass: "No Class"
    property string charclassShort: "NC"
    property string race: "Raceless"

    property string pageTitle: ""
    property int currentcard: -1
    property int currentItem: -1
    property int roll: 0
    property int roll20: 0

    property string charskills: "none"

    property string charfeats: "none"
    property string charspells: "none"
    property string chararmor: "none"
    property string charweapons: "none"
    property string chargear: "none"
    property string charlang: "none"
    property string chardisc: "Generic Hero"

    property int charplat: 0
    property int chargold: 0
    property int charsilver: 0
    property int charcopper: 0

    property string weaponselected: ""
    property string spellselected: ""
    property string currentgame:"solo"


    property int critchance: 0
    property int critCheck: 0





    Rectangle {
        width:parent.width
        height:parent.height
        color:"black"

    }


Item {
     id:mainWindow
    width:parent.width
    height:parent.height

    Timer {interval: 1;running:true;repeat:false
        onTriggered:{Scripts.check_uid();
            if(userid.length > 1) {selectGame.state = "Active";console.log("Running game Select");} else {openSeedLogin.state ="Active";console.log("Running Openseed Connection");}
    }
    }



    Item {
        id:characterSetup
        width:parent.width
        height:parent.height
        visible: false


        Rectangle {
            id:titlebar
            y:0
            width:parent.width
            height:titlebarbase.y
            color:Qt.rgba(0.0, 0.0, 0, .5)
            MouseArea {
                anchors.fill:parent
            }
        }


        Text {
            id:title
            anchors.top:parent.top
            anchors.topMargin:20
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Character Setup"
            color: "white"
            font.pixelSize: parent.width / 20
             Text {
                 id:subtitle
                 anchors.horizontalCenter: parent.horizontalCenter
                 anchors.top:parent.bottom
                font.pixelSize: parent.width / 12
                 text:""
                 color:"gold"
             }

        }

            Backbutton {
                anchors.left:parent.left
                anchors.leftMargin: 20
                width:titlebar.height * 0.80
                height:titlebar.height * 0.80
                anchors.verticalCenter: titlebar.verticalCenter

                MouseArea {
                    anchors.fill:parent
                    onClicked: {currentcard = -1; switch(characterSetup.state) {
                               case "Alignment": mainWindow.state = "CharacterSelect";break;
                               case "Class": characterSetup.state = "Alignment";break;
                               case "Race": characterSetup.state = "Class";break;
                               case "Bio": characterSetup.state = "Race";break;
                               case "Finish": characterSetup.state = "Bio";break;

                        }
                    }

                }
            }
                Forwardbutton {
                    anchors.right:parent.right
                    anchors.rightMargin: 20
                    width:titlebar.height * 0.80
                    height:titlebar.height * 0.80
                    anchors.verticalCenter: titlebar.verticalCenter

                    MouseArea {
                        anchors.fill:parent
                        onClicked: {currentcard = -1; switch(characterSetup.state) {
                                   case "Bio": characterSetup.state = "Finish";break;
                                   case "Race": characterSetup.state = "Bio";Scripts.genStats();break;
                                   case "Class": characterSetup.state = "Race";break;
                                   case "Alignment": characterSetup.state = "Class";break;
                            }
                        }
                    }
            }




        Rectangle {
            id:titlebarbase
            color:"white"
            width:characterSetup.width

            height:3
            anchors.top:title.bottom
            anchors.topMargin: title.height
        }


        Bio {
            z:-1
            id:bioinfo
            visible:false
            //anchors.top:titlebarbase.bottom
            //anchors.topMargin: 10
            width:parent.width
            height:parent.height - title.height - 10
            //Timer { interval: 10; running:true; repeat: false
            //onTriggered:Scripts.genStats()
            //}
            //onVisibleChanged: {Scripts.loadSkills()}
        }

        Alignment {
            z:-1
            id:alignpick
            visible: false
            //anchors.top:titlebarbase.bottom
            //anchors.topMargin: 10
            width:parent.width
            height:parent.height - title.height - 10

            model: ListModel {
                id:aligncardslist

            }

           // Timer { interval: 10; running:true; repeat: false
           // onTriggered:Scripts.loadAlignment()
            //}
            onVisibleChanged: {if(alignpick.visible == true) {Scripts.loadAlignment()} }
        }

        Race {
            z:-1
            id:racepick
            visible: false
            //anchors.top:titlebarbase.bottom
            //anchors.topMargin: 10
            width:parent.width
            height:parent.height - title.height - 10

            model: ListModel {
                id:racecardslist

            }

            //Timer { interval: 10; running:true; repeat: false
            //onTriggered:Scripts.loadRace()
            //}
            onVisibleChanged: {if(racepick.visible == true) {Scripts.loadRace()} }

        }

        Class {
            z:-1
            id:classpick
            visible: false
            //anchors.top:titlebarbase.bottom
            //anchors.topMargin: 10
            width:parent.width
            height:parent.height - title.height - 10

            model: ListModel {
                id:classcardslist

            }

            //Timer { interval: 10; running:true; repeat: false
            //onTriggered:Scripts.loadClass()
            //}
            onVisibleChanged: {if(classpick.visible ==true) {Scripts.loadClass()} }

        }

        Finish {
            z:-1
            id:finish
            visible: false
            //y:titlebarbase.y
            width:parent.width / 1.08
            height:parent.height / 1.08


            //Timer { interval: 10; running:true; repeat: false
            //onTriggered:Scripts.loadClass()
            //}
        }

        states: [
        State {
                name:"Alignment"
                PropertyChanges {
                    target:alignpick
                    visible:true
                }
                PropertyChanges {
                    target:classpick
                    visible:false
                }
                PropertyChanges {
                    target:racepick
                    visible:false
                }
                PropertyChanges {
                    target:subtitle
                    text:"Alignment"
                }
                PropertyChanges {
                    target:characterSetup
                    visible:true
                }


            },
            State {
                    name:"Race"
                    PropertyChanges {
                        target:racepick
                        visible:true
                    }
                    PropertyChanges {
                        target:classpick
                        visible:false
                    }
                    PropertyChanges {
                        target:alignpick
                        visible:false
                    }
                    PropertyChanges {
                        target:subtitle
                        text:"Race"
                    }
                    PropertyChanges {
                        target:characterSetup
                        visible:true
                    }




                },
            State {
                    name:"Class"
                    PropertyChanges {
                        target:classpick
                        visible:true
                    }
                    PropertyChanges {
                        target:alignpick
                        visible:false
                    }
                    PropertyChanges {
                        target:racepick
                        visible:false
                    }
                    PropertyChanges {
                        target:subtitle
                        text:"Class"
                    }
                    PropertyChanges {
                        target:characterSetup
                        visible:true
                    }




                },
            State {
                    name:"Bio"
                    PropertyChanges {
                        target:classpick
                        visible:false
                    }
                    PropertyChanges {
                        target:alignpick
                        visible:false
                    }
                    PropertyChanges {
                        target:racepick
                        visible:false
                    }
                PropertyChanges {
                    target:bioinfo
                    visible:true
                }
                PropertyChanges {
                    target:subtitle
                    text:"Stats & Info"
                }
                PropertyChanges {
                    target:characterSetup
                    visible:true
                }

            },
                State {
                        name:"Finish"
                        PropertyChanges {
                            target:classpick
                            visible:false
                        }
                        PropertyChanges {
                            target:alignpick
                            visible:false
                        }
                        PropertyChanges {
                            target:racepick
                            visible:false
                        }
                    PropertyChanges {
                        target:bioinfo
                        visible:false
                    }
                    PropertyChanges {
                        target:finish
                        visible:true
                    }
                    PropertyChanges {
                        target:subtitle
                        text:"Finish"
                    }
                    PropertyChanges {
                        target:characterSetup
                        visible:true
                    }

                }

        ]

        state: "Alignment"

        Timer { interval: 500; running:true; repeat: false
            onTriggered: Scripts.openStore()
        }
 }

    PlayScreen {
        id:play
        z:-1
        visible:false
        width:parent.width
        height:parent.height

    }

    CharacterSelect {
        id:cselect
        z:-1
        visible:false
        width:parent.width
        height:parent.height

    }



    states: [

        State {
                name:"CharacterSelect"

                PropertyChanges {
                    target:characterSetup
                    visible:false
                }

            PropertyChanges {
                target:play
                visible:false
            }

            PropertyChanges {
                target:cselect
                visible:true
            }

            },

    State {
            name:"PlayScreen"

            PropertyChanges {
                target:characterSetup
                visible:false
            }

        PropertyChanges {
            target:play
            visible:true
        }

        },

        State {
                name:"CharacterSetup"

            PropertyChanges {
                target:play
                visible:false
            }
            PropertyChanges {
                target:characterSetup
                visible:true
            }


    }

    ]

    state: "CharacterSelect"


    }


GameSelect {
         id:selectGame
    width:parent.width * 0.80
    height:parent.height * 0.30
    anchors.centerIn: parent
}

OpenSeedLogin {
                id:openSeedLogin
    width:parent.width * 0.80
    height:parent.height * 0.60
    anchors.centerIn: parent
}

}
