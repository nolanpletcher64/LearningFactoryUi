import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import io.qt.examples.backend 1.0

ApplicationWindow {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Learning Factory Dashboard ")

    BackEnd {
        id: backend
    }

    // Bottom toolbar
    footer: ToolBar {
        RowLayout {
            anchors.fill: parent
            Label {
                id: status
                text: "  MiR100 Status:   " + "Not Busy"
                horizontalAlignment: Qt.AlignLeft
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }

            ToolButton {
                id: start
                text: qsTr("Start Queue")

                background: Rectangle {
                    implicitHeight: 50
                    implicitWidth: 100
                    color: "darkseagreen"
                }
            }

            ToolButton {
                id: stop
                text: qsTr("Stop Queue")

                background: Rectangle {
                    implicitHeight: 50
                    implicitWidth: 100
                    color: "tomato"
                }
            }
        }
    }

    // Top tabbar with 4 pages
    menuBar: TabBar {
        id: bar

        TabButton {
            text: qsTr("Home")
        }
        TabButton {
            text: qsTr("History")
        }
        TabButton {
            text: qsTr("Inventory")
        }
        TabButton {
            text: qsTr("Map")
        }
    }
    property string newLoc;
    property string newBox;

    property variant slot1: {1:empty,2:empty,3:empty,4:empty,5:empty,6:empty,7:empty,8:empty};
    property variant slot2: {1:blv,2:empty,3:empty,4:empty,5:empty,6:empty,7:empty,8:empty,9:empty,10:empty,11:empty,12:empty,13:empty,14:empty,15:empty,16:empty};
    property variant slot3: {1:rv,2:empty,3:empty,4:empty,5:empty,6:empty,7:empty,8:empty,9:empty,10:empty,11:empty,12:empty,13:empty,14:empty,15:empty,16:empty};

    property variant fslot1: {1:empty,2:empty,3:empty,4:empty,5:empty,6:empty,7:empty,8:empty};
    property variant fslot2: {1:blv,2:empty,3:empty,4:empty,5:empty,6:empty,7:empty,8:empty,9:empty,10:empty,11:empty,12:empty,13:empty,14:empty,15:empty,16:empty};
    property variant fslot3: {1:rv,2:empty,3:empty,4:empty,5:empty,6:empty,7:empty,8:empty,9:empty,10:empty,11:empty,12:empty,13:empty,14:empty,15:empty,16:empty};

    property Item test;
    Item {
        id:empty
        state:'empty'
    }
    Item {
        id:wtri
        state: 'wtri'
        x:50
        y:500
    }
    Item {
        id:btri
        state: 'btri'
        x:165
        y:500
    }
    Item {
        id:bltri
        state: 'bltri'
        x:70
        y:500
    }
    Item {
        id:rtri
        state: 'rtri'
        x:70
        y:500
    }
    Item {
        id:wv
        state: 'wv'
        x:70
        y:500
    }
    Item {
        id:bv
        state: 'bv'
        x:70
        y:1375
    }
    Item {
        id:blv
        state: 'blv'
        x:70
        y:1375
    }
    Item {
        id:rv
        state: 'rv'
        x:70
        y:1375
    }
    Item {
        id:wcir
        state: 'wcir'
        x:70
        y:1375
    }
    Item {
        id:bcir
        state: 'bcir'
        x:70
        y:1375
    }
    Item {
        id:blcir
        state: 'blcir'
        x:70
        y:1375
    }
    Item {
        id:rcir
        state: 'rcir'
        x:70
        y:1375
    }
    Item {
        id:wsqu
        state: 'wsqu'
        x:70
        y:1375
    }
    Item {
        id:bsqu
        state: 'bsqu'
        x:70
        y:1375
    }
    Item {
        id:blsqu
        state: 'blsqu'
        x:70
        y:1375
    }
    Item {
        id:rsqu
        state: 'rsqu'
        x:70
        y:1375
    }
    //property string newLoc;
    // Main stack layout for the pages
    StackLayout {
        width: parent.width
        currentIndex: bar.currentIndex

        Item {
            id: homeTab
            HomePage {

            }
        }

        Item {
            id: histTab
            HistoryPage{

            }
        }

        Item {
            id: invenTab
            InventoryPage {

            }
        }

        Item {
            id: mapTab
            MapPage {

            }
        }
    }
}
