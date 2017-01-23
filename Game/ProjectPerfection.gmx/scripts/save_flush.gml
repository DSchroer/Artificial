///save_flush()
var data = json_encode(save_data);
var file = file_text_open_write(file_name);
file_text_write_string(file, data);
file_text_close(file)
