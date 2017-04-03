///player_set_sprite()

if(is_paused())
{
    image_speed = 0;
}else {
    image_speed = 0.25;
}

if(dead)
{
    if(image_speed != 0)
    {
        image_speed = 0.1
    }

    if(sprite_index != spr_player_die)
    {
        sprite_index = spr_player_die
    }
    
    if(image_index >= image_number - 1)
    {
        image_speed = 0;
    }
    exit; 
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
