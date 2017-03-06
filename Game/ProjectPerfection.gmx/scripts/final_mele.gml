///final_mele()
if(sm_ticks() == 0)
{
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    sm_set_var("tx", x + lengthdir_x(dist + 300, dir));
    sm_set_var("ty", y + lengthdir_y(dist + 300, dir));
}
var tx = sm_get_var("tx");
var ty = sm_get_var("ty");

if(point_distance(x, y, tx, ty) <= speed)
{
    sm_set_state(sm_state_pop());
}

direction = point_direction(x, y, tx, ty);
speed = 20;

mele[weapon_index.bullet_sprite_xscale] = image_xscale;
mele[weapon_index.bullet_sprite_yscale] = image_yscale;
attack_gun(mele, x, y, 0, self);
