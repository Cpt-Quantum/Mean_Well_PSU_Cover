$fn=20;

//Measurements of the open part of the PSU with screw terminals
psu_x = 82;
psu_y = 11.6;
psu_z = 30;

//Set thickness of vertical wall on side of PSU
psu_x_thick = 1.3;

//Placeholder for base thickness
psu_z_thick = 1.3;

//Location of holes used for holding this cover
base_hole_x = 76.5;
base_hole_y = 4.5;
base_hole_r = 1.75;

wall_hole_y = 6.5;
wall_hole_z = 26;
wall_hole_r = 1.75;

//Variable for extra y distance
cover_extra_y = 50;

//Variables relating to the exposed PSU section of the cover
wall_z_extend = wall_hole_z - 5;
wall_x_extend = psu_x - base_hole_x + base_hole_r + 1;
wall_vert_thick = 1;
wall_top_thick = 1;
vert_tab_clear = 2;

//Variables relating to the empty section of the cover
empty_wall_thick = 1;
empty_base_wall_thick = 1.5;

mains_cable_cut_x = 18;
mains_cable_cut_y = 0;
mains_cable_cut_z = 0;
mains_cable_cut_x_thick = 8;
mains_cable_cut_z_thick = 10;

led_cable_cut_x = mains_cable_cut_x + 35;
led_cable_cut_y = 0;
led_cable_cut_z = 0;
led_cable_cut_x_thick = 8;
led_cable_cut_z_thick = 10;

//Derived variables
cover_x = psu_x;
cover_y = cover_extra_y + psu_y;
cover_z = psu_z;
