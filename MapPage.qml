import QtQuick 2.0

//640 480
Item {
    Rectangle {
        x: 200
        y: 270
        implicitHeight: 100
        implicitWidth: 370
        color: "lightgray"
    }
    Rectangle {
        x: 440
        y: 200
        implicitHeight: 70
        implicitWidth: 140
        color: "lime"
    }
    Rectangle {
        x: 40
        y: 40
        implicitHeight: 70
        implicitWidth: 140
        color: "tomato"
    }
    Rectangle {
        x: 240
        y: 200
        implicitHeight: 70
        implicitWidth: 140
        color: "tomato"
    }
    Rectangle {
        x: 300
        y: 140
        implicitHeight: 40
        implicitWidth: 70
        color: "lightskyblue"
    }
    Text {
        text: "Package Zone 1"
        x: 65
        y: 60
    }
}
