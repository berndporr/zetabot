// picamera mounting board
// (c) 2026 Bernd Porr

// width of the board
w = 25;

// height of the board
h = 16.5;

// thickness of the board
thickness = 2;

// x coord of the drillhole
xhole = 10.5;

// y coord of the drillhole
yhole = 6.25;

// diameter of the drillhole
drilldiam = 2;

// diameter of the post
postdiam = 4;

// height of the post
postheight = 3;

color("grey")
difference() {
    union() {
        linear_extrude(height = thickness)
        square([w, h], center = true);
        translate([xhole,yhole,0])
        linear_extrude(height = postheight + thickness)
        square(postdiam,true);    
        translate([-xhole,yhole,0])
        linear_extrude(height = postheight + thickness)
        square(postdiam,true);    
        translate([xhole,-yhole,0])
        linear_extrude(height = postheight + thickness)
        square(postdiam,true);    
        translate([-xhole,-yhole,0])
        linear_extrude(height = postheight + thickness)
        square(postdiam,true);    
    }

    // drillholes
    translate([xhole,yhole,-1])
    linear_extrude(height = postheight + thickness + 2)
    circle(d=drilldiam);

    translate([-xhole,yhole,-1])
    linear_extrude(height = postheight + thickness + 2)
    circle(d=drilldiam);

    translate([-xhole,-yhole,-1])
    linear_extrude(height = postheight + thickness + 2)
    circle(d=drilldiam);
    
    translate([xhole,-yhole,-1])
    linear_extrude(height = postheight + thickness + 2)
    circle(d=drilldiam);    

}