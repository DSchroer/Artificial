///ui_draw_textbox_pos(x, y, text)

// Arguments
var xpos = argument0;
var ypos = argument1;
var text = argument2;

// Split the string into words
var slot = 0;
var words; 
var temp = ""; 
for (var i = 1; i < (string_length(text) + 1); i++) 
{
    var char = string_char_at(text, i);
    if (char == " ") 
    {
        words[slot] = temp; //add this word to the array
        slot++;
        temp = "";
    } 
    else 
    {
        temp = temp + char;
        words[slot] = temp;
    }
}

// Bookkeeping for background things
var background = spr_textback;
var scale_factor_x = 1.2;
var scale_factor_y = 1.2;
var border_size_x = 16;
var border_size_y = 16;
var space_width = string_width(" ");
var textbox_width = scale_factor_x * sprite_get_width(background) - (2 * border_size_x);
var textbox_height = scale_factor_y * sprite_get_height(background) - (2 * border_size_y);
var text_height = string_height(" ");

// Draw background
draw_sprite_ext(background, -1, xpos, ypos, scale_factor_x, scale_factor_y, 0, c_white, 1);

draw_set_colour(c_white);

// Draw the text, line by line, word by word
var linex = xpos + border_size_x;
var liney = ypos + border_size_y;
var word_index = 0;
var remaining_space = textbox_width;
while(word_index < array_length_1d(words))
{
    var word = words[word_index];
    var word_width = string_width(word) + space_width;
    
    if(string_char_at(word, 0) == "|")
    {
        ui_set_colour(word);
    }    
    else if(string_char_at(word, 0) == "`")
    {
        word_width = 16;
        // Draw a 16x16 image
        if(remaining_space < word_width)
        {
            linex = xpos + border_size_x;
            remaining_space = textbox_width;
            liney += text_height;
        }
        
        switch(word)
        {
        case "`a":
            ui_draw_icon(linex, liney, spr_controller_a);            
            break;
        case "`b":
            ui_draw_icon(linex, liney, spr_controller_b);            
            break;
        case "`x":
            ui_draw_icon(linex, liney, spr_controller_x);            
            break;
        case "`y":
            ui_draw_icon(linex, liney, spr_controller_y);            
            break;
        case "`l":
            ui_draw_icon(linex, liney, spr_controller_dleft);            
            break;
        case "`r":
            ui_draw_icon(linex, liney, spr_controller_dright);            
            break;
        case "`d":
            ui_draw_icon(linex, liney, spr_controller_ddown);            
            break;
        case "`u":
            ui_draw_icon(linex, liney, spr_controller_dup);            
            break;
        case "`s":
            word_width = 8;
            break;
        case "`br":
            word_width = 0;
            linex = xpos + border_size_x;
            remaining_space = textbox_width;
            liney += text_height;
            break;
        }

        

        linex += word_width;
        remaining_space -= word_width;
    }
    else 
    {
        // Draw text
        if(remaining_space < word_width)
        {
            linex = xpos + border_size_x;
            remaining_space = textbox_width;
            liney += text_height;
        }
        draw_text(linex, liney, word);
        linex += word_width;
        remaining_space -= word_width;
    }        

    word_index += 1;   
}



