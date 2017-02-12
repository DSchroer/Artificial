///player_init()
shield_active = false;
remaining_shield = 0;
shield_penalty_time = 0;
previous_shield_penalty_time = 0;
hide_inventory = false;

// Inventory
inventory_init();

// UI queue
textbox_queue = ds_queue_create();


