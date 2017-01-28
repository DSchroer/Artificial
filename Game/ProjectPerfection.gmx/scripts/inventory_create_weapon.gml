///inventory_create_weapon()

var weapon;
weapon[weapon_index.type] = weapon_type.gun;
weapon[weapon_index.modifier] = weapon_modifier.plasma;
weapon[weapon_index.capacity] = 1;
weapon[weapon_index.fire_rate] = 1;
weapon[weapon_index.reload_time] = 10;
weapon[weapon_index.name] = "Weapon";
weapon[weapon_index.damage] = 1;
weapon[weapon_index.bullet_sprite] = spr_bullet;
weapon[weapon_index.inv_sprite] = spr_inv_rifle1;
weapon[weapon_index.world_sprite] = spr_world_rifle1;

return weapon;
