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
    dash,
    inventory_move,
    fire,
    hide_tooltips,
    interact, 
    dequeue_message,
    healthpack,
    escape,
    reload
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

if(key == keycode.dash)
{
    return keyboard_check_released(vk_space) || keymap_gamepad_check_released(gp_face2);
}

if(key == keycode.inventory_move)
{
    return keyboard_check_pressed(ord("Q")) || keymap_gamepad_check_pressed(gp_shoulderr) || mouse_wheel_up() || mouse_wheel_down();
}

if(key == keycode.fire)
{
    return mouse_check_button(mb_left) || keymap_gamepad_check(gp_shoulderrb);
}

if(key == keycode.hide_tooltips)
{
    return keyboard_check_pressed(ord("I")) || gamepad_button_check_pressed(0, gp_face4); 
}

if(key == keycode.interact)
{
    return keyboard_check_pressed(ord("E")) || keymap_gamepad_check_pressed(gp_face1) || mouse_check_button_pressed(mb_right);
}

if(key == keycode.escape)
{
    return keyboard_check_pressed(vk_escape) || keymap_gamepad_check_pressed(gp_start);
}

if(key == keycode.reload)
{
    return keyboard_check_pressed(ord("R")) || keymap_gamepad_check_pressed(gp_face3);
}

if(key == keycode.dequeue_message)
{
    return keyboard_check_pressed(vk_enter);
}

if(key == keycode.healthpack)
{
    return keyboard_check_pressed(vk_tab);
}
