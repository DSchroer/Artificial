///ui_draw_textbox_element()

// Textbox
if(ui_textbox_open())
{
    var text = ds_queue_head(obj_player.textbox_queue);
    var portrait = ds_queue_head(obj_player.portrait_queue);
    ui_draw_textbox(text, portrait);    
}

if(textbox_cooldown > 0)
{
    textbox_cooldown--;
}
