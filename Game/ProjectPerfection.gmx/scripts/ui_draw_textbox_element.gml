///ui_draw_textbox_element()

// Textbox
if(ds_queue_size(obj_player.textbox_queue) > 0)
{
    var text = ds_queue_head(obj_player.textbox_queue);
    ui_draw_textbox(text);    
}

if(textbox_cooldown > 0)
{
    textbox_cooldown--;
}
