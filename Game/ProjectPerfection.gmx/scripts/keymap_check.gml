///keymap_check(key)
enum keycode{
    up,
    down,
    left,
    right,
    inv0,
    inv1,
    inv2,
    inv3,
    inv4,
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

if(key == keycode.inv0)
{
    return keyboard_check_pressed(ord("1"));
}

if(key == keycode.inv1)
{
    return keyboard_check_pressed(ord("2"));
}

if(key == keycode.inv2)
{
    return keyboard_check_pressed(ord("3"));
}

if(key == keycode.inv3)
{
    return keyboard_check_pressed(ord("4"));
}

if(key == keycode.inv4)
{
    return keyboard_check_pressed(ord("5"));
}
