///sfx_bkg_force(music)

var music = argument0;

sfx_bkg_stop();

with(instance_find(obj_sound, 0))
{
    ds_queue_enqueue(bkg_queue, music);
}
