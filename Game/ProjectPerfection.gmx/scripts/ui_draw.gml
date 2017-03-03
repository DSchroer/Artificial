///ui_draw()

ui_draw_health();
ui_draw_inventory();
ui_draw_boss_health();
ui_draw_action_indicators();
ui_draw_textbox_element();
ui_draw_death_text();
/*
var boss_percent = ui_get_boss_health_percent();
if(boss_percent > 0)
{
    draw_set_alpha(0.95 - .8 * (boss_percent));
    var width = display_get_gui_width();
    var height = display_get_gui_height();
    draw_rectangle_color(0, 0, width, height, c_black, c_black, c_black, c_black, false);
    
    draw_set_alpha(1);
}
*/
