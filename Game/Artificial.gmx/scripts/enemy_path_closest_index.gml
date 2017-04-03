///enemy_path_closest_index(path)
var path = argument0;

var dist = 9999999999;
var index = 0;
var i = 0;
do
{
    var t_dist = point_distance(x, y, path_get_point_x(path, i), path_get_point_y(path, i));
    if(t_dist < dist)
    {
        dist = t_dist;
        index = i;
    }
}
until(++i >= path_get_number(path));

return index;
