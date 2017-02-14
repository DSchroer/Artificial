///ui_set_colour(text)
        
var text = argument0;

switch(text)
{
case "|legendary":
    draw_set_colour(make_color_rgb(191, 100, 47));
    break;
case "|epic":
    draw_set_colour(make_color_rgb(128, 6, 173));
    break;
case "|rare":
    draw_set_colour(make_color_rgb(28, 41, 213));
    break;
case "|uncommon":
    draw_set_colour(make_color_rgb(26, 239, 15));
    break;
case "|common":
    draw_set_colour(c_white);
    break;
case "|rail":
    draw_set_colour(make_color_rgb(106, 49, 119));
    break;
case "|plasma":
    draw_set_colour(make_color_rgb(191, 88, 215));
    break;
case "|health":
    draw_set_colour(make_color_rgb(5, 164, 58));
    break;
case "|shield":
    draw_set_colour(make_color_rgb(0, 180, 241));
    break;
case "|white":
    draw_set_colour(c_white);
    break;
case "|lblue":
    draw_set_colour(make_color_rgb(91, 170, 241));
    break;
case "|tooltip":
    draw_set_colour(make_color_rgb(80, 79, 145));
    break;
case "|gray":
    draw_set_colour(make_color_rgb(128, 128, 128));
    break;
case "|green":
    draw_set_colour(c_green);
    break;
case "|aqua":
    draw_set_colour(c_aqua);
    break;

}

