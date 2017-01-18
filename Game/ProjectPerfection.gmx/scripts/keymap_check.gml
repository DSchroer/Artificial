///keymap_check(key)
enum keycode{
    up,
    down,
    left,
    right
}

var key = argument0;
if(key == keycode.up)
{
    return keyboard_check(vk_up) || keyboard_check(ord("W"));
}

if(key == keycode.down)
{
    return keyboard_check(vk_down) || keyboard_check(ord("S"));
}

if(key == keycode.left)
{
    return keyboard_check(vk_left) || keyboard_check(ord("A"));
}

if(key == keycode.right)
{
    return keyboard_check(vk_right) || keyboard_check(ord("D"));
}
