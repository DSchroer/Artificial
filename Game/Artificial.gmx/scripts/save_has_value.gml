///save_has_value(save_object, name)
var save = argument0;
var name = argument1;

with(save)
{
    return ds_map_exists(save_data, name);
}

