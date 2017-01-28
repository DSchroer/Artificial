///inventory_init()

enum inventory_slot
{
    weapon1 = 0,
    weapon2 = 1, 
    weapon3 = 2,
    weapon4 = 3,
    shield = 4
};

enum weapon_type
{
    sword = 0
};

enum weapon_modifier
{
    rail = 0
};

enum weapon_index
{
    type = 0,
    modifier = 1,
    capacity = 2,
    fire_rate = 3,
    reload_time = 4,
    name = 5,
    damage = 6,
    inv_sprite = 7,
    world_sprite = 8
};

enum shield_index
{
    max_health = 0,
    recharge_delay = 1,
    recharge_rate = 2,
    name = 3,
    inv_sprite = 4,
    world_sprite = 5
};


selected_slot = inventory_slot.weapon1;
inventory[0] = save_get_value(obj_save_data, "inv0", -1);
inventory[1] = save_get_value(obj_save_data, "inv1", -1);
inventory[2] = save_get_value(obj_save_data, "inv2", -1);
inventory[3] = save_get_value(obj_save_data, "inv3", -1);
inventory[4] = save_get_value(obj_save_data, "inv4", -1);


