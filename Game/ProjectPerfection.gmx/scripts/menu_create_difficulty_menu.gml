///menu_create_difficulty_menu()

var padding = 10;

logo_difficulty = instance_create(0, 0, obj_logo);
logo_difficulty.y = 64;
logo_difficulty.center_x = true;

button_easy = instance_create(0, 0, obj_button);
button_easy.user_event_index = 6;
button_easy.y = sprite_get_height(spr_logo) + 128;
button_easy.text = "Easy Difficulty";
button_easy.center_x = true;
button_easy.image_xscale = 1.3;
button_easy.index = 0;

button_normal = instance_create(0, 0, obj_button);
button_normal.user_event_index = 5;
button_normal.y = button_easy.y + button_easy.height + padding;
button_normal.text = "Normal Difficulty";
button_normal.center_x = true;
button_normal.image_xscale = 1.3;
button_normal.index = 1;

button_hard = instance_create(0, 0, obj_button);
button_hard.user_event_index = 4;
button_hard.y = button_normal.y + button_normal.height + padding;
button_hard.text = "Nightmare Difficulty";
button_hard.center_x = true;
button_hard.image_xscale = 1.3;
button_hard.index = 2;

button_exit_diff = instance_create(0, 0, obj_button);
button_exit_diff.user_event_index = 13;
button_exit_diff.y = button_hard.y + button_hard.height + padding;
button_exit_diff.text = "Back";
button_exit_diff.center_x = true;
button_exit_diff.image_xscale = 1.3;
button_exit_diff.index = 4;

index = -1;


