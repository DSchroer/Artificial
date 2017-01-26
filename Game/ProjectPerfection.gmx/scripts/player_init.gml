enum inventory_slot
{
    weapon1 = 0,
    weapon2 = 1, 
    weapon3 = 2,
    weapon4 = 3,
    shield = 4
};

entity_init(); 

shield_active = false;
remaining_shield = 0;
shield_penalty_time = 0;

// Inventory
selected_slot = inventory_slot.weapon1;
inventory[0] = save_get_value(obj_save_data, "inv0", -1);
inventory[1] = save_get_value(obj_save_data, "inv1", -1);
inventory[2] = save_get_value(obj_save_data, "inv2", -1);
inventory[3] = save_get_value(obj_save_data, "inv3", -1);
inventory[4] = save_get_value(obj_save_data, "inv4", -1);
