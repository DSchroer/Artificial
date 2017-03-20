///ui_draw()

if(is_paused() || dead)
{
    exit;
}
if(room == rm_tutorial_cinematic)
{
    ui_draw_textbox_element();
    exit;
}

ui_draw_health();
ui_draw_inventory();
ui_draw_boss_health();
ui_draw_action_indicators();
ui_draw_textbox_element();
ui_draw_death_text();
ui_draw_tooltips();
