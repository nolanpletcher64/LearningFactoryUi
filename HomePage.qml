import QtQuick 2.0
import QtQuick.Controls 2.12


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
