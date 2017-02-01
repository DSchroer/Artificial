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

shield_active = keymap_check(keycode.shield);

if(keymap_check(keycode.inventory_up))
{
    selected_slot += 1;
    selected_slot = selected_slot % inventory_slot.shield;
}

if(keymap_check(keycode.inventory_down))
{
    selected_slot -= 1;
    if(selected_slot < 0)
        selected_slot += inventory_slot.shield; 
}

if(keymap_check(keycode.hide_inventory))
{
    hide_inventory = !hide_inventory;
}



// Triggers/Shoulder buttons:
// Left button
if(gamepad_button_check_pressed(0, gp_shoulderl))
{
    var item = inventory_create_shield();
    item[shield_index.recharge_delay] = 5;
    item[shield_index.recharge_rate] = 40;
    item[shield_index.max_health] = 100;    
    item[shield_index.name] = "LT";    
    inventory_swap(self, inventory_slot.shield, item);
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

// X/square
if(gamepad_button_check_pressed(0, gp_face3))
{
    player_inflict_damage(43);
}

// Y/triangle
if(gamepad_button_check_pressed(0, gp_face4))
{
    

}

// We can also push the left and right sticks with gp_stickl, gl_stickr
// Start and select are gp_start, gp_select.
