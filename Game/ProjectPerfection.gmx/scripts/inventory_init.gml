///inventory_init()

enum item_ids
{
    gun,
    sheild
};

enum item_quality
{
    common = 0,
    uncommon = 1,
    rare = 2,
    epic = 3,
    legendary = 4
}

enum inventory_slot
{
    weapon1 = 0,
    weapon2 = 1, 
    weapon3 = 2,
    weapon4 = 3,
    shield = 4
};

enum weapon_modifier
{
    rail,
    plasma,
    sword
};

enum weapon_index
{
    name,
    quality,
    item_id,
    modifier,
    damage,
    capacity,
    fire_timeout,
    fire_cooldown,
    reload_timeout,
    reload_cooldown,
    bullet_sprite,
    bullet_sprite_speed,
    bullet_sprite_color,
    sprite_count
};

enum shield_index
{
    item_id,
    max_health,
    recharge_delay,
    recharge_rate,
    name,
    quality,
    inv_sprite,
    world_sprite,
};


selected_slot = inventory_slot.weapon1;
inventory[0] = save_get_value(obj_save_data, "inv0", -1);
inventory[1] = save_get_value(obj_save_data, "inv1", -1);
inventory[2] = save_get_value(obj_save_data, "inv2", -1);
inventory[3] = save_get_value(obj_save_data, "inv3", -1);
inventory[4] = save_get_value(obj_save_data, "inv4", -1);


