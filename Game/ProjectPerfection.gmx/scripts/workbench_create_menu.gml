///workbench_create_menu()

var width = display_get_gui_width();
var height = display_get_gui_height();

created = true;
background_pos_x = (width - sprite_get_width(spr_workbench)) / 2;
background_pos_y = (height - sprite_get_height(spr_workbench)) / 2;
var padding = 10;

with(obj_player)
{
    open_workbench = true;
}


button_upgrade_health = instance_create(0, 0, obj_button);
button_upgrade_health.user_event_index = 12;
button_upgrade_health.y = background_pos_y + 100;
button_upgrade_health.text = "Upgrade Max Shield";
button_upgrade_health.center_x = true;
button_upgrade_health.index = 0;
button_upgrade_health.image_xscale = 1.2;
button_upgrade_health.image_yscale = 0.7;
button_upgrade_health.text_scale = 1.0;

button_upgrade_recharge = instance_create(0, 0, obj_button);
button_upgrade_recharge.user_event_index = 13;
button_upgrade_recharge.y = button_upgrade_health.y + button_upgrade_health.height * button_upgrade_health.image_yscale + padding;
button_upgrade_recharge.text = "Upgrade Recharge Rate";
button_upgrade_recharge.center_x = true;
button_upgrade_recharge.index = 1;
button_upgrade_recharge.image_xscale = 1.2;
button_upgrade_recharge.image_yscale = 0.7;
button_upgrade_recharge.text_scale = 1.0;

button_upgrade_delay = instance_create(0, 0, obj_button);
button_upgrade_delay.user_event_index = 14;
button_upgrade_delay.y = button_upgrade_recharge.y + button_upgrade_recharge.height * button_upgrade_recharge.image_yscale + padding;
button_upgrade_delay.text = "Upgrade Recharge Delay";
button_upgrade_delay.center_x = true;
button_upgrade_delay.index = 2;
button_upgrade_delay.image_xscale = 1.2;
button_upgrade_delay.image_yscale = 0.7;
button_upgrade_delay.text_scale = 1.0;

button_close = instance_create(0, 0, obj_button);
button_close.user_event_index = 15;
button_close.y = button_upgrade_delay.y + button_upgrade_delay.height * button_upgrade_delay.image_yscale + padding;
button_close.text = "Close";
button_close.center_x = true;
button_close.index = 3;
button_close.image_xscale = 1.2;
button_close.image_yscale = 0.7;
button_close.text_scale = 1.0;

workbench_update_tooltips();
