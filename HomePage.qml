import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import io.qt.examples.backend 1.0
import Ros 1.0

Item {
    //
    //visible: true
    //width: 320
    //height: 200
    //title: qsTr("C++ Type")

	
	Connections {
		target: Ros
		onShutdown: Qt.quit()
	}

	Subscriber {
		id: battery_sub
		topic: "/robot_status"
	}

    BackEnd{
        id:backend;
        Component.onCompleted: {//call backend signal and slot
            backend.newLocationChanged.connect(backend.logChange);
            backend.newLocationChanged.connect(backend.readMirInventory);
            //backend.newLocationchanged.connect(backend.readLoc1Inventory);
            //backend.newLocationChanged.connect(backend.readLoc2Inventory);
        }
    }
    Rectangle {
        x: 20
        y: 40
        implicitHeight: 75
        implicitWidth: 490
        color: "lightgray"
    }
    Rectangle {
        x: 20
        y: 135
        implicitHeight: 30
        implicitWidth: 200
        color: "lightgray"
    }
    Rectangle {
        x: 20
        y: 185
        implicitHeight: 30
        implicitWidth: 200
        color: "lightgray"
    }
    Rectangle {
        x: 450
        y: 150
        implicitHeight: 100
        implicitWidth: 150
        color: "lightskyblue"
    }
    Text {
        text: "Valid Locations"
        x: 480
        y: 130
        verticalAlignment: Text.AlignVCenter
    }
    Text {
        text: "loc_1"
        x: 478
        y: 155
        verticalAlignment: Text.AlignVCenter
    }
    Text {
        text: "loc_2"
        x: 478
        y: 180
        verticalAlignment: Text.AlignVCenter
    }
    Text {
        text: "mir_slot_number"
        x: 462
        y: 205
        verticalAlignment: Text.AlignVCenter
    }
    Rectangle {
        x: 100
        y: 50
        implicitHeight: 20
        implicitWidth: 300
        color: "white"
    }
    Rectangle {
        x: 100
        y: 80
        implicitHeight: 20
        implicitWidth: 300
        color: "white"
    }
    TextInput {
        id: taskInput
        x: 100
        y: 50
        width: 300
        height: 20
        verticalAlignment: TextInput.AlignVCenter
        horizontalAlignment: TextInput.AlignLeft
        //onTextChanged: backend.newLocation = text;
    }
    TextInput {
        id: boxInput
        x: 100
        y: 80
        width: 300
        height: 20
        verticalAlignment: TextInput.AlignVCenter
        horizontalAlignment: TextInput.AlignLeft
        //onTextChanged: backend.newLocation = text;
    }
    Text{
        id:labelBackend;
        text: "Current Task"
        x: 115
        y: 140
    }
    Button {
        id: submitTask
        x: 420
        y: 47
        text: qsTr("GO")

        background: Rectangle {
            implicitHeight: 20
            implicitWidth: 80
            color: "lightblue"
        }
        onPressed: {
            backend.setNewLocation(taskInput.text);
            newLoc = taskInput.text;
            newBox = boxInput.text;
            for (var i = 0; i < 8; i++)  {
                if(backend.mirInv(i) !== 'empty' && newLoc !== 'loc_1' && newLoc !== 'loc_2')
                {
                    if (backend.mirInv(i) === 'white_triangle')
                        slot1[i+1] = wtri
                    if (backend.mirInv(i) === 'black_triangle')
                        slot1[i+1] = btri
                    if (backend.mirInv(i) === 'blue_triangle')
                        slot1[i+1] = bltri
                    if (backend.mirInv(i) === 'red_triangle')
                        slot1[i+1] = rtri
                    if (backend.mirInv(i) === 'white_v')
                        slot1[i+1] = wv
                    if (backend.mirInv(i) === 'black_v')
                        slot1[i+1] = bv
                    if (backend.mirInv(i) === 'blue_v')
                        slot1[i+1] = blv
                    if (backend.mirInv(i) === 'red_v')
                        slot1[i+1] = rv
                    if (backend.mirInv(i) === 'white_circle')
                        slot1[i+1] = wcir
                    if (backend.mirInv(i) === 'black_circle')
                        slot1[i+1] = bcir
                    if (backend.mirInv(i) === 'blue_circle')
                        slot1[i+1] = blcir
                    if (backend.mirInv(i) === 'red_circle')
                        slot1[i+1] = rcir
                    if (backend.mirInv(i) === 'white_square')
                        slot1[i+1] = wsqu
                    if (backend.mirInv(i) === 'black_square')
                        slot1[i+1] = bsqu
                    if (backend.mirInv(i) === 'blue_square')
                        slot1[i+1] = blsqu
                    if (backend.mirInv(i) === 'red_square')
                        slot1[i+1] = rsqu
                }
                i++
            }
            for (var i = 0; i < 8; i++)  {
                if(backend.loc1Inv(i) !== 'empty' && newLoc === 'loc_1')
                {
                    if (backend.mirInv(i) === 'white_triangle')
                        slot2[i+1] = wtri
                    if (backend.mirInv(i) === 'black_triangle')
                        slot2[i+1] = btri
                    if (backend.mirInv(i) === 'blue_triangle')
                        slot2[i+1] = bltri
                    if (backend.mirInv(i) === 'red_triangle')
                        slot2[i+1] = rtri
                    if (backend.mirInv(i) === 'white_v')
                        slot2[i+1] = wv
                    if (backend.mirInv(i) === 'black_v')
                        slot2[i+1] = bv
                    if (backend.mirInv(i) === 'blue_v')
                        slot2[i+1] = blv
                    if (backend.mirInv(i) === 'red_v')
                        slot2[i+1] = rv
                    if (backend.mirInv(i) === 'white_circle')
                        slot2[i+1] = wcir
                    if (backend.mirInv(i) === 'black_circle')
                        slot2[i+1] = bcir
                    if (backend.mirInv(i) === 'blue_circle')
                        slot2[i+1] = blcir
                    if (backend.mirInv(i) === 'red_circle')
                        slot2[i+1] = rcir
                    if (backend.mirInv(i) === 'white_square')
                        slot2[i+1] = wsqu
                    if (backend.mirInv(i) === 'black_square')
                        slot2[i+1] = bsqu
                    if (backend.mirInv(i) === 'blue_square')
                        slot2[i+1] = blsqu
                    if (backend.mirInv(i) === 'red_square')
                        slot2[i+1] = rsqu
                }
                i++
            }
            for (var i = 0; i < 8; i++)  {
                if(backend.loc2Inv(i) !== 'empty' && newLoc === 'loc_2')
                {
                    if (backend.mirInv(i) === 'white_triangle')
                        slot3[i+1] = wtri
                    if (backend.mirInv(i) === 'black_triangle')
                        slot3[i+1] = btri
                    if (backend.mirInv(i) === 'blue_triangle')
                        slot3[i+1] = bltri
                    if (backend.mirInv(i) === 'red_triangle')
                        slot3[i+1] = rtri
                    if (backend.mirInv(i) === 'white_v')
                        slot3[i+1] = wv
                    if (backend.mirInv(i) === 'black_v')
                        slot3[i+1] = bv
                    if (backend.mirInv(i) === 'blue_v')
                        slot3[i+1] = blv
                    if (backend.mirInv(i) === 'red_v')
                        slot3[i+1] = rv
                    if (backend.mirInv(i) === 'white_circle')
                        slot3[i+1] = wcir
                    if (backend.mirInv(i) === 'black_circle')
                        slot3[i+1] = bcir
                    if (backend.mirInv(i) === 'blue_circle')
                        slot3[i+1] = blcir
                    if (backend.mirInv(i) === 'red_circle')
                        slot3[i+1] = rcir
                    if (backend.mirInv(i) === 'white_square')
                        slot3[i+1] = wsqu
                    if (backend.mirInv(i) === 'black_square')
                        slot3[i+1] = bsqu
                    if (backend.mirInv(i) === 'blue_square')
                        slot3[i+1] = blsqu
                    if (backend.mirInv(i) === 'red_square')
                        slot3[i+1] = rsqu
                }
                i++
            }
            backend.writeMirInventory();
            backend.writeLoc1Inventory();
            backend.writeLoc2Inventory();
            if (newBox == 'white_triangle')
                test = wtri
            if (newBox == 'black_triangle')
                test = btri
            if (newBox == 'blue_triangle')
                test = bltri
            if (newBox == 'red_triangle')
                test = rtri
            if (newBox == 'white_v')
                test = wv
            if (newBox == 'black_v')
                test = bv
            if (newBox == 'blue_v')
                test = blv
            if (newBox == 'red_v')
                test = rv
            if (newBox == 'white_circle')
                test = wcir
            if (newBox == 'black_circle')
                test = bcir
            if (newBox == 'blue_circle')
                test = blcir
            if (newBox == 'red_circle')
                test = rcir
            if (newBox == 'white_square')
                test = wsqu
            if (newBox == 'black_square')
                test = bsqu
            if (newBox == 'blue_square')
                test = blsqu
            if (newBox == 'red_square')
                test = rsqu
            if (newLoc == 'mir_1' && slot1[1] === empty)
            {
                backend.changeMirInv(newBox, 0)
                slot1[1] = test;
            }
            if (newLoc == 'mir_2' && slot1[2] === empty)
            {
                backend.changeMirInv(newBox, 1)
                slot1[2] = test;
            }
            if (newLoc == 'mir_3' && slot1[3] === empty)
            {
                backend.changeMirInv(newBox, 2)
                slot1[3] = test;
            }
            if (newLoc == 'mir_4' && slot1[4] === empty)
            {
                backend.changeMirInv(newBox, 3)
                slot1[4] = test;
            }
            if (newLoc == 'mir_5' && slot1[5] === empty)
            {
                backend.changeMirInv(newBox, 4)
                slot1[5] = test;
            }
            if (newLoc == 'mir_6' && slot1[6] === empty)
            {
                backend.changeMirInv(newBox, 5)
                slot1[6] = test;
            }
            if (newLoc == 'mir_7' && slot1[7] === empty)
            {
                backend.changeMirInv(newBox, 6)
                slot1[7] = test;
            }
            if (newLoc == 'mir_8' && slot1[8] === empty)
            {
                backend.changeMirInv(newBox, 7)
                slot1[8] = test;
            }
            if(newLoc == 'loc_1')
            {
                for (var i = 0; i < 10; i++)  {
                    if (slot2[i] === 'empty')
                    {
                        backend.changeLoc1Inv(newBox,i);
                        i = 10;
                    }
                }
            }
            if(newLoc == 'loc_2')
            {
                for (var i = 0; i < 10; i++)  {
                    if (slot3[i] === 'empty')
                    {
                        backend.changeLoc2Inv(newBox,i);
                        i = 10;
                    }
                }
            }
            if(slot1[1] !== empty)
            {
                slot1[1].x = 70;
                slot1[1].y = 60;
            }
            if(slot1[2] !== empty)
            {
                slot1[2].x = 70;
                slot1[2].y = 137.5;
            }
            if(slot1[3] !== empty)
            {
                slot1[3].x = 70;
                slot1[3].y = 215;
            }
            if(slot1[4] !== empty)
            {
                slot1[4].x = 70;
                slot1[4].y = 292.5;
            }
            if(slot1[5] !== empty)
            {
                slot1[5].x = 165;
                slot1[5].y = 60;
            }
            if(slot1[6] !== empty)
            {
                slot1[6].x = 165;
                slot1[6].y = 137.5;
            }
            if(slot1[7] !== empty)
            {
                slot1[7].x = 165;
                slot1[7].y = 215;
            }
            if(slot1[8] !== empty)
            {
                slot1[8].x = 165;
                slot1[8].y = 292.5;
            }
            //hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
            if(slot2[1] !== empty)
            {
                slot2[1].y = 50;
                slot2[1].x = 280;
            }
            if(slot2[2] !== empty)
            {
                slot2[2].y = 50;
                slot2[2].x = 350;
            }
            if(slot2[3] !== empty)
            {
                slot2[3].y = 50;
                slot2[3].x = 420;
            }
            if(slot2[4] !== empty)
            {
                slot2[4].y = 50;
                slot2[4].x = 490;
            }
            if(slot2[5] !== empty)
            {
                slot2[5].y = 115;
                slot2[5].x = 280;
            }
            if(slot2[6] !== empty)
            {
                slot2[6].y = 115;
                slot2[6].x = 350;
            }
            if(slot2[7] !== empty)
            {
                slot2[7].y = 115;
                slot2[7].x = 420;
            }
            if(slot2[8] !== empty)
            {
                slot2[8].y = 115;
                slot2[8].x = 490;
            }
            if(slot2[9] !== empty)
            {
                slot2[9].y = 115;
                slot2[9].x = 560;
            }
            if(slot2[10] !== empty)
            {
                slot2[10].y = 50;
                slot2[10].x = 560;
            }
            //yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy
            if(slot3[1] !== empty)
            {
                slot3[1].y = 220;
                slot3[1].x = 280;
            }
            if(slot3[2] !== empty)
            {
                slot3[2].y = 220;
                slot3[2].x = 350;
            }
            if(slot3[3] !== empty)
            {
                slot3[3].y = 220;
                slot3[3].x = 420;
            }
            if(slot3[4] !== empty)
            {
                slot3[4].y = 220;
                slot3[4].x = 490;
            }
            if(slot3[5] !== empty)
            {
                slot3[5].y = 285;
                slot3[5].x = 280;
            }
            if(slot3[6] !== empty)
            {
                slot3[6].y = 285;
                slot3[6].x = 350;
            }
            if(slot3[7] !== empty)
            {
                slot3[7].y = 285;
                slot3[7].x = 420;
            }
            if(slot3[8] !== empty)
            {
                slot3[8].y = 285;
                slot3[8].x = 490;
            }
            if(slot3[9] !== empty)
            {
                slot3[9].y = 285;
                slot3[9].x = 560;
            }
            if(slot3[10] !== empty)
            {
                slot3[10].y = 220;
                slot3[10].x = 560;
            }
        }
    }
    Rectangle {
        x: 490
        y: 300
        implicitHeight: 50
        implicitWidth: 80
        color: "lightgray"
    }
    Rectangle {
        x: 490
        y: 300
        implicitHeight: 50
        implicitWidth: (battery_sub.message ? parseInt(battery_sub.message.battery_percentage,10) : 10)
        color: (parseInt(battery_sub.message.battery_percentage,10) > 10) ? "green" : "red"
    }

    Connections{// connect backend signal
        target: backend;
        onNewLocationChanged:{
            labelBackend.text=backend.newLocation;
        }
    }
	
	Text{
        text: parseInt(battery_sub.message.battery_percentage,10)+"%"
        x: 515
        y: 310
    }
    Text {
        text: "Input:"
        x: 40
        y: 50
        verticalAlignment: Text.AlignVCenter
    }
    Text {
        text: "Task Progress: 25%"
        x: 25
        y: 190
        verticalAlignment: Text.AlignVCenter
    }
    Text {
        text: "Box Input:"
        x: 35
        y: 80
        verticalAlignment: Text.AlignVCenter
    }
    Text {
        text: "Current Task:"
        x: 25
        y: 140
        verticalAlignment: Text.AlignVCenter
    }
    Text {
        text: "Create New Task"
        x: 210
        y: 20
        verticalAlignment: Text.AlignVCenter
    }
    Connections{// connect backend signal
        target: backend;
        onNewLocationChanged:{
            //labelBackend.text= backend.newLocation;
            //labelBackend.text= slot1[1].state;
        }
    }
    Connections{// connect backend signal
        target: InventoryPage;
        onNewLocationChanged:{
            rcir.x = 250;
        }
    }
	Component.onCompleted: {
		Ros.init("qml_home")
	}
}


