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

if(gun_sprite == spr_pistol_base)
{
    ret[0] = 55;
    ret[1] = 35;
    ret[2] = 55;
    ret[3] = 35;
    ret[4] = 55;
}

return ret;
