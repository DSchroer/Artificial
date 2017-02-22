///draw_ik(x1, y1, x2, y2, length1, length2, downward, sprite1, sprite2)
var orig_x = argument0;
var orig_y = argument1;
var target_x = argument2;
var target_y = argument3;
var length1 = argument4;
var length2 = argument5;
var bend_down = argument6;
var sprite1 = argument7;
var sprite2 = argument8;

var dist = point_distance(orig_x, orig_y, target_x, target_y);
var cos_a = ((length1 * length1) + (dist * dist) - (length2*length2)) / (2*length1*dist);

cos_a = min(1, max(-1, cos_a));

var angle = arccos(cos_a);
if(bend_down)
{
    angle = -angle;
}

var base_angle = -arctan2(target_y - orig_y, target_x - orig_x);
var angle_1 = radtodeg(base_angle + angle);

var b2_x =orig_x + lengthdir_x(length1, angle_1);
var b2_y =orig_y + lengthdir_y(length1, angle_1);

var angle_2 = radtodeg(-arctan2(target_y - b2_y, target_x - b2_x));

draw_sprite_ext(sprite1, 0, orig_x, orig_y, 1, 1, angle_1, c_white, 1);
draw_sprite_ext(sprite2, 0, b2_x, b2_y, 1, 1, angle_2, c_white, 1);
/*draw_line(orig_x, orig_y, b2_x, b2_y);

var b2_x1 = lengthdir_x(length2, angle_2);
var b2_y1 = lengthdir_y(length2, angle_2);
draw_line(b2_x, b2_y, b2_x + b2_x1, b2_y + b2_y1);*/

return false;
