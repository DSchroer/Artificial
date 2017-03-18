///ui_draw_health()

var width = display_get_gui_width();
var height = display_get_gui_height();
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var xp = 10;
var yp = (height - sprite_get_height(spr_statusback) - 60);

var health_percent = current_health / max_health;
var shield_percent = player_shield_percent();

if(health_percent < 0.3 && low_health_flash_animation_cooldown <= 0)
{
    ui_flash_healthbar(spr_healthbar_lred);
    low_health_flash_animation_cooldown = 20 + 160 * (health_percent / 0.3);
}
else if(low_health_flash_animation_cooldown > 0)
{
    low_health_flash_animation_cooldown--;
}

// Health + Shield
// Handle flashing on damage hit

var shield_sprite = spr_shieldbar;
if(ui_shield_animation >= 1 && ui_shield_animation <= 2)
{
    shield_sprite = spr_shieldbar_white;   
    ui_shield_animation++;
}
else if(ui_shield_animation > 2 && ui_shield_animation <= 3)
{
    shield_sprite = spr_shieldbar_black;
    ui_shield_animation++;
}
else
{
    ui_shieldbar_animation = 0;
}

if(ui_healthbar_animation >= 1 && ui_healthbar_animation <= 3)
{
    ui_healthbar_animation++;
}
else if(ui_healthbar_animation > 3 && ui_healthbar_animation <= 4)
{
    health_sprite = spr_healthbar_black;
    ui_healthbar_animation++;
}
else
{
    ui_healthbar_animation = 0;
    health_sprite = spr_healthbar;
}

draw_sprite(spr_statusback, -1, xp, yp);
draw_sprite_part(health_sprite, -1, 0, 0, sprite_get_width(spr_healthbar) * health_percent - 4, sprite_get_height(spr_healthbar), xp, yp);
draw_sprite_part(shield_sprite, -1, 0, 0, sprite_get_width(spr_shieldbar) * shield_percent - 32, sprite_get_height(spr_shieldbar), xp, yp);
draw_sprite(spr_statusfront, -1, xp, yp);

// Ammo
var equipped_gun = inventory[selected_slot];
if(is_array(equipped_gun))
{
    var current_ammo = equipped_gun[weapon_index.remaining];
    var max_ammo = equipped_gun[weapon_index.capacity];    
    if(equipped_gun[weapon_index.reload_cooldown] > 0)
    {
        current_ammo = 0;    
    }
    
    var sprite_full = spr_ammo_full;
    var sprite_empty = spr_ammo_empty;
    switch(equipped_gun[weapon_index.modifier])
    {
    case weapon_modifier.rail:
        sprite_full = spr_laser_full;
        sprite_empty = spr_laser_empty;
        break;
    case weapon_modifier.plasma:
        sprite_full = spr_plasma_full;
        sprite_empty = spr_plasma_empty;
        break;
    }
    
    var i = 0;
    var maxrow = floor(sprite_get_width(spr_statusback) / sprite_get_width(sprite_full)) - 1;
    for(; i < current_ammo; i++)
    {
        draw_sprite(sprite_full, -1, xp + (floor(i % maxrow) * sprite_get_width(sprite_full)), yp + sprite_get_height(spr_statusback) + 4 + floor(i / maxrow) * (sprite_get_height(sprite_full) + 4));
    }
    for(; i < max_ammo; i++)
    {
        draw_sprite(sprite_empty, -1, xp + (floor(i % maxrow) * sprite_get_width(sprite_empty)), yp + sprite_get_height(spr_statusback) + 4 + floor(i / maxrow) * (sprite_get_height(sprite_empty) + 4));
    }
}




