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
    //property double wtrix: 165;
    //property double wtriy: 292.5;
    Shape {
        width: 200
        height: 150
        ShapePath {
            fillColor: "white"
            startX: (wtri.x + 25); startY: wtri.y
            PathLine { x: wtri.x; y: (wtri.y + 50)}
            PathLine { x: (wtri.x + 50); y: (wtri.y + 50)}
            PathLine { x: (wtri.x + 25); y: wtri.y}
        }
    }
    //property double btrix: 165;
    //property double btriy: 292.5;
    Shape {
        width: 200
        height: 150
        ShapePath {
            fillColor: "black"
            startX: (btri.x + 25); startY: btri.y
            PathLine { x: btri.x; y: (btri.y + 50)}
            PathLine { x: (btri.x + 50); y: (btri.y + 50)}
            PathLine { x: (btri.x + 25); y: btri.y}
        }
    }
    //property double bltrix: 165;
    //property double bltriy: 292.5;
    Shape {
        width: 200
        height: 150
        ShapePath {
            fillColor: "blue"
            startX: (bltri.x + 25); startY: bltri.y
            PathLine { x: bltri.x; y: (bltri.y + 50)}
            PathLine { x: (bltri.x + 50); y: (bltri.y + 50)}
            PathLine { x: (bltri.x + 25); y: bltri.y}
        }
    }
    //property double rtrix: 165;
    //property double rtriy: 292.5;
    Shape {
        width: 200
        height: 150
        ShapePath {
            fillColor: "red"
            startX: (rtri.x + 25); startY: rtri.y
            PathLine { x: rtri.x; y: (rtri.y + 50)}
            PathLine { x: (rtri.x + 50); y: (rtri.y + 50)}
            PathLine { x: (rtri.x + 25); y: rtri.y}
        }
    }
    //property double wvx: 165;
    //property double wvy: 137.5;
    Shape {
        //V shape
        width: 200
        height: 150
        ShapePath {
            fillColor: "white"
            startX: wv.x; startY: wv.y
            PathLine { x: wv.x + 10; y: wv.y }
            PathLine { x: wv.x + 25; y: wv.y + 30}
            PathLine { x: wv.x + 40; y: wv.y }
            PathLine { x: wv.x + 50; y: wv.y }
            PathLine { x: wv.x + 25; y: wv.y + 50}
            PathLine { x: wv.x; y: wv.y }
        }
    }
    //property double bvx: 165;
    //property double bvy: 137.5;
    Shape {
        //V shape
        width: 200
        height: 150
        ShapePath {
            fillColor: "black"
            startX: bv.x; startY: bv.y
            PathLine { x: bv.x + 10; y: bv.y }
            PathLine { x: bv.x + 25; y: bv.y + 30}
            PathLine { x: bv.x + 40; y: bv.y }
            PathLine { x: bv.x + 50; y: bv.y }
            PathLine { x: bv.x + 25; y: bv.y + 50}
            PathLine { x: bv.x; y: bv.y }
        }
    }
    //property double blvx: 165;
    //property double blvy: 137.5;
    Shape {
        //V shape
        width: 200
        height: 150
        ShapePath {
            fillColor: "blue"
            startX: blv.x; startY: blv.y
            PathLine { x: blv.x + 10; y: blv.y }
            PathLine { x: blv.x + 25; y: blv.y + 30}
            PathLine { x: blv.x + 40; y: blv.y }
            PathLine { x: blv.x + 50; y: blv.y }
            PathLine { x: blv.x + 25; y: blv.y + 50}
            PathLine { x: blv.x; y: blv.y }
        }
    }
    //property double rvx: 165;
    //property double rvy: 137.5;
    Shape {
        //V shape
        width: 200
        height: 150
        ShapePath {
            fillColor: "red"
            startX: rv.x; startY: rv.y
            PathLine { x: rv.x + 10; y: rv.y }
            PathLine { x: rv.x + 25; y: rv.y + 30}
            PathLine { x: rv.x + 40; y: rv.y }
            PathLine { x: rv.x + 50; y: rv.y }
            PathLine { x: rv.x + 25; y: rv.y + 50}
            PathLine { x: rv.x; y: rv.y }
        }
    }
    //property double wcirx: 70;
    //property double wciry: 60;
    Rectangle {
        x: wcir.x
        y: wcir.y
        width: 50
        height: 50
        color: "white" //input color
        radius: width*0.5
    }
    Rectangle {
        x: bcir.x
        y: bcir.y
        width: 50
        height: 50
        color: "black" //input color
        radius: width*0.5
    }
    //property double blcirx: 70;
    //property double blciry: 215;
    Rectangle {
        x: blcir.x
        y: blcir.y
        width: 50
        height: 50
        color: "blue" //input color
        radius: width*0.5
    }
    //property double rcirx: 70;
    //property double rciry: 292.5;
    Rectangle {
        x: rcir.x
        y: rcir.y
        width: 50
        height: 50
        color: "red" //input color
        radius: width*0.5
    }
    //property double wsqux: 165;
    //property double wsquy: 60;
    Rectangle {
        x: wsqu.x
        y: wsqu.y
        width: 50
        height: 50
        color: "white" //input color
    }
    //property double bsqux: 165;
    //property double bsquy: 60;
    Rectangle {
        x: bsqu.x
        y: bsqu.y
        width: 50
        height: 50
        color: "black" //input color
    }
    //property double blsqux: 280;
    //property double blsquy: 285;
    Rectangle {
        x: blsqu.x
        y: blsqu.y
        width: 50
        height: 50
        color: "blue" //input color
    }
    //property double rsqux: 280;
    //property double rsquy: 220;
    Rectangle {
        x: rsqu.x
        y: rsqu.y
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
