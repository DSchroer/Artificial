///tutorial_open_first_doors()

with(door_l1)
{
    instance_destroy();
}
with(door_r1)
{
    instance_destroy();
}
with(door_m1)
{
    instance_destroy();
}
with(door_m2)
{
    instance_destroy();
}

var xp = 416;
var yp = 2304;
door_l1 = instance_create(xp, yp, obj_tutorial_gate_open);
door_l1.sprite_index = spr_laser_left_open;
door_r1 = instance_create(xp + 192, yp, obj_tutorial_gate_open);
door_r1.sprite_index = spr_laser_right_open;


