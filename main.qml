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
    property Item test;
    Item {
        id:wtri
        x:50
        y:500
    }
    Item {
        id:btri
        x:165
        y:500
    }
    Item {
        id:bltri
        x:70
        y:500
    }
    Item {
        id:rtri
        x:70
        y:500
    }
    Item {
        id:wv
        x:70
        y:500
    }
    Item {
        id:bv
        x:70
        y:1375
    }
    Item {
        id:blv
        x:70
        y:1375
    }
    Item {
        id:rv
        x:70
        y:1375
    }
    Item {
        id:wcir
        x:70
        y:1375
    }
    Item {
        id:bcir
        x:70
        y:1375
    }
    Item {
        id:blcir
        x:70
        y:1375
    }
    Item {
        id:rcir
        x:70
        y:1375
    }
    Item {
        id:wsqu
        x:70
        y:1375
    }
    Item {
        id:bsqu
        x:70
        y:1375
    }
    Item {
        id:blsqu
        x:70
        y:1375
    }
    Item {
        id:rsqu
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
