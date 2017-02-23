///gun_hand_lookup(gun)
var gun_sprite = argument0;

var ret;
ret[0] = 0;
ret[1] = 0;
ret[2] = 0;
ret[3] = 0;

if(gun_sprite == spr_inv_rifle1)
{
    ret[0] = 81;
    ret[1] = 45;
    ret[2] = 110;
    ret[3] = 45;
}

return ret;
