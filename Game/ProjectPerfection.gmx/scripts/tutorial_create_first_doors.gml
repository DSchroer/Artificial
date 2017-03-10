///tutorial_create_first_doors()

var xp = 416;
var yp = 2304;
door_l1 = instance_create(xp, yp, obj_tutorial_gate_closed);
door_l1.sprite_index = spr_laser_left_closed;
door_m1 = instance_create(xp + 64, yp, obj_tutorial_gate_closed);
door_m1.sprite_index = spr_laser_middle;
door_m2 = instance_create(xp + 128, yp, obj_tutorial_gate_closed);
door_m2.sprite_index = spr_laser_middle;
door_r1 = instance_create(xp + 192, yp, obj_tutorial_gate_closed);
door_r1.sprite_index = spr_laser_right_closed;

