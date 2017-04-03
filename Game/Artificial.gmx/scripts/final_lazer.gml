
speed = 0;
if(sm_ticks() == 0)
{
    var base = point_direction(x, y, obj_player.x, obj_player.y) + 45;
    sm_set_var("base", base);
    sm_set_var("angle", 0);
    if(random(2) < 1)
    {
        sm_set_var("dir", 1);
    }else{
        sm_set_var("dir", -1);
    }
    sfx_play_volume(snd_heart_quad_laser, false, 1.0);
}else if(sm_get_var("angle") > 90 || sm_get_var("angle") < -90)
{
    audio_stop_sound(snd_heart_quad_laser);
    
    if(current_health / max_health < 0.7)
    {
        sm_set_state(sm_state_pop());
    }else{
        sm_state_force_push("idle");
        sm_set_state("spawn");
    }
}else if(sm_ticks() > 30){
    sm_set_var("angle", sm_get_var("angle") + sm_get_var("dir"));
}

var angle = sm_get_var("base") + sm_get_var("angle");
var cx = x - (sprite_get_xoffset(sprite_index) * image_xscale) + (sprite_width / 2);
var cy = y - (sprite_get_yoffset(sprite_index) * image_yscale) + (sprite_height / 2);
var cdist = (sprite_width / 2);

attack_gun_ext(lazer, cx, cy, angle, cdist, self, false, false, false, false);
attack_gun_ext(lazer, cx, cy, angle + 90, cdist, self, false, false, false, false);
attack_gun_ext(lazer, cx, cy, angle + 180, cdist, self, false, false, false, false);
attack_gun_ext(lazer, cx, cy, angle - 90, cdist, self, false, false, false, false);
