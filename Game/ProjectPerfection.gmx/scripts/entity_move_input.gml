///entity_move_input()
var x_dir = 0;
var y_dir = 0;

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
    var new_dir = point_direction(0, 0, x_dir, y_dir);
    motion_add(new_dir, 3);
}

// Fix this later, I'm just putting it in for testing
if(keyboard_check(vk_space))
{
    
    shield_active = true;
    exit;
} 
else 
{
    shield_active = false;
}

// Controller
//
if(gamepad_get_device_count() == 0)
{
    exit;
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

// Left Pad:
// (One use for this is "quick swapping" weapons from your inventory, assuming we allow 4 slots, aligned to the cardinal directions)
// Up
if(gamepad_button_check(0, gp_padu))
{
    selected_slot = inventory_slot.weapon1;
}

// Down   
if(gamepad_button_check(0, gp_padd))
{
    selected_slot = inventory_slot.weapon4;
}

// Right
if(gamepad_button_check(0, gp_padr))
{
    selected_slot = inventory_slot.weapon3;
}

// Left
if(gamepad_button_check(0, gp_padl))
{
    selected_slot = inventory_slot.weapon2;
}

// ABXY:
// (Attacks, interacting with world, etc...)

// A/cross 
if(gamepad_button_check_pressed(0, gp_face1))
{
    var item = instance_create(0, 0, obj_weapon);
    item.name = "A";    
    var r = inventory_swap(self, selected_slot, item);
}

// B/circle
if(gamepad_button_check_pressed(0, gp_face2))
{
    var item = instance_create(0, 0, obj_weapon);
    item.name = "B";    
    var r = inventory_swap(self, selected_slot, item);

}

// X/square
if(gamepad_button_check_pressed(0, gp_face3))
{
    var item = instance_create(0, 0, obj_weapon);
    item.name = "X";    
    var r = inventory_swap(self, selected_slot, item);

}

// Y/triangle
if(gamepad_button_check_pressed(0, gp_face4))
{
    var item = instance_create(0, 0, obj_weapon);
    item.name = "Y";    
    var r = inventory_swap(self, selected_slot, item);

}

// Triggers/Shoulder buttons:
// Left button
if(gamepad_button_check_pressed(0, gp_shoulderl))
{
    var item = instance_create(0, 0, obj_shield);
    item.name = "LT";    
    inventory_swap(self, inventory_slot.shield, item);
}

// Left Trigger
if(gamepad_button_check(0, gp_shoulderlb))
{
    shield_active = true;
} 
else 
{
    shield_active = false;
}

// Right Button
if(gamepad_button_check_pressed(0, gp_shoulderr))
{
    player_levelup();
}

// Right Trigger
if(gamepad_button_check(0, gp_shoulderrb))
{
}

// We can also push the left and right sticks with gp_stickl, gl_stickr
// Start and select are gp_start, gp_select.
