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


