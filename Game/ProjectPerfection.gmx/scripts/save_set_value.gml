///save_set_value(name, value)
var name = argument0;
var value = argument1;

if(!ds_map_exists(save_data, name))
{
    ds_map_add(save_data, name, value);
}else{
    ds_map_replace(save_data, name, value);
}

