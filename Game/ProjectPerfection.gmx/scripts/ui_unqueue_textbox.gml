///ui_unqueue_textbox()

if(textbox_cooldown <= 0)
{
    ds_queue_dequeue(textbox_queue);
    textbox_cooldown = 30;
}

