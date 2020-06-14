//
// ktRACK10
//
//


gap1 = 0.001;
gap2 = 0.002;

panel_thick = 2;

A = 1;
B = 1;

if(A)
{
difference()
{
    union()
    {
        translate([-panel_thick, -panel_thick, -(12*2+panel_thick)/2]) cube([14, 14, 12*2+panel_thick]);
    }
    
    
    translate([0, 0, -30]) cube([14.5, 2.7, 30]);
    translate([0, 0, -30]) cube([2.7, 39.5, 30]);
    translate([0, 0, panel_thick]) cube([14.5, 39.5, 25]);
    
    translate([3, 3, -30/2]) rotate([0, 0, 45]) cube([3, 4, 30], center=true);
}
}




if(B)
{
translate([0, 100, 0])
{
difference()
{
    union()
    {
        translate([-panel_thick, -panel_thick, -(11*2+panel_thick)/2]) cube([14, 14, 11*2+panel_thick]);
    }
    
    translate([0, -25, -30]) rotate([0, 0, 45]) cube([21, 39.5, 60]);
    
    translate([0, 0, -13]) cube([21, 2.7, 13]);
    translate([0, 0, -13]) cube([2.7, 39.5, 13]);
    translate([19, 0, panel_thick]) rotate([0, 0, 45]) cube([21, 39.5, 25]);
    
    translate([3.5, 3.5, -13/2]) rotate([0, 0, 45]) cube([3, 7, 13], center=true);
    translate([4.5, 4.5, -13/2]) rotate([0, 0, 45]) cube([3, 8, 13], center=true);
}
difference()
{
    union()
    {
        translate([7, -5, -(11*2+panel_thick)/2]) rotate([0, 0, 45]) cube([panel_thick, 15, 11*2+panel_thick]);
    }
    translate([0, -5-panel_thick, -13]) cube([21, 5, 30]);
    translate([-5-panel_thick, 0, -13]) cube([5, 39.5, 30]);
}
}
}
