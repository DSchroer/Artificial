///entity_move_input()

if(is_paused() || dead || room == rm_transition || ui_is_blocking_window_open())
{
    if(ui_textbox_open() && keymap_check(keycode.interact))
    {
        ui_textbox_unqueue();
        if(!ui_textbox_open())
        {
            textbox_cooldown = 60;
        }
    }

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

if(keymap_check(keycode.inventory_move) && inv_change_cd <= 0)
{
    for(var i = 0; i < 2; i++)
    {
        selected_slot = (selected_slot + 1) % 2;
        if(inventory[selected_slot] != -1)
        {
            break;
        }
    }
    inv_change_cd = 6;
}
else if(inv_change_cd > 0)
{
    inv_change_cd--;
}

if(keymap_check(keycode.hide_tooltips))
{
    hide_tooltips = !hide_tooltips;
}


if(keyboard_check_pressed(vk_f12))
{
    old_tooltips = !old_tooltips;
}
if(keyboard_check_pressed(vk_f10))
{
    player_level_up();
}

if(keyboard_check_pressed(ord("J")))
{
    obj_progress.cube_parts += 1;
}
if(keyboard_check_pressed(ord("K")))
{
    obj_progress.cube_parts -= 1;
}
if(keyboard_check_pressed(ord("N")))
{
    save_set_value(obj_save_data, "lore", save_get_value(obj_save_data, "lore", 0) + 1);
}
if(keyboard_check_pressed(ord("M")))
{
    save_set_value(obj_save_data, "lore", save_get_value(obj_save_data, "lore", 0) - 1);

}



if(keyboard_check_pressed(vk_numpad1))
{
    inventory[selected_slot] = inventory_spawn_gun(10);
}
if(keyboard_check_pressed(vk_numpad2))
{
    inventory[selected_slot] = inventory_spawn_gun(60);
}
if(keyboard_check_pressed(vk_numpad3))
{
    inventory[selected_slot] = inventory_spawn_gun(120);
}
if(keyboard_check_pressed(vk_numpad4))
{
    room_goto(rm_test_alec);
}
if(keyboard_check_pressed(vk_numpad5))
{
    room_goto(rm_tutorial_final3);
}
if(keyboard_check_pressed(vk_numpad6))
{
    inventory[0] = -1;
    inventory[1] = -1;
    obj_player.is_shield_active = false;
    room_goto(rm_tutorial_final1);
}
if(keyboard_check_pressed(vk_numpad7))
{
    inventory[0] = -1;
    inventory[1] = -1;
    obj_player.is_shield_active = false;
    room_goto(rm_tutorial_final2);
}
if(keyboard_check_pressed(vk_numpad8))
{
    room_goto(rm_hub);
    obj_progress.tutorial = 9001;
}
if(keyboard_check_pressed(vk_numpad9))
{
    var rng = inventory_spawn_gun(100);
    
    var weapon = inventory_create_weapon();
    weapon[weapon_index.item_id] = item_ids.gun;
    weapon[weapon_index.quality] = item_quality.legendary;
    weapon[weapon_index.modifier] = rng[weapon_index.modifier];
    weapon[weapon_index.damage] = 125;
    weapon[weapon_index.accuracy] = 1;
    weapon[weapon_index.capacity] = 76;
    weapon[weapon_index.remaining] = 76;
    weapon[weapon_index.fire_timeout] = 3.5;
    weapon[weapon_index.fire_cooldown] = 0;
    weapon[weapon_index.reload_timeout] = 1;
    weapon[weapon_index.reload_cooldown] = 0;
    weapon[weapon_index.name] = "Unheard of Auto Rifle";
    weapon[weapon_index.weapon_subtype] = weapon_subtype.pistol;
    
    weapon[weapon_index.bullet_sprite] = spr_bullet;
    weapon[weapon_index.bullet_speed] = 20;
    weapon[weapon_index.bullet_sprite_speed] = 1;
    weapon[weapon_index.bullet_sprite_xscale] = 1;
    weapon[weapon_index.bullet_sprite_yscale] = 1;

    
    weapon[weapon_index.sprite_count] = 1;
    weapon[weapon_index.sprite_count + 1] = spr_rifle_base;
    weapon[weapon_index.sprite_count + 2] = color_random();

    inventory[selected_slot] = weapon;
}

// Left analogue stick:
var haxis_ls = gamepad_axis_value(0, gp_axislh);
var vaxis_ls = gamepad_axis_value(0, gp_axislv);

// Analogue sticks typically have a small set value even when untouched.
// This causes the player to move slightly when they shouldn't.
if(abs(haxis_ls) > 0.35 || abs(vaxis_ls) > 0.35) 
{
    // Compute the direction and magnitude of the analogue stick press.
    var dir = point_direction(0, 0, haxis_ls, vaxis_ls);
    var magnitude = point_distance(0, 0, haxis_ls, vaxis_ls);
    // 
    motion_add(dir, magnitude * 3);
}

var haxis_rs = gamepad_axis_value(0, gp_axisrh);
var vaxis_rs = gamepad_axis_value(0, gp_axisrv);

// Analogue sticks typically have a small set value even when untouched.
// This causes the player to move slightly when they shouldn't.
if(abs(haxis_rs) > 0.35 || abs(vaxis_rs) > 0.35) 
{
    // Compute the direction and magnitude of the analogue stick press.
    var dir = point_direction(0, 0, haxis_rs, vaxis_rs);
    var magnitude = point_distance(0, 0, haxis_rs, vaxis_rs);
    
    
    
    var px = display_get_gui_width() / 2;
    var py = display_get_gui_height() / 2;
    
    var sen = save_get_value(obj_game_save, "controller_sensitivity", 0.5);
    
    px = lerp(window_mouse_get_x(), px + lengthdir_x(magnitude * px, dir), 0.05 * ((0.5 + sen) * 3));
    py = lerp(window_mouse_get_y(), py + lengthdir_y(magnitude * py, dir), 0.05 * ((0.5 + sen) * 3));
    
    window_mouse_set( px, py);
}else if(save_get_value(obj_game_save, "aim", false)){

    var enemies = level_stub_find_all(obj_enemy);
    if(array_length_1d(enemies) > 0)
    {
        var dir = 0;
        var dist = 1000;
        for(var i = 0; i < array_length_1d(enemies); i++)
        {
            var enemy = enemies[i];
            if(point_distance(x, y - 61, enemy.x, enemy.y - (enemy.sprite_height / 2)) < dist)
            {
                dir = point_direction(x, y - 61, enemy.x, enemy.y - (enemy.sprite_height / 2));
                dist = point_distance(x, y - 61, enemy.x, enemy.y - (enemy.sprite_height / 2));
            }
        }
        
        var px = display_get_gui_width() / 2;
        var py = display_get_gui_height() / 2;
        
        var magnitude = max(0.2, min( 0.8, dist / px));
        
        px = lerp(window_mouse_get_x(), px + lengthdir_x(magnitude * px, dir), 0.05);
        py = lerp(window_mouse_get_y(), py + lengthdir_y(magnitude * py, dir), 0.05);
        
        window_mouse_set( px, py);
    }
}



