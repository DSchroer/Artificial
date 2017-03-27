///ui_draw_journal()

if(!journal_is_open)
{
    exit;
}

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var width = display_get_gui_width();
var height = display_get_gui_height();
var back_width = width;
var back_height = height - 200;
var padding = 3;
var button_width = sprite_get_width(spr_journal_entry_button) ;
var button_height = 48 ;
var cell_width = 420;
var cell_height = 48;
var scroll_bar_size = 64;
var scroll_bar_width = 16;
var xp = (width / 2) - cell_width / 2 - 256 - 10 * padding;
var yp = 100;
var alpha_per = 0.75;
// Book contents
var max_sizes = book_get_max_sizes();
var book_contents = book_get_computer_hub_lore(story_get_chapter());
var sizes;
sizes[0] = save_get_value(obj_save_data, "lore", 0);

for(var i = 1; i < array_length_1d(book_contents); i++)
{
    sizes[i] = array_length_1d(book_contents[i]);
}
var titles;
titles[0] = "History of the Cube";
titles[1] = "The Guardians";
titles[2] = "Lyra";
titles[3] = "Research Notes";

// Navbar:

// Background
draw_set_alpha(alpha_per);
ui_set_colour("|artificial_navy");
draw_rectangle(xp, yp, xp + cell_width + scroll_bar_width + padding, yp + back_height, false);
draw_set_alpha(1.0);
var number_of_rows = floor((back_height - array_length_1d(titles) * cell_height) / cell_height);


var yoffset = 0;
var items_considered = 0;
for(var i = 0; i < array_length_1d(journal_is_open_slots); i++)
{
    // Draw wider buttons for "categories"
    
    draw_set_colour(c_gray);
    if(journal_active_category == i && journal_active_entry == -1)
    {
        draw_set_colour(c_aqua);
    }
    draw_set_alpha(0.75);
    draw_rectangle(xp + 2 * padding, yp + yoffset + 0.5 * padding, xp + cell_width - padding * 4, yp + yoffset + cell_height - padding * 0.5, false);
    draw_set_alpha(1.0);
    var title_string_ = titles[i] + "  (" + string(sizes[i]) + "/" + string(max_sizes[i]) + " found)"; 
    draw_set_colour(c_white);
    if(journal_is_open_slots[i])
    {
        draw_sprite(spr_white_down, -1, xp + 8, yp + yoffset + (cell_height - 16) / 2);
    }  
    else
    {
        draw_sprite(spr_white_right, -1, xp + 8, yp + yoffset + (cell_height - 16) / 2);
    }
    draw_text(xp + 32, yp + yoffset + (cell_height - string_height(title_string_)) / 2, title_string_);
    
    items_considered++;
    yoffset += cell_height;
     
    // Draw sublists of the categories, as much as space allows.   
    if(journal_is_open_slots[i])
    {
        var start_range = 0;
        var end_range = sizes[i];
        if(scroll_index - items_considered >= number_of_rows)
        {
            start_range += scroll_index - items_considered - number_of_rows + 1;          
        }
        items_considered += min(sizes[i], start_range);
        // Need to do some black magic with indices because we only want to take certain sublists.
        for(var j = start_range; j < end_range && number_of_rows > 0; j++)
        {
            //if(journal_active_category == i && journal_active_entry == j)
            //{
            draw_set_colour(make_colour_rgb(5, 5, 5));
            if(scroll_index == items_considered)
            {
                draw_set_colour(c_aqua);
                journal_active_category = i;
                journal_active_entry = j;
            }
            //}
            draw_set_alpha(0.75);
            draw_rectangle(xp + padding * 2, yp + yoffset + padding, xp + cell_width - 4 * padding, yp + yoffset + cell_height - padding, false );
            draw_set_alpha(1.0);
            
            draw_set_colour(c_white);
            var cell_contents_ = "Entry " + string(j + 1);
            draw_text(xp + padding * 15, yp + yoffset + (cell_height - string_height(cell_contents_)) / 2, cell_contents_);
            yoffset += cell_height;       
            number_of_rows--;
            items_considered++;
        }
    }
}

// Scroll bar
var size_sum = 0;
for(var i = 0; i < array_length_1d(sizes); i++)
{
    size_sum++;
    if(journal_is_open_slots[i])
    {
        size_sum += sizes[i];
    }
}

ui_set_colour("|black");
// Scroll bar background
draw_rectangle(xp + cell_width, yp + padding, 
               xp + cell_width + scroll_bar_width, yp + back_height - padding, false);
// Scroll bar button 
var scroll_start = (back_height - scroll_bar_size) * (scroll_index / max(1, (size_sum - 1)));
ui_set_colour("|gray");
draw_rectangle(xp + cell_width, yp + scroll_start, 
               xp + cell_width + scroll_bar_width, yp + scroll_start + scroll_bar_size, false);

// Input
// Controller
if(keymap_check(keycode.back))
{
    ui_close_journal();
}
if(keymap_check(keycode.interact))
{
    number_of_rows = floor((back_height - array_length_1d(titles) * cell_height) / cell_height);
    items_considered = 0;
    var done = false;
    for(var i = 0; i < array_length_1d(journal_is_open_slots) && !done; i++)
    {
        if(scroll_index == items_considered)
        {
            journal_is_open_slots[i] = !journal_is_open_slots[i];            
        }
        items_considered++;                
        if(journal_is_open_slots[i])
        {
        /*
            var start_range = 0;
            var end_range = sizes[i];
            if(scroll_index - items_considered >= number_of_rows)
            {
                start_range += scroll_index - items_considered - number_of_rows + 1;          
            }
            items_considered += min(sizes[i], start_range);
            
            for(var j = start_range; j < end_range && number_of_rows > 0; j++)
            {
                if(items_considered == scroll_index)
                {
                    journal_active_category = i;
                    journal_active_entry = j;
                    done = true;
                    break;
                }      
                number_of_rows--;
                items_considered++;
            }
            */
            items_considered += sizes[i];
        }
    }
}
if(journal_scroll_cooldown == 0)
{
    var haxis_ls = gamepad_axis_value(0, gp_axislh);
    var vaxis_ls = gamepad_axis_value(0, gp_axislv);
    if(abs(haxis_ls) > 0.35 || abs(vaxis_ls) > 0.35) 
    {
        var dir = point_direction(0, 0, haxis_ls, vaxis_ls);
        var magnitude = point_distance(0, 0, haxis_ls, vaxis_ls);
        journal_scroll_cooldown = floor(3 / magnitude);
        
        if(dir >= 0 && dir <= 180)
        {
            scroll_index--;
        }
        else
        {
            scroll_index++;
        }                
        scroll_index = clamp(scroll_index, 0, size_sum - 1);        
    }
}
if(journal_scroll_cooldown > 0)
{
    journal_scroll_cooldown--;
}

// Mouse
if(mouse_check_button(mb_left))
{    
    if(point_in_rectangle(mx, my, xp + cell_width, yp + padding * 2, xp + cell_width + scroll_bar_width, yp + back_height - padding * 4))
    {
        // Scroll bar
        percent = min((my - yp) / (back_height - scroll_bar_size), 1.0);
        scroll_index = round(percent * max(size_sum - 1, 1));    
    }
    else
    {
        // Other part of the Navbar. 
        number_of_rows = floor((back_height - array_length_1d(titles) * cell_height) / cell_height);   
        var done = false;    
        yoffset = 0;
        items_considered = 0;
        for(var i = 0; i < array_length_1d(journal_is_open_slots); i++)
        {
            if(point_in_rectangle(mx, my, xp + padding * 2, yp + yoffset, xp + cell_width - padding * 4, yp + yoffset + button_height))
            {
                journal_is_open_slots[i] = !journal_is_open_slots[i];        
                journal_active_category = i;
                journal_active_entry = -1;                    
                scroll_index = items_considered;
                break;
            }          
            items_considered++;
            yoffset += cell_height;
             
            if(journal_is_open_slots[i])
            {
                var start_range = 0;
                var end_range = sizes[i];
                if(scroll_index - items_considered >= number_of_rows)
                {
                    start_range += scroll_index - items_considered - number_of_rows + 1;          
                }
                items_considered += min(sizes[i], start_range);
                var extra = 0;
                if(end_range - start_range > number_of_rows)
                {
                    extra = end_range - start_range - number_of_rows;
                }
                
                for(var j = start_range; j < end_range && number_of_rows > 0; j++)
                {
                    if(point_in_rectangle(mx, my, xp + padding * 2, yp + yoffset, xp + cell_width - padding * 4, yp + yoffset + button_height))
                    {
                        journal_active_category = i;
                        journal_active_entry = j;
                        scroll_index = items_considered;
                        done = true;
                    }                    
                    yoffset += cell_height;         
                    number_of_rows--;
                    items_considered++;
                }                
                items_considered += extra;
            }
        }    
    }
}

// Textbox
if(journal_active_category != -1 && journal_active_entry != -1)
{
    var cont = book_contents[journal_active_category];
    var text = cont[journal_active_entry];
    
    ui_draw_textbox_ext(xp + cell_width + scroll_bar_width + padding * 6, yp + back_height - 226, text, 1.0, 512, 226);
}





