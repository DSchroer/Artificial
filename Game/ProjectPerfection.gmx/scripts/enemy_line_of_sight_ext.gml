///enemy_line_of_sight_ext(x, y, width)
if(!player_exists())
{
    return false;
}

var px = argument0;
var py = argument1;
var width = argument2;

var dir = point_direction(px, py, obj_player.x, obj_player.y);
var xoff = lengthdir_x(width, dir - 90);
var yoff = lengthdir_y(width, dir - 90);

var los = !collision_line(px + xoff, py + yoff, obj_player.x, obj_player.y, obj_wall, false, false);
los = los && !collision_line(px - xoff, py - yoff, obj_player.x, obj_player.y, obj_wall, false, false);

los = los && !collision_line(px, py, obj_player.x, obj_player.y, obj_enemy, false, true);

return los;
