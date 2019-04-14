include <definitions.scad>

cube([psu_x, cover_extra_y, empty_base_wall_thick/2]);
translate([empty_wall_thick/2, 0, empty_base_wall_thick/2]){
	cube([psu_x - empty_wall_thick, cover_extra_y, empty_base_wall_thick/2]);
}

