///gun_hand_lookup(gun)
var gun_sprite = argument0;

var ret;
ret[0] = 0;
ret[1] = 0;
ret[2] = 0;
ret[3] = 0;
ret[4] = 0;

if(gun_sprite == spr_rifle_base)
{
    ret[0] = 59;
    ret[1] = 36;
    ret[2] = 79;
    ret[3] = 42;
    ret[4] = 75;
}
else if(gun_sprite == spr_pistol_base)
{
    ret[0] = 55;
    ret[1] = 35;
    ret[2] = 55;
    ret[3] = 35;
    ret[4] = 55;
}
else if(gun_sprite == spr_azar_will)
{
    ret[0] = 66;
    ret[1] = 37;
    ret[2] = 105;
    ret[3] = 52;
    ret[4] = 80;
}
else if(gun_sprite == spr_dym_hands)
{
    ret[0] = 64;
    ret[1] = 35;
    ret[2] = 81;
    ret[3] = 41;
    ret[4] = 60;
}
else if(gun_sprite == spr_twan_eye)
{
    ret[0] = 54;
    ret[1] = 45;
    ret[2] = 81;
    ret[3] = 41;
    ret[4] = 100;
}
else if(gun_sprite == spr_shuud_voice)
{
    ret[0] = 64;
    ret[1] = 35;
    ret[2] = 81;
    ret[3] = 41;
    ret[4] = 80;
}

return ret;
