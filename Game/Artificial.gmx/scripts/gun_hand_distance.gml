///gun_hand_distance(gun, hand, distance, angle, xscale, yscale)
var gun = argument0;
var hand = argument1;
var dist = argument2;
var angle = argument3;
var xscale = argument4;
var yscale = argument5;

var base_sprite = gun[weapon_index.sprite_count + 1];
var hand_data = gun_hand_lookup(base_sprite);
var handx = hand_data[(hand * 2)+0];
var handy = hand_data[(hand * 2)+1];

return point_distance(0, 0, dist + ((-sprite_get_xoffset(base_sprite) + handx) * xscale), (-sprite_get_yoffset(base_sprite) + handy) * yscale);
