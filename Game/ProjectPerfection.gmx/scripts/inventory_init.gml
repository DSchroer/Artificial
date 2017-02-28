///inventory_init()

enum item_ids
{
    gun,
    shield
};

enum item_quality
{
    common = 0,
    uncommon = 1,
    rare = 2,
    epic = 3,
    legendary = 4,
    unique = 5
}

enum inventory_slot
{
    weapon1 = 0,
    weapon2 = 1
};

enum weapon_modifier
{
    normal,
    rail,
    plasma,
    scatter,
    sword
};

enum weapon_index
{
    item_id,
    name,
    quality,
    modifier,
    weapon_subtype,
    damage,
    accuracy,
    capacity,
    remaining,
    fire_timeout,
    fire_cooldown,
    reload_timeout,
    reload_cooldown,
    bullet_sprite,
    bullet_sprite_speed,
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

enum weapon_subtype 
{
    pistol,
    auto_rifle,
    heavy_rifle,
    sniper_rifle,
    smg,
    extended_magazine,
    superfast_reload,
    machine_gun
};

selected_slot = inventory_slot.weapon1;
inventory[0] = save_get_value(obj_save_data, "inv0", -1);
inventory[1] = save_get_value(obj_save_data, "inv1", -1);

