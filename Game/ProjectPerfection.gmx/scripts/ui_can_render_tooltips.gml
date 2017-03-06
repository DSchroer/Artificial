///ui_can_render_tooltips()

with(obj_player)
{
    return ds_queue_size(textbox_queue) == 0 && !open_workbench;
}

