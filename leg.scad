$fn = 128;

basePlateHeight = 3;
screwHoleRad = 1.7;
holeSpacing = 55.5;

difference() {
    union() {
        // Baseplate
        union() {
            hull() {
                cylinder(r=10, h=basePlateHeight);
                translate([holeSpacing, 0, 0]) {
                    cylinder(r=10, h=basePlateHeight);
                }
            }
            hull() {
                cylinder(r=10, h=basePlateHeight);
                translate([-20, 50, 0]) {
                    cylinder(r=15, h=basePlateHeight);
                }
            }
        }
        // Leg
        translate([-20, 50, 0]) hull() {
            translate([0, 0, 0]) {
                cylinder(r=15, h=basePlateHeight);
            }
            translate([-10, 10, 20]) {
                cylinder(r=7.5, h=0.1);
            }
        }
    }
    // Screw holes
    translate([0, 0, -1]) {
        cylinder(r=screwHoleRad, h=5);
        translate([holeSpacing, 0, 0]) {
            cylinder(r=screwHoleRad, h=5);
        }
    }
}