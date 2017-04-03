///sfx_bkg_add(sound)
var sound = argument0;
with(instance_find(obj_sound, 0))
{
    ds_queue_enqueue(bkg_queue, sound);
}

