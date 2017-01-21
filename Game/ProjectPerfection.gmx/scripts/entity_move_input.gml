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
    //motion_add(90, 3);
}

// Down   
if(gamepad_button_check(0, gp_padd))
{
    //motion_add(270, 3);
}

// Right
if(gamepad_button_check(0, gp_padr))
{
    //motion_add(0, 3);
}

// Left
if(gamepad_button_check(0, gp_padl))
{
   // motion_add(180, 3);
}

// ABXY:
// (Attacks, interacting with world, etc...)

// A/cross 
if(gamepad_button_check(0, gp_face1))
{
}

// B/circle
if(gamepad_button_check(0, gp_face2))
{
}

// X/square
if(gamepad_button_check(0, gp_face3))
{
}

// Y/triangle
if(gamepad_button_check(0, gp_face4))
{
}

// Triggers/Shoulder buttons:
// Left button
if(gamepad_button_check(0, gp_shoulderl))
{
}

// Left Trigger
if(gamepad_button_check(0, gp_shoulderlb))
{
}

// Right Button
if(gamepad_button_check(0, gp_shoulderr))
{
}

// Right Trigger
if(gamepad_button_check(0, gp_shoulderrb))
{
}

// We can also push the left and right sticks with gp_stickl, gl_stickr
// Start and select are gp_start, gp_select.
