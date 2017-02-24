///menu_create_main_menu()

var padding = 10;

logo = instance_create(0, 0, obj_logo);
logo.y = 64;
logo.center_x = true;

button_new = instance_create(0, 0, obj_button);
button_new.user_event_index = 12;
button_new.y = sprite_get_height(spr_logo) + 128;
button_new.text = "New Game";
button_new.center_x = true;
button_new.index = 0;

button_load = instance_create(0, 0, obj_button);
button_load.user_event_index = 11;
button_load.y = button_new.y + button_new.height + padding;
button_load.text = "Load Game";
button_load.center_x = true;
button_load.index = 1;

button_options = instance_create(0, 0, obj_button);
button_options.user_event_index = 14;
button_options.y = button_load.y + button_load.height + padding;
button_options.text = "Options";
button_options.center_x = true;
button_options.index = 2;

button_credits = instance_create(0, 0, obj_button);
button_credits.user_event_index = 8;
button_credits.y = button_options.y + button_load.height + padding;
button_credits.text = "Credits";
button_credits.center_x = true;
button_credits.index = 3;

button_exit = instance_create(0, 0, obj_button);
button_exit.user_event_index = 15;
button_exit.y = button_credits.y + button_options.height + padding;
button_exit.text = "Exit";
button_exit.center_x = true;
button_exit.index = 4;



