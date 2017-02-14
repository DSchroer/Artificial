///save_list_from_array(array)

var list = jso_new_list();

for(var i = 0; i < array_length_1d(argument0); i++)
{
    var value = argument0[i];

    if(is_bool(value))
    {
        jso_list_add_boolean(list, value);
    }
    else if(is_int32(value))
    {
        jso_list_add_integer(list, value);
    }
    else if(is_real(value))
    {
        jso_list_add_real(list, value);
    }
    else if(is_string(value))
    {
        jso_list_add_string(list, value);
    }
}

return list;


