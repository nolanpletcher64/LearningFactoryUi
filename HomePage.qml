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
    Text {
        text: "Input:"
        x: 35
        y: 55
        verticalAlignment: Text.AlignVCenter
    }
    Rectangle {
        x: 20
        y: 40
        implicitHeight: 75
        implicitWidth: 490
        color: "lightgray"
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
        text: "destination"
        x: 100
        y: 20
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
        }
    }
    Text{
        text: "Battery"
        x: 320
        y: 280
    }
    Rectangle {
        x: 300
        y: 300
        implicitHeight: 50
        implicitWidth: 80
        color: "blue"
    }

    Connections{// connect backend signal
        target: backend;
        onNewLocationChanged:{
            labelBackend.text=backend.newLocation;
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
