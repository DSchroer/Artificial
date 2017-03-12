///tutorial_create_third_doors()

var xp = 416 - 64;
var yp = 320;
door_l3 = instance_create(xp, yp, obj_tutorial_gate_closed);
door_l3.sprite_index = spr_laser_left_closed;
door_m5 = instance_create(xp + 64, yp, obj_tutorial_gate_closed);
door_m5.sprite_index = spr_laser_middle;
door_m6 = instance_create(xp + 128, yp, obj_tutorial_gate_closed);
door_m6.sprite_index = spr_laser_middle;
door_m7 = instance_create(xp + 192, yp, obj_tutorial_gate_closed);
door_m7.sprite_index = spr_laser_middle;
door_m8 = instance_create(xp + 256, yp, obj_tutorial_gate_closed);
door_m8.sprite_index = spr_laser_middle;
door_r3 = instance_create(xp + 320, yp, obj_tutorial_gate_closed);
door_r3.sprite_index = spr_laser_right_closed;

