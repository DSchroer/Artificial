///player_init()
entity_init();
max_health = 200;
current_health = max_health;
shield_active = false;
remaining_shield = 0;
shield_penalty_time = 0;
previous_shield_penalty_time = 0;
hide_inventory = false;
invincible = 0;
movement_this_frame = false;
friction_coeff = 0.14;
acceleration_coeff = 0.10;
// Inventory
inventory_init();

// UI queue
textbox_queue = ds_queue_create();

// 
dungeon1_sfx_timer = -1;

// sounds
volume_mod = 1;
ds_list_add(hurt_sounds, snd_hurt1);
ds_list_add(hurt_sounds, snd_hurt2);
ds_list_add(hurt_sounds, snd_hurt3);
//ds_list_add(hurt_sounds, snd_hurt4);


