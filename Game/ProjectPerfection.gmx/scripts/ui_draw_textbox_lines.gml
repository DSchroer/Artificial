///ui_draw_textbox_words(x, y, lines, background, autosize, xscale, yscale)
exit;
// Arguments
var xpos = argument0;
var ypos = argument1;
var lines = argument2;
var background = argument3;
var autosize = argument4;
var scale_factor_x = argument5;
var scale_factor_y = argument6;


// Bookkeeping for background things
var scale_factor_x = 2;
var scale_factor_y = 1;
var border_size_x = 32;
var border_size_y = 16;
var space_width = string_width(" ");
var textbox_width = scale_factor_x * sprite_get_width(background) - (2 * border_size_x);
var textbox_height = scale_factor_y * sprite_get_height(background) - (2 * border_size_y);
var text_height = string_height(" ");

// Do the best we can to closely fit the tooltip background to the text
if(autosize)
{
    textbox_width = 0;
    for(var i = 0; i < array_length_1d(words); i++)
    {
        textbox_width = max(textbox_width, string_width(lines[i]));
    }
    textbox_height = (array_length_1d(lines) + 1) * text_height;    
    scale_factor_x = (textbox_width + border_size_x * 2) / sprite_get_width(background);
    scale_factor_y = (textbox_height + border_size_y * 2) / sprite_get_height(background);
}


// Draw background
draw_sprite_ext(background, -1, xpos, ypos, scale_factor_x, scale_factor_y, 0, c_white, 1);

// Draw the text, line by line, word by word
var linex = xpos + border_size_x;
var liney = ypos + border_size_y;
var word_index = 0;
var remaining_space = textbox_width;
while(word_index < array_length_1d(lines))
{
    var word = lines[word_index];
    var word_width = string_width(word) + space_width;
    
    if(string_char_at(word, 0) == "|")
    {
            
    }    
    
    if(remaining_space < word_width)
    {
        linex = xpos + border_size_x;
        remaining_space = textbox_width;
        liney += text_height;
    }
        
    draw_text_colour(linex, liney, word, c_white, c_white, c_white, c_white, 1);

    word_index += 1;   
    linex += word_width;
    remaining_space -= word_width;
}




var t = "";
switch(t)
{
case "A":
break;
}


