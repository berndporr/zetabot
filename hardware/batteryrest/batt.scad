// Battery rest of the zetabot
// (c) 2026 Bernd Porr

// width of the board
w = 105;

// height of the board
h = 60;

// thickness of the board
thickness = 2;

// x coord of the drillhole
xhole = 29;

// y coord of the drillhole
yhole = 24.5;

// diameter of the drillhole
drilldiam = 2.75;

// diameter of the post
postdiam = 6;

// height of the post
postheight = 3;

color("grey")
difference() {
    union() {
        linear_extrude(height = thickness)
        square([w, h], center = true);
        translate([xhole,yhole,0])
        linear_extrude(height = postheight + thickness)
        circle(d=postdiam);    
        translate([-xhole,yhole,0])
        linear_extrude(height = postheight + thickness)
        circle(d=postdiam);
        translate([xhole,-yhole,0])
        linear_extrude(height = postheight + thickness)
        circle(d=postdiam);    
        translate([-xhole,-yhole,0])
        linear_extrude(height = postheight + thickness)
        circle(d=postdiam);    
    }

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