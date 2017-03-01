///ui_draw_death_text()

if(dead)
{
    var width = display_get_gui_width();
    var height = display_get_gui_height();

    var message = "The Dungeon Defeated You";
    var scale = 3;        
    var xp = (width - string_width(message) * scale) / 2;
    var yp = 150;
    draw_text_transformed_color(xp, yp, message, scale, scale, 0, c_red, c_red, c_red, c_red, 1);
    
    message = "Preparing for reconstruction";
    scale = 2;        
    xp = (width - string_width(message) * scale) / 2;
    yp += 60;
    draw_text_transformed_color(xp, yp, message, scale, scale, 0, c_white, c_white, c_white, c_white, 1);
    

}
