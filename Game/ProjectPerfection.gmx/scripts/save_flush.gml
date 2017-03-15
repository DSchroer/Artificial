///save_flush(save_object)
var save = argument0;

with(save)
{
    if(debug_mode)
    {
        var data = jso_encode_map(save_data);
        var file = file_text_open_write(file_name);
        file_text_write_string(file, data);
        file_text_close(file);
    }else{
        var data = jso_encode_map(save_data);
        var save_map = ds_map_create();
        ds_map_set(save_map, "data", data);
        ds_map_secure_save(save_map, file_name);
        ds_map_destroy(save_map);
    }
}

