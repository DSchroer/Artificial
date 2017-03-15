///save_open(file)
file_name = working_directory + argument0;
save_data = -1;

if(debug_mode)
{
    file_name += ".txt";
}else{
    file_name += ".dat";
}

if(file_exists(file_name))
{
    if(debug_mode)
    {
        var data = "";
        var file = file_text_open_read(file_name);
        while(!file_text_eof(file))
        {
            data += file_text_readln(file);
        }
        file_text_close(file);
        
        if(!debug_mode)
        {
            data = decry
        }
        
        if(string_pos("{", data) != 0 && string_pos("}", data) != 0)
        {
            save_data = jso_decode_map(data);
        }else{
            save_data = jso_new_map();
        }    
    }else{
        var save_map = ds_map_secure_load(file_name);
        if(ds_exists(save_map, ds_type_map))
        {
            var data = ds_map_find_value(save_map, "data");
            if(is_string(data))
            {
                save_data = jso_decode_map(data);
            }else{
                save_data = jso_new_map();
            }
            ds_map_destroy(save_map);
        }else{
            save_data = jso_new_map();
        }
    }
}else{
    save_data = jso_new_map();
}

