///clone_register(source, destination_index)
var data_map = ds_map_create();

var obj = argument0;
var dest = argument1;

with(obj)
{
    ds_map_add(data_map, "image_alpha", image_alpha);
    ds_map_add(data_map, "image_angle", image_angle);
    ds_map_add(data_map, "image_xscale", image_xscale);
    ds_map_add(data_map, "image_yscale", image_yscale);
    
    if(clone_is_type(obj_trap))
    {
        ds_map_add(data_map, "timeout", timeout);
        ds_map_add(data_map, "damage", damage);
        ds_map_add(data_map, "one_shot", one_shot);
    }
}

ds_map_add(clone_list, dest, data_map);
