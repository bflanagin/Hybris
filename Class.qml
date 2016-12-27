import QtQuick 2.3
import QtQuick.Window 2.2
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import Ubuntu.Components 1.2

GridView {
        id:classcards

        width:parent.width
        height:parent.height
        contentWidth: parent.width * classcardslist.count
        contentHeight: parent.height

        snapMode: GridView.SnapOneRow
        flow: GridView.FlowTopToBottom

        cellHeight: parent.height
        cellWidth: parent.width


            delegate: Cardlist{
                            width:characterSetup.width
                            height:characterSetup.height
                            backlayout:"info"

            }

            }
