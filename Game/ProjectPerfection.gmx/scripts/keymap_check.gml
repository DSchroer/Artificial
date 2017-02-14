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
    shield,
    inventory_up,
    inventory_down,
    fire,
    hide_inventory,
    interact, 
    dequeue_message,
    healthpack
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

if(key == keycode.shield)
{
    return keyboard_check(vk_space) || gamepad_button_check(0, gp_shoulderlb);
}

if(key == keycode.inventory_up)
{
    return keyboard_check_pressed(ord("q")) | keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(0, gp_padu);
}

if(key == keycode.inventory_down)
{
    return keyboard_check_pressed(ord("e")) || keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(0, gp_padd);
}

if(key == keycode.fire)
{
    return mouse_check_button(mb_left);
}

if(key == keycode.hide_inventory)
{
    return keyboard_check_pressed(ord("i")) || keyboard_check_pressed(ord("I")) || gamepad_button_check_pressed(0, gp_face4); 
}

if(key == keycode.interact)
{
    return keyboard_check_pressed(ord("F"));
}

if(key == keycode.dequeue_message)
{
    return keyboard_check_pressed(vk_enter);
}

if(key == keycode.healthpack)
{
    return keyboard_check_pressed(vk_tab);
}
