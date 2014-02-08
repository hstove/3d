use <Write.scad>
width = 5;
small = width/2;

difference() {
	cube([100,80,width], center=true);

	
	translate([40,0,small])
	rotate([0,0,90])
		write("goodboard",center=true,space=2.5);

	translate([45,0,small])
	rotate([0,0,90])
		write("made in cascadia",h=1,center=true,space=2.5);

	translate([45,0,-small-0.1])
		cylinder(0.5,3,3);
}

for (i = [1,-1]) {
	rotate([0,90,0])
	translate([0,40*i,0])
		cylinder(100,small,small,true);
	translate([50*i, 40*i,0])
		sphere(small);
}
for (i = [-1,1]) {
	rotate([90,90,0])
	translate([0,50*i,0])
		cylinder(80,small,small,true);
	translate([-50*i, 40*i])
		sphere(small);
}