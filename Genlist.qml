import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2

Flipable {
    id:item
    property bool flipped: false
    property string type: ""
    property string addto: ""


front :Rectangle {
        width:parent.width
        height:parent.height
        color:"white"
        border.width:4
        border.color:highlight
        radius: 20
        id:listfront
        clip:true

            Column {
                anchors.top:parent.top
                anchors.topMargin: 10
                spacing: 10
                width:parent.width * 0.80
                clip:true
                Text {
                   text:name
                   // color:"white"
                  anchors.left:parent.left
                 anchors.leftMargin:listfront.width * 0.02
                 font.pixelSize: listfront.width / 20
                }
                 Text {
                     width:parent.width
                     text:Discription
                     anchors.left:parent.left
                     anchors.leftMargin:listfront.width * 0.02
                     font.pixelSize: listfront.width * 0.03
                     wrapMode:Text.WordWrap
                 //color:"white"
                 }
            }

            Column {
                anchors.top:parent.top
                anchors.topMargin:parent.height * 0.05
                 anchors.right:parent.right
                 anchors.rightMargin:listfront.width * 0.03

                 Text {
                    text:info1
                    font.pixelSize: listfront.width * 0.037
                 }
                 Text {
                   text:info2
                   font.pixelSize: listfront.width * 0.037
                 }
                 Text {
                   text:info3
                   font.pixelSize: listfront.width * 0.037
                   }
                 Text {
                    text:info4
                    font.pixelSize: listfront.width * 0.037
                 }
            }


        }

back:Rectangle {
            width:parent.width
            height:parent.height
            color:"black"
            border.width:4
            border.color:highlight
            radius: 20
            id:listback
            clip:true

                Column {
                    anchors.top:parent.top
                    anchors.topMargin: 10
                    spacing: 10
                    width:parent.width * 0.80

                    Text {
                       text:name
                        color:"white"
                      anchors.left:parent.left
                     anchors.leftMargin:listback.width * 0.02
                     font.pixelSize: listback.width / 20
                    }
                     Text {
                         text:Discription
                         anchors.left:parent.left
                         anchors.leftMargin:listback.width * 0.02
                         font.pixelSize: listback.width * 0.03
                     color:"white"
                     }
                }

                Rectangle {
                    //anchors.top:parent.top
                    //anchors.topMargin:parent.height * 0.05
                    anchors.verticalCenter: listback.verticalCenter
                     anchors.right:parent.right
                     anchors.rightMargin:listback.width * 0.03
                        radius: 10
                         width:parent.height / 2
                         height:parent.height / 2

                        MouseArea {
                            anchors.fill:parent
                            onClicked:{ switch(type) {
                                            case "add": {switch(addto) {
                                                            case "armor":console.log("adding to armor");chararmor= chararmor+","+name;break;
                                                            case "weapon": console.log("adding to weapon");charweapons= charweapons+","+name;break;
                                                            case "feat":console.log("adding to feats");charfeats= charfeats+","+name;break;
                                                            case "spell": console.log("adding to spells");charspells= charspells+","+name;break;}
                                                            break;}
                                            case "append":console.log("append");charskills=charskills+","+name; break;
                                }
                            }
                        }

                }

}

transform: Rotation {
    id: rotation
    origin.x: item.width /2
    origin.y: item.height /2
    axis.x: 1;axis.y: 0;axis.z: 0
    angle:0

}

states: State {
    name:"back"
    PropertyChanges { target:rotation; angle: 180 }
    when:currentItem == index
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
                width:if (currentItem != index) { parent.width }
                height:if (currentItem != index) { parent.height }
                onClicked: {currentItem = index;item.flipped = !item.flipped}
}


}
