///sfx_bkg_add(sound)
var sound = argument0;
with(obj_player)
{
    ds_queue_enqueue(bkg_queue, sound);
}

