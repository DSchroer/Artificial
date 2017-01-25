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
inventory[0] = undefined;
inventory[1] = undefined;
inventory[2] = undefined;
inventory[3] = undefined;
inventory[4] = undefined;
