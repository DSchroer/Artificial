///ui_get_quality_colour(quality)

var quality = argument0;

switch(quality)
{
case item_quality.common:
    return "|common";
case item_quality.uncommon:
    return "|uncommon";
case item_quality.rare:
    return "|rare";
case item_quality.epic:
    return "|epic";
case item_quality.legendary:
    return "|legendary";
default:
    return "Error undefined quality";
}



