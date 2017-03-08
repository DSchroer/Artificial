///ui_textbox_queue(text)

var text = argument0;
with(obj_player)
{
    ds_queue_enqueue(textbox_queue, text);
    if(textbox_cooldown > 0)
    {
        textbox_cooldown = 30;
    }
}

