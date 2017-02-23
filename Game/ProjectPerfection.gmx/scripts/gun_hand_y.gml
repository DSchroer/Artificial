///gun_hand_y(gun, hand, gunx, guny, distance, angle, xscale, yscale)
var gun = argument0;
var hand = argument1;
var xp = argument2;
var yp = argument3;
var dist = argument4;
var angle = argument5;
var xscale = argument6;
var yscale = argument7;


var off = sprite_get_yoffset(spr_inv_rifle1) * yscale;

return (yp) + (dist - off * dsin(angle));
