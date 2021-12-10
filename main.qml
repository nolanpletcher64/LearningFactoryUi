import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.12
import io.qt.examples.backend 1.0
import Ros 1.0

ApplicationWindow {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Learning Factory Dashboard ")

    BackEnd {
        id: backend
    }

	Connections {
		target: Ros
		onShutdown: Qt.quit()
	}

	Subscriber {
		id: status_sub
		topic: "/robot_state"
	}

	property var move_pub: Ros.advertise("geometry_msgs/PoseStamped", "move_base_simple/goal", 10)
	
    // Bottom toolbar
    footer: ToolBar {
        RowLayout {
            anchors.fill: parent
            Label {
                id: status
                //text: "  MiR100 Status:   " + "Not Busy"
				function status_phrase(code) {
					switch(code) {
					case 1:
						return "Starting";
					case 2:
						return "Shutting Down";
					case 3:
						return "Ready";
					case 4:
						return "Paused";
					case 5:
						return "Mission Active";
					case 6:
						return "Aborted";
					case 7:
						return "Mission Completed";
					case 8:
						return "Robot Charging";
					case 9:
						return "Robot Docking";
					case 10:
						return "E-Stop Active";
					case 11:
						return "Manual Controls Engaged";
					case 12:
						return "ERROR";
					default:
						return "Not Busy";
					}
				}
				text: "  MiR100 Status:   " + status_phrase(status_sub.message.robotState)
				horizontalAlignment: Qt.AlignLeft
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }

            ToolButton {
                id: start
                text: qsTr("Start Queue")
				
				onClicked: {
					var header_pose = "frame_id: \"map\""
					var xp = 12.909
					var yp = 6.905
					var xo = 0.0
					var yo = 0.0
					var zo = 1.0
					var wo = 0.023
					
					var to_send = {
						header: {
							frame_id: "map"
						},
						pose: {
							position: {
								x: xp,
								y: yp
							},
							orientation: {
								x: xo,
								y: yo,
								z: zo,
								w: wo
							}
						},
					}
					move_pub.publish(to_send)
				}
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
    property variant slot2: {1:empty,2:empty,3:empty,4:empty,5:empty,6:empty,7:empty,8:empty,9:empty,10:empty,11:empty,12:empty,13:empty,14:empty,15:empty,16:empty};
    property variant slot3: {1:empty,2:empty,3:empty,4:empty,5:empty,6:empty,7:empty,8:empty,9:empty,10:empty,11:empty,12:empty,13:empty,14:empty,15:empty,16:empty};
    
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
