module barSmooth2Point(L, r1, r2, b1, b2){ 
/* L = bar length, center-to-center
r1 = total bar radius at one end
r2 = total bar radius at other end
b1 = bolt diameter (not radius) at one end
b2 = bolt diameter (not radius) at other end */

difference()
{
	union()
	{
	rotate([90,0,90]) cylinder(h = L, r1 = r1, r2 = r2, center = false, $fn = 6);
	cylinder (h = 10, r=r1, center = true, $fn=100);
	translate([L,0,0]) cylinder (h = 10, r=r2, center = true, $fn=100);
	}
	cylinder(h=12, r=b1/2, center=true, $fn=100);
	translate([L,0,0]) cylinder(h=12, r=b2/2, center=true, $fn=100);

}
}

module barRadius2Point(L,w, r1, r2, b1, b2){ 
/* L = bar length, center-to-center
w = bar width
r1 = total bar radius at one end
r2 = total bar radius at other end
b1 = bolt diameter (not radius) at one end
b2 = bolt diameter (not radius) at other end */

difference()
{
	union()
	{
	rotate([90,0,90]) cylinder(h = L, r1 = h, r2 = h, center = false, $fn = 6);
	cylinder (h = 10, r=r1, center = true, $fn=100);
	translate([L,0,0]) cylinder (h = 10, r=r2, center = true, $fn=100);
	}
	cylinder(h=12, r=b1/2, center=true, $fn=100);
	translate([L,0,0]) cylinder(h=12, r=b2/2, center=true, $fn=100);

}
}

module barRadius3Point(L1,w1,L2,w2,r1, r2, r3, b1, b2, b3){ 
/* L1 = bar length, center-to-center of first section
w1 = bar width of first section
L1 = bar length, center-to-center of second section
w2 = bar width of second section
r1 = total bar radius at one end
r2 = total bar radius at other end
b1 = bolt diameter (not radius) at one end
b2 = bolt diameter (not radius) at other end */

difference()
{
	union()
	{
	rotate([90,0,90]) cylinder(h = L1, r1 = h, r2 = h, center = false, $fn = 6);
	translate([L1,0,0]) rotate([90,0,90]) cylinder(h = L2, r1 = h, r2 = h, center = false, $fn = 6);
	cylinder (h = 10, r=r1, center = true, $fn=100);
	translate([L1,0,0]) cylinder (h = 10, r=r2, center = true, $fn=100);
	translate([L2+L1,0,0]) cylinder (h = 10, r=r3, center = true, $fn=100);
	}
	cylinder(h=12, r=b1/2, center=true, $fn=100);
	translate([L1,0,0]) cylinder(h=12, r=b2/2, center=true, $fn=100);
	translate([L2+L1,0,0]) cylinder(h=12, r=b3/2, center=true, $fn=100);

}
}



//projection(cut=false) barSmooth2Point(100,5,8,2,3);
//projection(cut=false) barRadius2Point(100,10,5,8,2,3);
projection(cut=false) barRadius3Point(100,10,50,10,5,8,10,2,3,4);
