///tutorial_create_second_doors()

var xp = 416;
var yp = 1280;
door_l2 = instance_create(xp, yp, obj_tutorial_gate_closed);
door_l2.sprite_index = spr_laser_left_closed;
door_m3 = instance_create(xp + 64, yp, obj_tutorial_gate_closed);
door_m3.sprite_index = spr_laser_middle;
door_m4 = instance_create(xp + 128, yp, obj_tutorial_gate_closed);
door_m4.sprite_index = spr_laser_middle;
door_r2 = instance_create(xp + 192, yp, obj_tutorial_gate_closed);
door_r2.sprite_index = spr_laser_right_closed;

