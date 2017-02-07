///save_open(file)
file_name = working_directory + argument0;
save_data = -1;

if(file_exists(file_name))
{
    var data = "";
    var file = file_text_open_read(file_name);
    while(!file_text_eof(file))
    {
        data += file_text_readln(file);
    }
    file_text_close(file);
    
    save_data = json_decode(data);
}else{
    save_data = ds_map_create();
}

var key = ds_map_find_first(save_data);
for(var i = 0; i < ds_map_size(save_data); i++)
{
    var val = ds_map_find_value(save_data, key);
    if(ds_exists(val, ds_type_list))
    {
        ds_map_replace(save_data, key, save_create_array(val));
    }
    
    key = ds_map_find_next(save_data, key);
}


