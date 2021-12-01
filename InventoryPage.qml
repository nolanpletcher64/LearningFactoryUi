import QtQuick 2.0
import QtQuick.Shapes 1.15
//640 480
Item {
    //back ground
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
    //labels--------------------
    property double wtrix: 165;
    property double wtriy: 292.5;
    Shape {
        width: 200
        height: 150
        ShapePath {
            fillColor: "white"
            startX: (wtrix + 25); startY: wtriy
            PathLine { x: wtrix; y: (wtriy + 50)}
            PathLine { x: (wtrix + 50); y: (wtriy + 50)}
            PathLine { x: (wtrix + 25); y: wtriy}
        }
    }
    property double btrix: 165;
    property double btriy: 292.5;
    Shape {
        width: 200
        height: 150
        ShapePath {
            fillColor: "black"
            startX: (btrix + 25); startY: btriy
            PathLine { x: btrix; y: (btriy + 50)}
            PathLine { x: (btrix + 50); y: (btriy + 50)}
            PathLine { x: (btrix + 25); y: btriy}
        }
    }
    property double bltrix: 165;
    property double bltriy: 292.5;
    Shape {
        width: 200
        height: 150
        ShapePath {
            fillColor: "blue"
            startX: (bltrix + 25); startY: bltriy
            PathLine { x: bltrix; y: (bltriy + 50)}
            PathLine { x: (bltrix + 50); y: (bltriy + 50)}
            PathLine { x: (bltrix + 25); y: bltriy}
        }
    }
    property double rtrix: 165;
    property double rtriy: 292.5;
    Shape {
        width: 200
        height: 150
        ShapePath {
            fillColor: "red"
            startX: (rtrix + 25); startY: rtriy
            PathLine { x: rtrix; y: (rtriy + 50)}
            PathLine { x: (rtrix + 50); y: (rtriy + 50)}
            PathLine { x: (rtrix + 25); y: rtriy}
        }
    }
    property double wvx: 165;
    property double wvy: 137.5;
    Shape {
        //V shape
        width: 200
        height: 150
        ShapePath {
            fillColor: "white"
            startX: wvx; startY: wvy
            PathLine { x: wvx + 10; y: wvy }
            PathLine { x: wvx + 25; y: wvy + 30}
            PathLine { x: wvx + 40; y: wvy }
            PathLine { x: wvx + 50; y: wvy }
            PathLine { x: wvx + 25; y: wvy + 50}
            PathLine { x: wvx; y: wvy }
        }
    }
    property double bvx: 165;
    property double bvy: 137.5;
    Shape {
        //V shape
        width: 200
        height: 150
        ShapePath {
            fillColor: "black"
            startX: bvx; startY: bvy
            PathLine { x: bvx + 10; y: bvy }
            PathLine { x: bvx + 25; y: bvy + 30}
            PathLine { x: bvx + 40; y: bvy }
            PathLine { x: bvx + 50; y: bvy }
            PathLine { x: bvx + 25; y: bvy + 50}
            PathLine { x: bvx; y: bvy }
        }
    }
    property double blvx: 165;
    property double blvy: 137.5;
    Shape {
        //V shape
        width: 200
        height: 150
        ShapePath {
            fillColor: "blue"
            startX: blvx; startY: blvy
            PathLine { x: blvx + 10; y: blvy }
            PathLine { x: blvx + 25; y: blvy + 30}
            PathLine { x: blvx + 40; y: blvy }
            PathLine { x: blvx + 50; y: blvy }
            PathLine { x: blvx + 25; y: blvy + 50}
            PathLine { x: blvx; y: blvy }
        }
    }
    property double rvx: 165;
    property double rvy: 137.5;
    Shape {
        //V shape
        width: 200
        height: 150
        ShapePath {
            fillColor: "red"
            startX: rvx; startY: rvy
            PathLine { x: rvx + 10; y: rvy }
            PathLine { x: rvx + 25; y: rvy + 30}
            PathLine { x: rvx + 40; y: rvy }
            PathLine { x: rvx + 50; y: rvy }
            PathLine { x: rvx + 25; y: rvy + 50}
            PathLine { x: rvx; y: rvy }
        }
    }
    property double wcirx: 70;
    property double wciry: 60;
    Rectangle {
        x: wcirx
        y: wciry
        width: 50
        height: 50
        color: "white" //input color
        radius: width*0.5
    }
    property double bcirx: 70;
    property double bciry: 137.5;
    Rectangle {
        x: bcirx
        y: bciry
        width: 50
        height: 50
        color: "black" //input color
        radius: width*0.5
    }
    property double blcirx: 70;
    property double blciry: 215;
    Rectangle {
        x: blcirx
        y: blciry
        width: 50
        height: 50
        color: "blue" //input color
        radius: width*0.5
    }
    property double rcirx: 70;
    property double rciry: 292.5;
    Rectangle {
        x: rcirx
        y: rciry
        width: 50
        height: 50
        color: "red" //input color
        radius: width*0.5
    }
    property double wsqux: 165;
    property double wsquy: 60;
    Rectangle {
        x: wsqux
        y: wsquy
        width: 50
        height: 50
        color: "white" //input color
    }
    property double bsqux: 165;
    property double bsquy: 60;
    Rectangle {
        x: bsqux
        y: bsquy
        width: 50
        height: 50
        color: "black" //input color
    }
    property double blsqux: 280;
    property double blsquy: 285;
    Rectangle {
        x: blsqux
        y: blsquy
        width: 50
        height: 50
        color: "blue" //input color
    }
    property double rsqux: 280;
    property double rsquy: 220;
    Rectangle {
        x: rsqux
        y: rsquy
        width: 50
        height: 50
        color: "red" //input color
    }

    /*
      valid positions
      x = 70, 165
      y = 60, 137.5, 215, 292.5
      robot pos

      Drop Locations 1
      y = 50 , 115
      x = 280, 350 , 420 , 490 , 560
      Drop Locations 2

      y = 220 , 285
      x = 280, 350 , 420 , 490 , 560
      */
}
