///final_jump()
if(sm_ticks() == 0)
{
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    var gx = sm_set_var("tx", x + lengthdir_x(800, dir));
    var gy = sm_set_var("ty", y + lengthdir_y(800, dir));
    
    var ghost = instance_create(x, y, obj_boss_jump);
    ghost.target_x = gx;
    ghost.target_y = gy;
    ghost.image_xscale = image_xscale;
    ghost.image_yscale = image_yscale;
    ghost.time = 45;
}
var tx = sm_get_var("tx");
var ty = sm_get_var("ty");

if(obj_boss_jump.ctr == obj_boss_jump.time)
{
    direction = point_direction(x, y, tx, ty);
    speed = 60;
}else{
    speed = 0;
}

if(point_distance(x, y, tx, ty) <= speed)
{
    with(obj_boss_jump)
    {
        instance_destroy();
    }
    speed = 0;
    sm_set_state(sm_state_pop());
}

mele[weapon_index.bullet_sprite_xscale] = image_xscale;
mele[weapon_index.bullet_sprite_yscale] = image_yscale;
attack_gun(mele, x, y, 0, self, false, false);
