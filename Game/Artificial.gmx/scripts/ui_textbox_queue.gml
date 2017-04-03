///ui_textbox_queue(text, portrait)

var text = argument0;
var portrait = argument1;

with(obj_player)
{
    ds_queue_enqueue(textbox_queue, text);
    ds_queue_enqueue(portrait_queue, portrait);

    if(textbox_cooldown > 0)
    {
        textbox_cooldown = 20;
    }
}

