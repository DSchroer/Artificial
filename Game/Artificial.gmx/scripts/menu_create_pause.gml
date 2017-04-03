///menu_create_pause()

var base = (display_get_gui_height() / 2) - 100;

button_resume = instance_create(0, 0, obj_button);
button_resume.user_event_index = 0;
button_resume.y = base;
button_resume.text = "Resume";
button_resume.center_x = true;
button_resume.index = 0;

button_hub = instance_create(0, 0, obj_button);
button_hub.user_event_index = 2;
button_hub.y =  button_resume.y + button_resume.sprite_height + 10;
button_hub.text = "Go To Hub";
button_hub.center_x = true;
button_hub.index = 1;

button_options = instance_create(0, 0, obj_button);
button_options.user_event_index = 14;
button_options.y =  button_hub.y + button_hub.sprite_height + 10;
button_options.text = "Options";
button_options.center_x = true;
button_options.index = 2;

button_main = instance_create(0, 0, obj_button);
button_main.user_event_index = 1;
button_main.y = button_options.y + button_options.sprite_height + 10;
button_main.text = "Main Menu";
button_main.center_x = true;
button_main.index = 3;

