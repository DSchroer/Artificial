///menu_create_main_menu()

logo = instance_create(0, 0, obj_logo);
logo.y = 0;
logo.center_x = true;

button_new = instance_create(0, 0, obj_button);
button_new.user_event_index = 12;
button_new.y = sprite_get_height(spr_logo) + 64;
button_new.text = "New Game";
button_new.center_x = true;

button_load = instance_create(0, 0, obj_button);
button_load.user_event_index = 11;
button_load.y = button_new.y + 64;
button_load.text = "Load Game";
button_load.center_x = true;

button_options = instance_create(0, 0, obj_button);
button_options.user_event_index = 14;
button_options.y = button_load.y + 64;
button_options.text = "Options";
button_options.center_x = true;

button_exit = instance_create(0, 0, obj_button);
button_exit.user_event_index = 15;
button_exit.y = button_options.y + 64;
button_exit.text = "Exit";
button_exit.center_x = true;



