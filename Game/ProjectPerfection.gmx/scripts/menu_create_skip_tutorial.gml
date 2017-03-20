///menu_create_skip_tutorial()

var padding = 10;

logo_skip = instance_create(0, 0, obj_logo);
logo_skip.y = 64;
logo_skip.center_x = true;

button_play_tutorial = instance_create(0, 0, obj_button);
button_play_tutorial.user_event_index = 2;
button_play_tutorial.y = sprite_get_height(spr_logo) + 128;
button_play_tutorial.text = "Play Tutorial";
button_play_tutorial.center_x = true;
button_play_tutorial.index = 0;

button_skip_tutorial = instance_create(0, 0, obj_button);
button_skip_tutorial.user_event_index = 3;
button_skip_tutorial.y = button_play_tutorial.y + button_play_tutorial.height + padding;
button_skip_tutorial.text = "Skip Tutorial";
button_skip_tutorial.center_x = true;
button_skip_tutorial.index = 1;

button_skip_close = instance_create(0, 0, obj_button);
button_skip_close.user_event_index = 13;
button_skip_close.y = button_skip_tutorial.y + button_skip_tutorial.height + padding;
button_skip_close.text = "Close";
button_skip_close.center_x = true;
button_skip_close.index = 2;

index = -1;


