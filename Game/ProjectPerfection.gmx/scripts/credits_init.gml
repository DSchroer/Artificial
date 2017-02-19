///credits_init()
var dir = "Credits.txt";
show_debug_message(dir);
var file = file_text_open_read(dir);
titles_index = ds_list_create();
lines = ds_list_create();
line_space = 32;

while(!file_text_eof(file))
{
    var line = file_text_readln(file);
    var index = string_pos("!", line);
    var title = index == 1;
    line = string_copy(line, index + 1, string_length(line) - index - 2);
    
    ds_list_add(titles_index, title);
    ds_list_add(lines, line);
}
file_text_close(file);


