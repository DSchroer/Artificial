///shud_beam()
speed = 5 * speed_mod;

if(sm_ticks() > 80)
{
    sm_set_state("turn");
    audio_stop_sound(snd_shuude_scream_beam);
}
else if(sm_ticks() == 25)
{
    var t_dir = point_direction(x, y, obj_player.x, obj_player.y);
    var angle = angle_difference(direction, t_dir);
    if(angle > 0)
    {
        sm_set_var("tdir", direction - 90);
    }else{
        sm_set_var("tdir", direction + 90);
    }
}
else if(sm_ticks() > 25)
{
    var t_dir = sm_get_var("tdir");
    shud_turn_dir(t_dir, 1);
    var cx = x - (sprite_get_xoffset(sprite_index) * image_xscale) + (sprite_width / 2);
    var cy = y - (sprite_get_yoffset(sprite_index) * image_yscale) + (sprite_height / 2);
    attack_gun_ext(beam, cx, cy, direction, sprite_width/2, self, false, false, false, false);
    shud_stop_other_audio(snd_shuude_scream_beam)
    sfx_play_volume(snd_shuude_scream_beam, false, 1.0);
}else{
    var t_dir = -point_direction(x, y, obj_player.x, obj_player.y);
    shud_turn_dir(t_dir, 1);
}

attack_gun(mele, x, y, 0, self, false, false);
