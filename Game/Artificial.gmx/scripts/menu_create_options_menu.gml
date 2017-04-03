///menu_create_options_menu(basey)

var basey = argument0;

var padding = 10;

button_fullscreen = instance_create(0, 0, obj_button);
button_fullscreen.user_event_index = 10;
button_fullscreen.y = sprite_get_height(spr_logo) + 128;
button_fullscreen.text = "Fullscreen";
button_fullscreen.center_x = true;
button_fullscreen.index = 0;

if(basey != 0)
{
    button_fullscreen.y = basey;
}

var vsync = save_get_value(obj_game_save, "vsync", false);
var vsync_text = "Enable ";
if(vsync)
{
    vsync_text = "Disable ";
}

button_vsync = instance_create(0, 0, obj_button);
button_vsync.user_event_index = 7;
button_vsync.event_data = 0;
button_vsync.y = button_fullscreen.y + button_fullscreen.height + padding;
button_vsync.text = vsync_text + "VSync";
button_vsync.center_x = true;
button_vsync.index = 1;

var auto_aim = save_get_value(obj_game_save, "aim", false);
var auto_aim_text = "Enable ";
if(auto_aim)
{
    auto_aim_text = "Disable ";
}

button_aim = instance_create(0, 0, obj_button);
button_aim.user_event_index = 7;
button_aim.event_data = 1;
button_aim.y = button_vsync.y + button_vsync.height + padding;
button_aim.text = auto_aim_text + "Aimbot";
button_aim.center_x = true;
button_aim.index = 2;

slider_ctrlr = instance_create(0, 0, obj_slider);
slider_ctrlr.y = button_aim.y + button_aim.height + padding;
slider_ctrlr.user_event_index = 9;
slider_ctrlr.text = "Sensitivity";
slider_ctrlr.percent = save_get_value(obj_game_save, "controller_sensitivity", 0.5);
slider_ctrlr.center_x = true;
slider_ctrlr.index = 3;

slider_music = instance_create(0, 0, obj_slider);
slider_music.y = slider_ctrlr.y + slider_ctrlr.height + padding;
slider_music.user_event_index = 9;
slider_music.text = "Music";
slider_music.percent = save_get_value(obj_game_save, "music_volume", 1);
slider_music.center_x = true;
slider_music.index = 4;

slider_sound = instance_create(0, 0, obj_slider);
slider_sound.y = slider_music.y + slider_music.height + padding;
slider_sound.user_event_index = 9;
slider_sound.text = "Sound Effects";
slider_sound.percent = save_get_value(obj_game_save, "fx_volume", 1);
slider_sound.center_x = true;
slider_sound.index = 5;

button_back = instance_create(0, 0, obj_button);
button_back.y = slider_sound.y + slider_sound.height + padding;
button_back.user_event_index = 13;
button_back.text = "Back";
button_back.center_x = true;
button_back.index = 6;

index = -1;



