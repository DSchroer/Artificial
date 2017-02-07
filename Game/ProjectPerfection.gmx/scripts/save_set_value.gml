///save_set_value(save_object, name, value)
var save = argument0;
var name = argument1;
var value = argument2;

with(save)
{
    if(!ds_map_exists(save_data, name))
    {
        ds_map_add(save_data, name, value);
    }
    else
    {
        ds_map_replace(save_data, name, value);
    }
}


