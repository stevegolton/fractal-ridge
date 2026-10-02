$fn = 128;

basePlateHeight = 3;
screwHoleRad = 1.7;
holeSpacing = 55.5;

difference() {
    union() {
        // Baseplate
        hull() {
            cylinder(r=10, h=basePlateHeight);
            translate([holeSpacing, 0, 0]) {
                cylinder(r=10, h=basePlateHeight);
            }
        }
        // Leg
        hull() {
            translate([0, 0, basePlateHeight]) {
                cylinder(r=10, h=0.1);
            }
            translate([-10, 10, 20]) {
                cylinder(r=5, h=0.1);
            }
        }
    }
    translate([0, 0, -1]) {
        cylinder(r=screwHoleRad, h=5);
        translate([holeSpacing, 0, 0]) {
            cylinder(r=screwHoleRad, h=5);
        }
    }
}