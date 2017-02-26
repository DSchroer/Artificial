///player_set_sprite()

var haxis_ls = gamepad_axis_value(0, gp_axislh);
var vaxis_ls = gamepad_axis_value(0, gp_axislv);
if(speed != 0 && 
    (keymap_check(keycode.up) || 
    keymap_check(keycode.down) || 
    keymap_check(keycode.left) || 
    keymap_check(keycode.right) || 
    abs(haxis_ls) > 0.05 || 
    abs(vaxis_ls) > 0.05))
{
    sprite_index = spr_player_walk;
}else{
    sprite_index = spr_player;
}

