///shud_beam()
speed = 5;

if(sm_ticks() > 60)
{
    sm_set_state("turn");
}
else if(sm_ticks() > 15)
{
    var t_dir = point_direction(x, y, obj_player.x, obj_player.y);
    shud_turn_dir(t_dir, 1);
    var cx = x - (sprite_get_xoffset(sprite_index) * image_xscale) + (sprite_width / 2);
    var cy = y - (sprite_get_yoffset(sprite_index) * image_yscale) + (sprite_height / 2);
    attack_gun_ext(beam, cx, cy, direction, sprite_width/2, self, false, true, false);
}else{
    var t_dir = -point_direction(x, y, obj_player.x, obj_player.y);
    shud_turn_dir(t_dir, 1);
}
