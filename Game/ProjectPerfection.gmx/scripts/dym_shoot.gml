///dym_shoot()

speed = 0;
if(sm_ticks() > 60)
{
    for(var i = 0; i < 5; i++)
    {
        var rock = instance_nearest(obj_player.x, obj_player.y, obj_dym_part);
        
        with(rock)
        {   
            enemy_attack(obj_player, other.rock);
            instance_destroy();
        }
    }

    sm_set_state("idle");
    
    sfx_play_volume(snd_dym_cloudslash, false, 1.0);

}

rock_angle = (rock_angle + 3) % 360;
