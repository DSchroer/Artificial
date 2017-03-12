///ui_textbox_open()
with(obj_player)
{
    return ds_queue_size(textbox_queue) > 0;
}

