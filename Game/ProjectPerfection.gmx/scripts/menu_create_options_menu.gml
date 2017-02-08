///menu_create_options_menu()

button_fullscreen = instance_create(0, 0, obj_button);
button_fullscreen.user_event_index = 10;
button_fullscreen.y = sprite_get_height(spr_logo) + 64;
button_fullscreen.text = "Toggle Fullscreen";
button_fullscreen.center_x = true;

slider_music = instance_create(0, 0, obj_slider);
slider_music.y = button_fullscreen.y + 64;
slider_music.user_event_index = 9;
slider_music.text = "Load Game";
slider_music.center_x = true;

slider_sound = instance_create(0, 0, obj_slider);
slider_sound.y = slider_music.y + 64;
slider_sound.user_event_index = 9;
slider_sound.text = "Options";
slider_sound.center_x = true;

button_back = instance_create(0, 0, obj_button);
button_back.y = slider_sound.y + 64;
button_back.user_event_index = 13;
button_back.text = "Back";
button_back.center_x = true;




