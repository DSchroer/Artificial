///save_get_value(save_object, name, default)
var save = argument0;
var name = argument1;
var def = argument2;

with(save)
{
    var value = jso_map_get(save_data, name);
    var type = jso_map_get_type(save_data, name);
    
    if(type == jso_type_list)
    {
        value = save_create_array(value);
    }
    
    if(value == jso_value_of_null || is_undefined(value))
    {
        return def;
    }
    return value;
}


