///inventory_get_tutorial_weapon2()

var weapon = inventory_create_weapon();
weapon[weapon_index.item_id] = item_ids.gun;
weapon[weapon_index.quality] = item_quality.common;
weapon[weapon_index.modifier] = weapon_modifier.normal;
weapon[weapon_index.damage] = 30;
weapon[weapon_index.accuracy] = 30;
weapon[weapon_index.capacity] = 15;
weapon[weapon_index.remaining] = 15;
weapon[weapon_index.fire_timeout] = 12;
weapon[weapon_index.fire_cooldown] = 0;
weapon[weapon_index.reload_timeout] = 120;
weapon[weapon_index.reload_cooldown] = 0;
weapon[weapon_index.name] = "Scattershot";
weapon[weapon_index.weapon_subtype] = weapon_subtype.auto_rifle;
weapon[weapon_index.bullet_sprite] = spr_bullet;
weapon[weapon_index.bullet_speed] = 20;
weapon[weapon_index.bullet_sprite_speed] = 1;
weapon[weapon_index.bullet_sprite_xscale] = 1;
weapon[weapon_index.bullet_sprite_yscale] = 1;
weapon[weapon_index.recoil_modifier] = 1.2;
weapon[weapon_index.sprite_count] = 2;
weapon[weapon_index.sprite_count + 1] = spr_rifle_base;
weapon[weapon_index.sprite_count + 2] = c_white;
weapon[weapon_index.sprite_count + 3] = spr_rifle_doku;
weapon[weapon_index.sprite_count + 4] = color_random();
return weapon;


