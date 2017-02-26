///sfx_bkg_size()
with(instance_find(obj_sound, 0))
{
    return ds_queue_size(bkg_queue);
}

