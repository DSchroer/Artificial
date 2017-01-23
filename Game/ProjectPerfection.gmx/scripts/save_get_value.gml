///save_get_value(name, default)
var name = argument0;
var def = argument1;

if(ds_map_exists(save_data, name))
{
    return ds_map_find_value(save_data, name);
}else{
    return def;
}

