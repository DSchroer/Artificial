///ui_draw_journal()

if(!journal_is_open)
{
    exit;
}

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var width = display_get_gui_width();
var height = display_get_gui_height();
var xp = 100;
var yp = 100;
var button_width = sprite_get_width(spr_journal_entry_button);
var button_height = 48;

// Navbar:

// Background
draw_sprite(spr_lore_book, -1, xp, yp);
var number_of_rows = floor((sprite_get_height(spr_lore_book) - 3 * 64) / 48);

var sizes;
sizes[0] = 6;
sizes[1] = 10;
sizes[2] = 5;

var yoffset = 0;
var items_considered = 0;
for(var i = 0; i < array_length_1d(journal_is_open_slots); i++)
{
    // Draw wider buttons for "categories"
    var spr_used = spr_journal_entry_button;
    if(items_considered == scroll_index)
    {
        spr_used = spr_journal_entry_active;
    }
    draw_sprite_ext(spr_used, -1, xp, yp + yoffset, 1.3, 1, 0, c_white, 1);
    items_considered++;
    yoffset += 48;
     
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
            spr_used = spr_journal_entry_button;
            if(items_considered == scroll_index)
            {
                spr_used = spr_journal_entry_active;
            }
            
            debug_show_string("JAC:" + string(journal_active_category));
            debug_show_string("JAE:" + string(journal_active_entry));
            
            draw_sprite(spr_used, -1, xp, yp + yoffset);
            draw_text(xp, yp + yoffset, string(j));
            yoffset += 48;         
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
draw_rectangle(xp + sprite_get_width(spr_journal_entry_active) * 1.3, yp, 
               xp + sprite_get_width(spr_journal_entry_active) * 1.3 + 16, yp + sprite_get_height(spr_lore_book), false);
// Scroll bar button 
var sub_bar_size = 64;
var sub_start = (sprite_get_height(spr_lore_book) - sub_bar_size) * (scroll_index / (size_sum - 1));
var sub_bar_width = 16;
ui_set_colour("|gray");
draw_rectangle(xp + sprite_get_width(spr_journal_entry_active) * 1.3, yp + sub_start, 
               xp + sprite_get_width(spr_journal_entry_active) * 1.3 + sub_bar_width, yp + sub_start + sub_bar_size, false);

// Input
// Controller
if(keymap_check(keycode.back))
{
    ui_close_journal();
}
if(keymap_check(keycode.interact))
{
    number_of_rows = floor((sprite_get_height(spr_lore_book) - 3 * 64) / 48);
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




debug_show_string("JAC:" + string(journal_active_category));
debug_show_string("JAE:" + string(journal_active_entry));
debug_show_string("Scroll:" + string(scroll_index));

// Mouse
if(mouse_check_button_pressed(mb_left))
{    
    if(point_in_rectangle(mx, my, xp + sprite_get_width(spr_journal_entry_active) * 1.3, yp, xp + sprite_get_width(spr_journal_entry_active) * 1.3 + sub_bar_width, yp + sprite_get_height(spr_lore_book)))
    {
        percent = min((my - yp) / (sprite_get_height(spr_lore_book) - sub_bar_size), 1.0);
        scroll_index = round(percent * size_sum - 1);

    
    }
    else
    {
        number_of_rows = floor((sprite_get_height(spr_lore_book) - 3 * 64) / 48);        
        var done = false;    
        yoffset = 0;
        items_considered = 0;
        for(var i = 0; i < array_length_1d(journal_is_open_slots); i++)
        {
            if(point_in_rectangle(mx, my, xp, yp + yoffset, xp + button_width * 1.3, yp + yoffset + button_height))
            {
                journal_is_open_slots[i] = !journal_is_open_slots[i];        
                journal_active_category = i;
                journal_active_entry = -1;                    
                scroll_index = items_considered;
                break;
            }          
            items_considered++;
            yoffset += 48;
             
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
                    if(point_in_rectangle(mx, my, xp, yp + yoffset, xp + button_width, yp + yoffset + button_height))
                    {
                        journal_active_category = i;
                        journal_active_entry = j;
                        scroll_index = items_considered;
                        done = true;
                    }
                    
                    yoffset += 48;         
                    number_of_rows--;
                    items_considered++;
                }
                
                items_considered += extra;
            }
        }
    
    }

}

//


