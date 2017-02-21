///enemy_line_of_sight(width)
if(!player_exists())
{
    return false;
}

var width = argument0;

var dir = point_direction(x, y, obj_player.x, obj_player.y);
var xoff = lengthdir_x(width, dir - 90);
var yoff = lengthdir_y(width, dir - 90);

var los = !collision_line(x + xoff, y + yoff, obj_player.x, obj_player.y, obj_wall, false, false);
los = los && !collision_line(x - xoff, y - yoff, obj_player.x, obj_player.y, obj_wall, false, false);

return los;
