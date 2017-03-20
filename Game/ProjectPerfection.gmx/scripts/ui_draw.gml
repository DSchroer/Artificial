///ui_draw()

if(dead)
{
    ui_draw_death_text();
    exit;
}

if(is_paused())
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
ui_draw_tooltips();
