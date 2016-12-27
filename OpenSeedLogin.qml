import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2
import QtQuick.LocalStorage 2.0

import "main.js" as Scripts
import "openseed.js" as OpenSeed


Item {

    id: firstrun

    anchors.margins: 50

    property string osUsername: ""
    property string osEmail: ""

    states: [
        State {
            name: "InActive"
            PropertyChanges {
                target: firstrun
                //x:0
                //y:parent.height
                z:0
                visible:false
            }
        },
        State {
            name: "Active"
            PropertyChanges {
                target: firstrun
                //x:0
                //y:0
                z:3
                visible:true
            }
        }

    ]
    state: "InActive"

    Rectangle {
                //anchors.fill:parent
                //anchors.margins: 100
                x: parent.width * 0.1
                y: parent.height * 0.1
                width: parent.width * 0.8
                height: width * 1
                radius: 20
                border.width:1
                border.color:"black"
                color:"white"
                clip: true

                 id: dialogue
                 Text {
                 id:diaTitle
                 anchors.top:parent.top
                 anchors.horizontalCenter:parent.horizontalCenter
                 anchors.topMargin: 5
                 text: "Connect to OpenSeed"
                 horizontalAlignment: Text.AlignHCenter
                 color:"black"
                    }
                 Text {

                 id:diaSubTitle
                 anchors.top:diaTitle.bottom
                 anchors.topMargin: 5
                 anchors.horizontalCenter: parent.horizontalCenter
                 width:parent.width - 10
                 text: "WayFinder uses the Openseed network for app and user authentication."
                 wrapMode:Text.Wrap
                 horizontalAlignment: Text.AlignHCenter
                 color:"black"
                    }


                TextField{
                     id:osUsernameField
                     anchors.top:diaSubTitle.bottom
                     anchors.topMargin:20
                     anchors.horizontalCenter: parent.horizontalCenter
                     width:parent.width - 10
                     placeholderText: "User Name"
                     horizontalAlignment: Text.AlignHCenter
                     text:osUsername

                 }
                 TextField{
                     id:osEmailField
                     anchors.top:osUsernameField.bottom
                     anchors.topMargin: 20
                      anchors.horizontalCenter: parent.horizontalCenter
                      width:parent.width - 10
                     placeholderText: "example@email.com"
                    horizontalAlignment: Text.AlignHCenter
                     text:osEmail

                 }

                Row {
                    spacing: 10
                    anchors.bottom:parent.bottom
                    anchors.bottomMargin:10
                    anchors.horizontalCenter: parent.horizontalCenter
                 Button {
                     text: "Okay"
                     onClicked: {OpenSeed.oseed_auth(osUsernameField.text,osEmailField.text);

                                         //OpenSeed.datasync(userid);
                                        //Scripts.load_Card();
                                         //OpenSeed.retrieve_data(userid);

                                        firstrun.state = "close";
                     }

                 }
                 Button {
                     text: "Cancel"
                     onClicked: firstrun.state = "close"
                 }
                }

             }

}
