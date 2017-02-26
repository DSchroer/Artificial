///menu_create_options_menu()

var padding = 10;

button_fullscreen = instance_create(0, 0, obj_button);
button_fullscreen.user_event_index = 10;
button_fullscreen.y = sprite_get_height(spr_logo) + 128;
button_fullscreen.text = "Fullscreen";
button_fullscreen.center_x = true;
button_fullscreen.index = 0;

slider_music = instance_create(0, 0, obj_slider);
slider_music.y = button_fullscreen.y + button_fullscreen.height + padding;
slider_music.user_event_index = 9;
slider_music.text = "Music";
slider_music.percent = save_get_value(obj_game_save, "music_volume", 1);
slider_music.center_x = true;
slider_music.index = 1;

slider_sound = instance_create(0, 0, obj_slider);
slider_sound.y = slider_music.y + slider_music.height + padding;
slider_sound.user_event_index = 9;
slider_sound.text = "Sound Effects";
slider_sound.percent = save_get_value(obj_game_save, "fx_volume", 1);
slider_sound.center_x = true;
slider_sound.index = 2;

button_back = instance_create(0, 0, obj_button);
button_back.y = slider_sound.y + slider_sound.height + padding;
button_back.user_event_index = 13;
button_back.text = "Back";
button_back.center_x = true;
button_back.index = 3;

index = -1;



