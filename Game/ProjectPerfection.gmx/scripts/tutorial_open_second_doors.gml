///tutorial_open_second_doors()
with(door_l2)
{
    instance_destroy();
}
with(door_r2)
{
    instance_destroy();
}
with(door_m3)
{
    instance_destroy();
}
with(door_m4)
{
    instance_destroy();
}

var xp = 416;
var yp = 1280;
door_l2 = instance_create(xp, yp, obj_tutorial_gate_open);
door_l2.sprite_index = spr_laser_left_open;
door_r2 = instance_create(xp + 192, yp, obj_tutorial_gate_open);
door_r2.sprite_index = spr_laser_right_open;


