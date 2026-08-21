echo(version=version());

w = 105;
h = 60;

xhole = 29;
yhole = 24.5;


color("grey")
difference() {
    linear_extrude(height = 2)
    square([w, h], center = true);

    translate([xhole,yhole,-1])
    linear_extrude(height = 20)
    circle(2);

    translate([-xhole,yhole,-1])
    linear_extrude(height = 20)
    circle(2);

    translate([-xhole,-yhole,-1])
    linear_extrude(height = 20)
    circle(2);
    
    translate([xhole,-yhole,-1])
    linear_extrude(height = 20)
    circle(2);    
}