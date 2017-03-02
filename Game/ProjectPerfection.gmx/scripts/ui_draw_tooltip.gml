///ui_draw_tooltip(x, y, lines, colours, scales, stats, stat_colours)

// Arguments
var xpos = argument0;
var ypos = argument1;
var descriptions = argument2;
var description_colours = argument3;
var scales = argument4;
var stats = argument5;
var stat_colours = argument6;

// Bookkeeping for background things
var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();
var background = spr_health_tooltip_back;
var scale_factor_x = 2;
var scale_factor_y = 1;
var border_size_x = 32;
var border_size_y = 24;
var space_width = string_width(" ");
var text_height = string_height(" ");

// Do the best we can to closely fit the tooltip background to the text
var contents_width = 0;
for(var i = 0; i < array_length_1d(descriptions); i++)
{
    var width = string_width(descriptions[i]);
    if(stats[i] != -1)
    {
        width += string_width(stats[i]);
    }
    contents_width = max(contents_width, width);
}
var contents_height = (array_length_1d(descriptions)) * text_height;    
scale_factor_x = (contents_width + border_size_x * 2) / sprite_get_width(background);
scale_factor_y = (contents_height + border_size_y * 2) / sprite_get_height(background);

// Force the tooltip fully on screen, if applicable
if(xpos + contents_width + border_size_x * 2 > screen_width)
{
    xpos = screen_width - contents_width - border_size_x * 2;
}
if(ypos + contents_height + border_size_y * 2 > screen_height)
{
    ypos = screen_height - contents_height - border_size_y * 2;
}

// Draw background
draw_sprite_ext(background, -1, xpos, ypos, scale_factor_x, scale_factor_y, 0, c_white, 1);

// Draw the text, line by line
var linex = xpos + border_size_x;
var liney = ypos + border_size_y;
var line_index = 0;
while(line_index < array_length_1d(descriptions))
{
    var line = descriptions[line_index];
    var colour = description_colours[line_index];
    var scale = scales[line_index];
    var stat = stats[line_index];
    var stat_colour = stat_colours[line_index];

    // Stat
    if(stat != -1)
    {
        // Give stats a "  +" string infront of them
        if(scale == 1 && is_string(colour) && string_char_at(colour, 0) == "|")
        {
            ui_set_colour(stat_colour);
            draw_text_transformed(linex, liney, "+", scale, scale, 0);
            linex += string_width("+") * scale;
        } 
        
        // Draw stat amount in a different colour
        if(is_string(stat_colour) && string_char_at(stat_colour, 0) == "|")
        {
            ui_set_colour(stat_colour);
        }
        draw_text_transformed(linex, liney, stat, scale, scale, 0);
        linex += string_width(stat);
    }
    
    // Draw the description
    if(is_string(colour) && string_char_at(colour, 0) == "|")
    {
        ui_set_colour(colour);
    }
    
    if(stat == -1)
    {
        draw_text_transformed(linex, liney, line, scale, scale, 0);
        liney += text_height * (scale - 1);
    }
    else
    {
        if(scale > 1)
        {
            liney += text_height * (scale - 1);
        }
        draw_text_transformed(linex, liney, line, 1, 1, 0);
    }
    
    line_index += 1;   
    liney += text_height;
    linex = xpos + border_size_x;
}





