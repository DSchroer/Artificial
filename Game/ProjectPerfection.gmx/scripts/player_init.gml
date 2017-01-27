enum inventory_slot
{
    weapon1 = 0,
    weapon2 = 1, 
    weapon3 = 2,
    weapon4 = 3,
    shield = 4
};

enum locker_slot
{
    weapon = 0,
    shield = 1
}

entity_init(); 

inventory_open = false;
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

// Locker
locker[0] = undefined;
locker[1] = undefined;
