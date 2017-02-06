///inventory_create_weapon()

var weapon;
weapon[weapon_index.item_id] = item_ids.gun;
weapon[weapon_index.modifier] = weapon_modifier.plasma;
weapon[weapon_index.damage] = 25;
weapon[weapon_index.capacity] = 1;
weapon[weapon_index.fire_timeout] = 1;
weapon[weapon_index.fire_cooldown] = 0;
weapon[weapon_index.reload_timeout] = 10;
weapon[weapon_index.reload_cooldown] = 0;

weapon[weapon_index.bullet_sprite] = spr_bullet;
weapon[weapon_index.bullet_sprite_speed] = 1;
weapon[weapon_index.bullet_sprite_color] = color_random();

weapon[weapon_index.sprite_count] = 1;
weapon[weapon_index.sprite_count + 1] = spr_inv_rifle1;
weapon[weapon_index.sprite_count + 2] = color_random();

return weapon;
