///enemy_target(target, shot_speed)
var target = argument0;
var t_v_x = lengthdir_x(target.speed, target.direction);
var t_v_y = lengthdir_y(target.speed, target.direction);

var shot_speed = argument1;

var totarget_x = target.x - x;
var totarget_y = target.y - y;

var a = dot_product(t_v_x, t_v_y, t_v_x, t_v_y) - (shot_speed * shot_speed);
var b = 2 * dot_product(t_v_x, t_v_y, totarget_x, totarget_y);
var c = dot_product(totarget_x, totarget_y, totarget_x, totarget_y);

var p = -b / (2 * a);

var sqrt_attempt = (b * b) - 4 * a * c;
if(sqrt_attempt <= 0)
{
    return point_direction(x, y, target.x, target.y);
}
var q = sqrt(sqrt_attempt) / (2 * a);

var t1 = p - q;
var t2 = p + q;
var t;

if (t1 > t2 && t2 > 0)
{
    t = t2;
}
else
{
    t = t1;
}

var aim_x = target.x + t_v_x * t;
var aim_y = target.y + t_v_y * t;
return point_direction(x, y, aim_x, aim_y);
