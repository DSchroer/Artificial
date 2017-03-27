///inventory_gun_name(gun)
var gun = argument0;

var name = "";
switch(gun[weapon_index.quality])
{
    case item_quality.common:
        name += choose("Typical", 
            "Mediocre", 
            "Worn-out", 
            "Blunted",
            "Basic", 
            "Crummy", 
            "Terrible");
        break;
    case item_quality.uncommon:
        name += choose("Unusual", 
            "Noteworthy", 
            "Peculiar", 
            "Interesting",
            "Novel", 
            "Irregular", 
            "Nondescript");
        break;
    case item_quality.rare:
        name += choose("Bloodied", 
            "Admirable", 
            "Remarkable", 
            "Flashy",
            "Special", 
            "Weird", 
            "Unheard of");
        break;
    case item_quality.epic:
        name += choose("First class", 
            "Addicting", 
            "Outstanding", 
            "Terrific",
            "Stupendous", 
            "Other worldy", 
            "Unthinkable");
        break;
    case item_quality.legendary:
        name += choose("Inconcevivable", 
            "Perfect", 
            "Phenominal", 
            "Incredible",
            "Marvelous", 
            "Inimaginable", 
            "Godly");
        break;
}

name += " " + inventory_get_subtype_name(gun[weapon_index.weapon_subtype]);

return name;
