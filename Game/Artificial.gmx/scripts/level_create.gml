///level_create(width, height)
var width = argument0;
var height = argument1;

sfx_bkg_add_without_reset(bkg_desert2);

var instance = instance_create(0,0, obj_level);
with(instance)
{
    level_init(other.width, other.height);
}

return instance;
