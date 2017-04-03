///clone_set_inst(inst, map)
var inst = argument0;
var map = argument1;

with(inst)
{
    image_alpha = ds_map_find_value(map, "image_alpha");
    image_angle = ds_map_find_value(map, "image_angle");
    image_xscale = ds_map_find_value(map, "image_xscale");
    image_yscale = ds_map_find_value(map, "image_yscale");
    
    if(clone_is_type(obj_trap))
    {
        timeout = ds_map_find_value(map, "timeout");
        damage = ds_map_find_value(map, "damage");
        one_shot = ds_map_find_value(map, "one_shot");
    }
}

ds_map_destroy(map);
