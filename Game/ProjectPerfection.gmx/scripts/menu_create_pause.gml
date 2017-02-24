///menu_create_pause()

var base = display_get_gui_height() / 2;

pause_menu = instance_create(0, 0, obj_pause_menu);

button_resume = instance_create(0, 0, obj_button);
button_resume.user_event_index = 0;
button_resume.y = base;
button_resume.text = "Resume";
button_resume.center_x = true;
button_resume.index = 0;

button_main = instance_create(0, 0, obj_button);
button_main.user_event_index = 1;
button_main.y = button_resume.y + button_resume.sprite_height + 10;
button_main.text = "Main Menu";
button_main.center_x = true;
button_main.index = 1;
