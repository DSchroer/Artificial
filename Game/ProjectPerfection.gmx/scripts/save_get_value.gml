///save_get_value(save_object, name, default)
var save = argument0;
var name = argument1;
var def = argument2;

with(save)
{
    if(ds_map_exists(save_data, name))
    {
        return ds_map_find_value(save_data, name);
    }else{
        save_set_value(save, name, def);
        return def;
    }
}


