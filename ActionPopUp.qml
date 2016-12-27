import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2
import QtQuick.LocalStorage 2.0

import "main.js" as Scripts
import "openseed.js" as Openseed



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
        anchors.fill:parent
    }

    GridView {
        anchors.centerIn: parent
        width:parent.width * 0.90
        height:parent.height * 0.80
        contentWidth: parent.width / 5
       // contentHeight: parent.height


        delegate: PFActionList {
                    width:parent.width
                   height:parent.height
        }

        model: ListModel {
            id:actionlist

        }

    }

    Image {
        anchors.fill:parent
        source:"img/Border.png"
    }


}




