///inventory_quality_color(quality)
switch(argument0)
{
case item_quality.legendary:
    return make_color_rgb(191, 100, 47);
case item_quality.epic:
    return make_color_rgb(128, 6, 173);
case item_quality.rare:
    return make_color_rgb(28, 41, 213);
case item_quality.uncommon:
    return make_color_rgb(26, 239, 15);
}
return c_white;
