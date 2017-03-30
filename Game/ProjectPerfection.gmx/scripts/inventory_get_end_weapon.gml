///inventory_get_end_weapon()

var weapon = inventory_create_weapon();
weapon[weapon_index.item_id] = item_ids.gun;
weapon[weapon_index.quality] = item_quality.unique;
weapon[weapon_index.modifier] = weapon_modifier.rail;
weapon[weapon_index.damage] = 100000;
weapon[weapon_index.accuracy] = 1;
weapon[weapon_index.capacity] = 20;
weapon[weapon_index.remaining] = 20;
weapon[weapon_index.fire_timeout] = 10;
weapon[weapon_index.fire_cooldown] = 0;
weapon[weapon_index.reload_timeout] = 60;
weapon[weapon_index.reload_cooldown] = 0;
weapon[weapon_index.name] = "Nodomus";
weapon[weapon_index.weapon_subtype] = weapon_subtype.sniper_rifle;
weapon[weapon_index.bullet_sprite] = spr_rail;
weapon[weapon_index.bullet_speed] = 20;
weapon[weapon_index.bullet_sprite_speed] = 1;
weapon[weapon_index.bullet_sprite_xscale] = 1;
weapon[weapon_index.bullet_sprite_yscale] = 1;
weapon[weapon_index.recoil_modifier] = 0.2;
weapon[weapon_index.sprite_count] = 2;
weapon[weapon_index.sprite_count + 1] = spr_rifle_base;
weapon[weapon_index.sprite_count + 2] = c_white;
weapon[weapon_index.sprite_count + 3] = spr_rifle_reflex;
weapon[weapon_index.sprite_count + 4] = color_random();
return weapon;


