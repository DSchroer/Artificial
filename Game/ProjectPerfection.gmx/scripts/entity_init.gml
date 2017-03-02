///entity_init()
max_health = 100;
current_health = max_health;
move_vec_x = 0;
move_vec_y = 0;
max_movement_speed = 8;
damage = 0;
damage_dir = 0;
damage_from = noone;
hurt_sounds = ds_list_create();
volume_mod = 1.2;

repulsion_force = 0.5;

hbox_x1 = -(sprite_get_xoffset(sprite_index) * image_xscale);
hbox_y1 = -(sprite_get_yoffset(sprite_index) * image_yscale);
hbox_x2 = hbox_x1 + sprite_width;
hbox_y2 = hbox_y1 + sprite_height;
