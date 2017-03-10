///tutorial_open_third_doors()
with(door_l3)
{
    instance_destroy();
}
with(door_r3)
{
    instance_destroy();
}
with(door_m5)
{
    instance_destroy();
}
with(door_m6)
{
    instance_destroy();
}
with(door_m7)
{
    instance_destroy();
}
with(door_m8)
{
    instance_destroy();
}
var xp = 416 - 64;
var yp = 320;
door_l3 = instance_create(xp, yp, obj_tutorial_gate_open);
door_l3.sprite_index = spr_laser_left_open;
door_r3 = instance_create(xp + 320, yp, obj_tutorial_gate_open);
door_r3.sprite_index = spr_laser_right_open;


