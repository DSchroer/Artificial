///save_get_value(save_object, name, default)
var save = argument0;
var name = argument1;
var def = argument2;

with(save)
{
    var value1 = jso_map_get(save_data, name);
    var type = jso_map_get_type(save_data, name);
    
    if(type == jso_type_list)
    {
        value1 = save_create_array(value1);
    }
    
    if(value1 == jso_value_of_null || is_undefined(value1))
    {
        return def;
    }
    return value1;
}


