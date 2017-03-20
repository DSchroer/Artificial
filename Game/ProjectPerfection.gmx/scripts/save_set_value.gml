///save_set_value(save_object, name, value)
var save = argument0;
var name = argument1;
var value = argument2;

with(save)
{
    if(ds_map_exists(save_data, name))
    {
        ds_map_delete(save_data, name);
    }

    if(is_bool(value))
    {
        jso_map_add_boolean(save_data, name, value);
    }
    else if(is_int32(value))
    {
        jso_map_add_integer(save_data, name, value);
    }
    else if(is_real(value))
    {
        jso_map_add_real(save_data, name, value);
    }
    else if(is_string(value))
    {
        jso_map_add_string(save_data, name, value);
    }
    else if(is_array(value))
    {
        jso_map_add_sublist(save_data, name, save_list_from_array(value))
    }
    
    dirty = true;
}


