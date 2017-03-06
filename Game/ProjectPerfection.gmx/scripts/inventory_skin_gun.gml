///inventory_skin_gun(gun)
var gun = argument0;
switch(gun[weapon_index.weapon_subtype])
{
    case weapon_subtype.pistol:
        gun[weapon_index.sprite_count] = 2;
        gun[weapon_index.sprite_count + 1] = spr_pistol_base;
        gun[weapon_index.sprite_count + 2] = c_white;
        gun[weapon_index.sprite_count + 3] = spr_pistol_assault;
        gun[weapon_index.sprite_count + 4] = color_random();
        break;
    default:
        gun[weapon_index.sprite_count] = 2;
        gun[weapon_index.sprite_count + 1] = spr_rifle_base;
        gun[weapon_index.sprite_count + 2] = c_white;
        gun[weapon_index.sprite_count + 3] = choose(spr_rifle_assault, spr_rifle_doku, spr_rifle_reflex);
        gun[weapon_index.sprite_count + 4] = color_random();
        break;
}
return gun;
