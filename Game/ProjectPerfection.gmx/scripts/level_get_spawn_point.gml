///level_get_spawn_point()
var spawn_points = level_stub_find_all(obj_spawn);

if(array_length_1d(spawn_points) == 0)
{
    return noone;
}

var point = array_length_1d(spawn_points);
var inst = spawn_points[random(point)];

return inst;
