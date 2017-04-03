///dym_explode()

speed = 0;
if(sm_ticks() == 60)
{
    with(obj_dym_part)
    {   
        attack_gun(other.rock, x, y, point_direction(x, y, obj_player.x, obj_player.y), self, false, false);
        instance_destroy();
    }
    sfx_play_volume(snd_dym_cloudslash, false, 1.0);
}

if(sm_ticks() > 100)
{
    sm_set_state("idle");
}

rock_angle = (rock_angle + 3) % 360;
