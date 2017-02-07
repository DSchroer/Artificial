///ui_get_quality_string(quality)

var quality = argument0;

switch(quality)
{
case item_quality.common:
    return "Common";
case item_quality.uncommon:
    return "Uncommon";
case item_quality.rare:
    return "Rare";
case item_quality.epic:
    return "Epic";
case item_quality.legendary:
    return "Legendary";
default:
    return "Error undefined quality";
}


