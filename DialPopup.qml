import QtQuick 2.3
import QtQuick.Window 2.2

Item {
    id:popup
    property string number: "0"
    property string affects:""

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
        clip:true
        color:"black"


        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text:number
            font.pixelSize: parent.width / 3
            anchors.bottom:num789.top
            color:"white"

            clip:true
        }
        Image {
            anchors.fill:parent
            source:"img/Border.png"
        }

        Row {
            id:num789
            anchors.top:parent.top
            anchors.topMargin:parent.height * 0.26
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.038
            width:parent.width * 0.92
            height: parent.width * 0.28

            Repeater {

                 model:3
                Rectangle {
                      width:parent.width / 3
                      height:parent.height
                       color:"green"
                       border.color:"gold"
                       border.width:2

                       Text {
                           text:index + 7
                           anchors.centerIn: parent
                           font.pixelSize: parent.width * 0.80
                       }
                       MouseArea {
                           anchors.fill:parent
                           onClicked:{ if(parseInt(number) == 0) {number = index+7} else {number = number + (index+7)} }
                       }
                 }
             }
        }
        Row {
            id:num456
            anchors.top:num789.bottom

            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.038
            width:parent.width * 0.92
            height: parent.width * 0.28


            Repeater {

                 model:3
                Rectangle {
                      width:parent.width / 3
                      height:parent.height
                       color:"green"
                       border.color:"gold"
                       border.width:2

                       Text {
                           text:index + 4
                           anchors.centerIn: parent
                           font.pixelSize: parent.width * 0.80
                       }
                       MouseArea {
                           anchors.fill:parent
                           onClicked:{ if(parseInt(number) == 0) {number = index+4} else {number = number + (index+4)} }
                       }
                 }
             }
        }
        Row {
            id:num123
            anchors.top:num456.bottom
           // anchors.topMargin:parent.height * 0.40
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.038
            width:parent.width * 0.92
            height: parent.width * 0.28

            Repeater {

                 model:3
                Rectangle {
                      width:parent.width / 3
                     height:parent.height
                       color:"green"
                       border.color:"gold"
                       border.width:2

                       Text {
                           text:index + 1
                           anchors.centerIn: parent
                           font.pixelSize: parent.width * 0.80
                       }
                       MouseArea {
                           anchors.fill:parent
                           onClicked:{ if(parseInt(number) == 0) {number = index+1} else {number = number + (index+1)} }
                       }
                 }
             }
        }
        Rectangle {
                id:num0
              width:parent.width / 3.2
             height:parent.height * 0.18
             anchors.horizontalCenter: num123.horizontalCenter
             anchors.top:num123.bottom
             anchors.bottom:parent.bottom
             anchors.bottomMargin: parent.height * 0.04

               color:"green"
               border.color:"gold"
               border.width:2

               Text {
                   text:"0"
                   anchors.centerIn: parent
                   font.pixelSize: parent.width * 0.80

               }
               MouseArea {
                   anchors.fill:parent
                   onClicked:{if(parseInt(number) > 0) {number = number+"0"} }
               }
         }
        Rectangle {
                id:add
              width:parent.width / 3.3
             height:parent.height * 0.18
             anchors.right:num0.left
             anchors.top:num123.bottom
             anchors.bottom:parent.bottom
             anchors.bottomMargin: parent.height * 0.04

               color:"green"
               border.color:"gold"
               border.width:2

               Text {
                   text:"add"
                   anchors.centerIn: parent
                   font.pixelSize: parent.width * 0.60

               }
               MouseArea {
                   anchors.fill:parent
                   onClicked:{hp = hp + parseInt(number);popup.state = "InActive";number = "0"}
               }
         }
        Rectangle {
                id:sub
              width:parent.width / 3.3
             height:parent.height * 0.18
             anchors.left:num0.right
             anchors.top:num123.bottom
             anchors.bottom:parent.bottom
             anchors.bottomMargin: parent.height * 0.04

               color:"green"
               border.color:"gold"
               border.width:2

               Text {
                   text:"sub"
                   anchors.centerIn: parent
                   font.pixelSize: parent.width * 0.60

               }
               MouseArea {
                   anchors.fill:parent
                   onClicked:{hp = hp - parseInt(number);popup.state = "InActive";number = "0"}
               }
         }


       }


}
