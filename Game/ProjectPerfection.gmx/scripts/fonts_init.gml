///fonts_init()
font_map = ds_map_create();

enum fonts{
    pixel
}

var order = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!.?()$',/\+-";

var fnt = font_add_sprite_ext(spr_base_font, order, true, 2);
draw_set_font(fnt);

ds_map_add(font_map, fonts.pixel, fnt); 
