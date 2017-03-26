///dym_regen()
speed = 0;
if(sm_ticks() == 0)
{
    for(var i = 0; i < part_num; i++)
    {
        var inst = instance_create(x, y, obj_dym_part);
        inst.image_xscale = 1;
        inst.image_yscale = 1;
        var angle = enemy_dumb(point_direction(x, y, obj_player.x, obj_player.y), 30);
        var dist = 1500 + random(500);
        inst.x = x + lengthdir_x(dist, angle);
        inst.y = y - 64 + lengthdir_y(dist , angle);
    }
    sfx_play_volume(snd_dym_summon, false, 2.8);
}

var furthest = instance_furthest(x, y, obj_dym_part);
debug_show_string("Dist: " + string(point_distance(x, y - 64, furthest.x, furthest.y)));
if(point_distance(x, y - 64, furthest.x, furthest.y) < 200)
{
    sm_set_state("idle");
}
