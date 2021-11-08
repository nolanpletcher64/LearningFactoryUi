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
                text: qsTr("Start Task")

                background: Rectangle {
                    implicitHeight: 50
                    implicitWidth: 100
                    color: "darkseagreen"
                }
            }

            ToolButton {
                id: stop
                text: qsTr("Stop Task")

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
