include <definitions.scad>
include <module-definitions.scad>

difference(){
	cube([cover_x, cover_y, cover_z], center = false);
	translate([0,cover_extra_y,0]){
		exposed_psu();
	}

	/* This section deals with the exposed PSU part of the enclosure */
	//Form the bottom z-section
	translate([wall_x_extend, cover_extra_y, 0]){
		cube([psu_x - wall_vert_thick - wall_x_extend, psu_y, wall_z_extend], center=false);
	}
	//Form the top z-section
	translate([wall_x_extend, cover_extra_y, wall_z_extend]){
		cube([psu_x - wall_vert_thick - psu_x_thick - wall_x_extend,
			psu_y, psu_z - wall_z_extend - wall_top_thick], center=false);
	}
	//Detach the vertical mounting point to allow it to flex
	translate([psu_x - psu_x_thick - wall_vert_thick, cover_extra_y, wall_z_extend]){
		cube([wall_vert_thick, vert_tab_clear, psu_z - wall_z_extend - wall_top_thick], center = false);
	}
	/* End of exposed PSU part of enclosure */


	/* This section deals with the empty part of the enclosure */
	/* This is for cable strain relief or containing other	   */
	/* electronics if desired.				   */
	translate([empty_wall_thick, empty_wall_thick, empty_base_wall_thick]){
		cube([psu_x - 2 * empty_wall_thick, cover_extra_y - empty_wall_thick,
			psu_z - empty_wall_thick - empty_base_wall_thick]);
	}
	//Make the hole for the mains cables
	translate([mains_cable_cut_x, mains_cable_cut_y, mains_cable_cut_z]){
		cube([mains_cable_cut_x_thick, empty_wall_thick, mains_cable_cut_z_thick]);
	}
	//Make the hole for the low side power cables
	translate([led_cable_cut_x, led_cable_cut_y, led_cable_cut_z]){
		cube([led_cable_cut_x_thick, empty_wall_thick, led_cable_cut_z_thick]);
	}

	//Carve out the base that will be printed separately
	cube([psu_x, cover_extra_y, empty_base_wall_thick/2]);
	translate([empty_wall_thick/2, 0, empty_base_wall_thick/2]){
		cube([psu_x - empty_wall_thick, cover_extra_y, empty_base_wall_thick/2]);
	}
	/* End of empty part of enclosure */
}
