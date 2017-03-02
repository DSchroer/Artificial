///player_init()
entity_init();
max_health = 200;
current_health = max_health;
remaining_shield = 0;
shield_health_coefficient = 0.75;
shield_max_health = max_health * shield_health_coefficient;
shield_penalty_time = 0;
previous_shield_penalty_time = 0;
shield_recharge_delay_base = 5;
shield_recharge_delay = 5;
shield_recharge_rate_base = 0.1;
shield_recharge_rate = 0.1;

is_shield_active = save_get_value(obj_save_data, "shield", false);
player_compute_stats();

if(is_shield_active)
{
    remaining_shield = shield_max_health;
}
hide_inventory = false;
invincible = 0;
movement_this_frame = false;
friction_coeff = 0.14;
acceleration_coeff = 0.10;
inv_change_cd = 0;

// UI queue
textbox_queue = ds_queue_create();

// sounds
volume_mod = 1;
ds_list_add(hurt_sounds, snd_hurt1);
ds_list_add(hurt_sounds, snd_hurt2);
ds_list_add(hurt_sounds, snd_hurt3);
//ds_list_add(hurt_sounds, snd_hurt4);

old_tooltips = false;

//animation
image_speed = 0.25;

gun_angle = 0;
surface = surface_create(256, 256);

dead = false;

base_x = 128;
base_y = 200;

gun_x = -15;
gun_y = -61;
gun_base_dist = 13;
gun_dist = 13;
gun_recoil = 0;

arm_1_x = -20;
arm_1_y = -61;
arm_1_delta_dist = 8;
arm_1_angle_off = -25;

arm_2_x = 1;
arm_2_y = -61
arm_2_delta_dist = 27;
arm_2_angle_off = -15;


