include <definitions.scad>


/* Exposed part of the PSU */
module exposed_psu(){
	difference(){
		cube([psu_x, psu_y, psu_z_thick], center=false);
		translate([psu_x-base_hole_x,base_hole_y,-0.1]){
			cylinder(psu_z_thick+0.2,r=base_hole_r);
		}
	}

	difference(){
		translate([psu_x-psu_x_thick, 0, 0]){
			cube([psu_x_thick, psu_y, psu_z], center=false);
		}
		translate([psu_x-psu_x_thick-0.1, wall_hole_y, wall_hole_z]){
			rotate([0,90,0]){
				cylinder(psu_z_thick+0.2,r=base_hole_r);
			}
		}
	}
}
/* End of exposed part of PSU */
