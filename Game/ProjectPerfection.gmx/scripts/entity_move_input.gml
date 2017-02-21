///entity_move_input()

if(is_paused())
{
    speed = 0;
    exit;
}

var x_dir = 0;
var y_dir = 0;
movement_this_frame = false;

if(keymap_check(keycode.up))
{
    y_dir -= 1;
}

if(keymap_check(keycode.down))
{
    y_dir += 1;
}

if(keymap_check(keycode.left))
{
    x_dir -= 1;
}

if(keymap_check(keycode.right))
{
    x_dir += 1;
}

if(x_dir != 0 || y_dir != 0)
{
    movement_this_frame = true;
    var new_dir = point_direction(0, 0, x_dir, y_dir);
    motion_add(new_dir, max_movement_speed * acceleration_coeff);
}

if(keymap_check(keycode.inventory_up))
{
    for(var i = 0; i < 4; i++)
    {
        selected_slot = (selected_slot + 1) % 4;
        if(inventory[selected_slot] != -1)
        {
            break;
        }
    }
}

if(keymap_check(keycode.hide_inventory))
{
    hide_inventory = !hide_inventory;
}

if(keymap_check(keycode.dequeue_message))
{
    ds_queue_dequeue(textbox_queue);
}

if(keymap_check(keycode.healthpack))
{
    if(inventory_get_healthpack_count(self) > 0 && current_health < max_health)
    {
        inventory_remove_healthpacks(self, 1);
        player_heal_percent(50);
    }
}


if(keyboard_check_pressed(vk_f4))
{
    ui_queue_message("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id porttito. `a `s `b `s `x `y `br `l `s `r `s `u `s `d Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id porttito" + 
    " `a `b `x `y `br `l `r `u `d ");
    ui_queue_message("Test1 |red Test1 |crimson Test1 |yellow Test1 |orange Test1 |teal Test1 |white Test1 |black Test1 |fuchsia Test1");
    ui_queue_message("Test2");
    ui_queue_message("Test3");
}

if(keyboard_check_pressed(vk_numpad1))
{
    inventory[selected_slot] = inventory_spawn_gun(10);
}
if(keyboard_check_pressed(vk_numpad2))
{
    inventory[selected_slot] = inventory_spawn_gun(20);
}
if(keyboard_check_pressed(vk_numpad3))
{
    inventory[selected_slot] = inventory_spawn_gun(30);
}
if(keyboard_check_pressed(vk_numpad4))
{
    inventory[selected_slot] = inventory_spawn_gun(40);
}
if(keyboard_check_pressed(vk_numpad5))
{
    inventory[selected_slot] = inventory_spawn_gun(50);
}
if(keyboard_check_pressed(vk_numpad6))
{
    inventory[selected_slot] = inventory_spawn_gun(60);
}
if(keyboard_check_pressed(vk_numpad7))
{
    inventory[selected_slot] = inventory_spawn_gun(70);
}
if(keyboard_check_pressed(vk_numpad8))
{
    inventory[selected_slot] = inventory_spawn_gun(80);
}
if(keyboard_check_pressed(vk_numpad9))
{
    inventory[selected_slot] = inventory_spawn_gun(90);
}



// Left analogue stick:
var haxis_ls = gamepad_axis_value(0, gp_axislh);
var vaxis_ls = gamepad_axis_value(0, gp_axislv);

// Analogue sticks typically have a small set value even when untouched.
// This causes the player to move slightly when they shouldn't.
if(abs(haxis_ls) > 0.05 || abs(vaxis_ls) > 0.05) 
{
    // Compute the direction and magnitude of the analogue stick press.
    var dir = point_direction(0, 0, haxis_ls, vaxis_ls);
    var magnitude = point_distance(0, 0, haxis_ls, vaxis_ls);
    // 
    motion_add(dir, magnitude * 3);
}

// Right analogue stick:
var haxis_rs = gamepad_axis_value(0, gp_axisrh);
var vaxis_rs = gamepad_axis_value(0, gp_axisrv);

// Analogue sticks typically have a small set value even when untouched.
// This causes the player to move slightly when they shouldn't.
if(abs(haxis_rs) > 0.05 || abs(vaxis_rs) > 0.05) 
{
    // Compute the direction and magnitude of the analogue stick press.
    var dir = point_direction(0, 0, haxis_rs, vaxis_rs);
    var magnitude = point_distance(0, 0, haxis_rs, vaxis_rs);

    // TODO: Put code here (rotate player/camera?)

}

// ABXY:
// (Attacks, interacting with world, etc...)

// A/cross 

if(gamepad_button_check_pressed(0, gp_face1))
{
    var ite = inventory_create_weapon();
    inventory_swap(self, selected_slot, ite);
}
/*
// B/circle
if(gamepad_button_check_pressed(0, gp_face2))
{
    var ite = instance_create(0, 0, obj_shield);
    inventory_swap(self, inventory_slot.shield, ite);

}*/


// Y/triangle
if(gamepad_button_check_pressed(0, gp_face4))
{
    

}

// We can also push the left and right sticks with gp_stickl, gl_stickr
// Start and select are gp_start, gp_select.
