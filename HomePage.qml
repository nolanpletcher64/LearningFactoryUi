import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import io.qt.examples.backend 1.0

Item {
    //
    //visible: true
    //width: 320
    //height: 200
    //title: qsTr("C++ Type")
    BackEnd{
        id:backend;
        Component.onCompleted: {//call backend signal and slot
            backend.newLocationChanged.connect(backend.logChange);
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
        text: "Package Zone 1"
        x: 478
        y: 155
        verticalAlignment: Text.AlignVCenter
    }
    Text {
        text: "Package Zone 2"
        x: 478
        y: 180
        verticalAlignment: Text.AlignVCenter
    }
    Text {
        text: "Human Loading Zone"
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
            //bcir.x = 250;
            if (newBox == 'white triangle')
                test = wtri
            if (newBox == 'black triangle')
                test = btri
            if (newBox == 'blue triangle')
                test = bltri
            if (newBox == 'red triangle')
                test = rtri
            if (newBox == 'white v')
                test = wv
            if (newBox == 'black v')
                test = bv
            if (newBox == 'blue v')
                test = blv
            if (newBox == 'red v')
                test = rv
            if (newBox == 'white circle')
                test = wcir
            if (newBox == 'black circle')
                test = bcir
            if (newBox == 'clue circle')
                test = blcir
            if (newBox == 'red circle')
                test = rcir
            if (newBox == 'white square')
                test = wsqu
            if (newBox == 'black square')
                test = bsqu
            if (newBox == 'blue square')
                test = blsqu
            if (newBox == 'red square')
                test = rsqu
            if (newLoc == 'mir 1')
            {
                test.x = 70;
                test.y = 60;
            }
            if (newLoc == 'mir 2')
            {
                test.x = 70;
                test.y = 137.5;
            }
            if (newLoc == 'mir 3')
            {
                test.x = 70;
                test.y = 215;
            }
            if (newLoc == 'mir 4')
            {
                test.x = 70;
                test.y = 292.5;
            }
            if (newLoc == 'mir 5')
            {
                test.x = 165;
                test.y = 60;
            }
            if (newLoc == 'mir 6')
            {
                test.x = 165;
                test.y = 137.5;
            }
            if (newLoc == 'mir 7')
            {
                test.x = 165;
                test.y = 215;
            }
            if (newLoc == 'mir 8')
            {
                test.x = 165;
                test.y = 292.5;
            }
            if (newLoc == 'drop 1')
            {
                test.x = 50;
                test.y = 280;
            }
            if (newLoc == 'drop 2')
            {
                test.x = 220;
                test.y = 280;
            }
            if (newLoc == '11')
            {
                test.x = 70;
                test.y = 60;
            }
            if (newLoc == '12')
            {
                test.x = 70;
                test.y = 60;
            }
            if (newLoc == '13')
            {
                test.x = 70;
                test.y = 60;
            }
            if (newLoc == '14')
            {
                test.x = 70;
                test.y = 60;
            }
            if (newLoc == '15')
            {
                test.x = 70;
                test.y = 60;
            }
            if (newLoc == '16')
            {
                test.x = 70;
                test.y = 60;
            }
            if (newLoc == '17')
            {
                test.x = 70;
                test.y = 60;
            }
            if (newLoc == '18')
            {
                test.x = 70;
                test.y = 60;
            }
            if (newLoc == '19')
            {
                test.x = 70;
                test.y = 60;
            }
            if (newLoc == '20')
            {
                test.x = 70;
                test.y = 60;
            }
        }
    }
    Text{
        text: "Battery"
        x: 510
        y: 280
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
        implicitWidth: 8
        color: "red"
    }

    Text{
        text: "10%"
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
            labelBackend.text=backend.newLocation;
        }
    }
    Connections{// connect backend signal
        target: InventoryPage;
        onNewLocationChanged:{
            rcir.x = 250;
        }
    }
}


/*
Item
{
    // Background gray rectangle
    Rectangle {
        x: 20
        y: 40
        implicitHeight: 75
        implicitWidth: 490
        color: "lightgray"
    }

    // Task input bar
    Text {
        text: "Task Input:"
        x: 35
        y: 55
        verticalAlignment: Text.AlignVCenter
    }
    Rectangle {
        x: 100
        y: 50
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
    }
    Button {
        id: submitTask
        x: 420
        y: 47
        text: qsTr("Submit")

        background: Rectangle {
            implicitHeight: 20
            implicitWidth: 80
            color: "lightblue"
        }
        onPressed: {
            submitTask.highlighted = true
        }
        onReleased: submitTask.highlighted = false
    }

    // Task input format example
    Text {
        text: "(<Package1 ID>, <Destination ID>), (<Package2 ID>, <Destination ID>), etc"
        x: 100
        y: 80
    }
}
*/
