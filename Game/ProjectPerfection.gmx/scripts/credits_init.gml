///credits_init()
var dir = "Credits.txt";
show_debug_message(dir);
var file = file_text_open_read(dir);
titles = ds_list_create();
names = ds_list_create();
line_space = 32;

while(!file_text_eof(file))
{
    var line = file_text_readln(file);
    var index = string_pos(":", line);
    var title = string_copy(line, 0, index - 1);
    var name = string_copy(line, index + 1, string_length(line) - index - 2);
    
    ds_list_add(titles, title);
    ds_list_add(names, name);
}
file_text_close(file);

