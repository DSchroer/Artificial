///player_set_sprite()

if(is_paused())
{
    image_speed = 0;
}else {
    image_speed = 0.25;
}

var haxis_ls = keymap_gamepad_axis(gp_axislh);
var vaxis_ls = keymap_gamepad_axis(gp_axislv);
if(speed != 0 && 
    (keymap_check(keycode.up) || 
    keymap_check(keycode.down) || 
    keymap_check(keycode.left) || 
    keymap_check(keycode.right) || 
    abs(haxis_ls) > 0.35 || 
    abs(vaxis_ls) > 0.35))
{
    sprite_index = spr_player_walk;
}else{
    sprite_index = spr_player;
}

