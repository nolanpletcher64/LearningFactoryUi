import QtQuick 2.0
import QtQuick.Shapes 1.15
//640 480
Item {
    Rectangle {
        x: 40
        y: 40
        implicitHeight: 320
        implicitWidth: 200
        color: "gray"
    }
    Rectangle {
        x: 270
        y: 210
        implicitHeight: 150
        implicitWidth: 340
        color: "gray"
    }
    Rectangle {
        x: 270
        y: 40
        implicitHeight: 140
        implicitWidth: 340
        color: "gray"
    }
    Rectangle {
        x: 50
        y: 50
        implicitHeight: 67.5
        implicitWidth: 85
        color: "lightgrey"
    }
    Rectangle {
        x: 50
        y: 127.5
        implicitHeight: 67.5
        implicitWidth: 85
        color: "lightgrey"
    }
    Rectangle {
        x: 50
        y: 205
        implicitHeight: 67.5
        implicitWidth: 85
        color: "lightgrey"
    }
    Rectangle {
        x: 50
        y: 282.5
        implicitHeight: 67.5
        implicitWidth: 85
        color: "lightgrey"
    }
    Rectangle {
        x: 145
        y: 50
        implicitHeight: 67.5
        implicitWidth: 85
        color: "lightgrey"
    }
    Rectangle {
        x: 145
        y: 127.5
        implicitHeight: 67.5
        implicitWidth: 85
        color: "lightgrey"
    }
    Rectangle {
        x: 145
        y: 205
        implicitHeight: 67.5
        implicitWidth: 85
        color: "lightgrey"
    }
    Rectangle {
        x: 145
        y: 282.5
        implicitHeight: 67.5
        implicitWidth: 85
        color: "lightgrey"
    }
    Text {
        text: "Package Location 2"
        x: 380
        y: 184
    }
    Text {
        text: "Package Location 1"
        x: 380
        y: 21
    }
    Text {
        text: "MiR100 Packages"
        x: 90
        y: 21
    }

    Shape {
        width: 200
        height: 150
        ShapePath {
            fillColor: "red"
            startX: 310; startY: 50
            PathLine { x: 285; y: 100 }
            PathLine { x: 335; y: 100 }
            PathLine { x: 310; y: 50 }
        }
    }
    Shape {
        width: 200
        height: 150
        ShapePath {
            fillColor: "black"
            startX: 190; startY: 292.5
            PathLine { x: 165; y: 342.5 }
            PathLine { x: 215; y: 342.5 }
            PathLine { x: 190; y: 292.5 }
        }
    }
    Shape {
        width: 200
        height: 150
        ShapePath {
            fillColor: "blue"
            startX: 165; startY: 137.5
            PathLine { x: 175; y: 137.5 }
            PathLine { x: 190; y: 167.5 }
            PathLine { x: 205; y: 137.5 }
            PathLine { x: 215; y: 137.5 }
            PathLine { x: 190; y: 187.5 }
            PathLine { x: 165; y: 137.5 }
        }
    }

    Rectangle {
        x: 70
        y: 60
        width: 50
        height: 50
        color: "blue" //input color
        radius: width*0.5        /*
        Text {
             color: "red"
             text: "Boom"
        }
        */
    }
    Rectangle {
        x: 70
        y: 137.5
        width: 50
        height: 50
        color: "red" //input color
        radius: width*0.5
    }
    /*
    Rectangle {
        x: 70
        y: 215
        width: 50
        height: 50
        color: "black" //input color
        radius: width*0.5
    }
    */
    Rectangle {
        x: 70
        y: 292.5
        width: 50
        height: 50
        color: "white" //input color
        radius: width*0.5
    }
    Rectangle {
        x: 165
        y: 60
        width: 50
        height: 50
        color: "black" //input color
        //radius: width*0.5
    }
    /*
    Rectangle {
        x: 165
        y: 137.5
        width: 50
        height: 50
        color: "red" //input color
        //radius: width*0.5
    }
    */
    Rectangle {
        x: 285
        y: 220
        width: 50
        height: 50
        color: "white" //input color
        //radius: width*0.5
    }
    Rectangle {
        //x: 165
        //y: 292.5
        x: 70
        y: 215
        width: 50
        height: 50
        color: "blue" //input color
        //radius: width*0.5
    }

}
