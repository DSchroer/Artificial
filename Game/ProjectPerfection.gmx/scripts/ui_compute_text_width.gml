///ui_compute_text_height(lines)

var size = 0;
var space_size = string_width(" ");
for(var i = 0; i < array_length_1d(lines); i++)
{
    var t = 0;
    for(var j = 0; j < array_length_2d(lines, i); j++)
    {
        if(string_char_at(lines[i,j], 0) == "`")
        {
            t += 16 + space_size;
        }   
        else if(string_char_at(lines[i,j], 0) == "`")
        {
        }
        else
        {
            t += string_width(lines[i,j]) + space_size;
        }   
    }
    size = max(size, t);
}
return size;
