///generator_place_directions(path)
var path = argument0;

var room_dist = 2;
var difficulty = save_get_value(obj_save_data, "difficulty", difficulty.normal);

switch(difficulty)
{
case difficulty.easy:
    room_dist = 2;
case difficulty.nightmare:
    room_dist = 18;
default: 
    room_dist = 4;   
}

var traversed = 0;

var tx = obj_door.x;
var ty = obj_door.y;

var current_room = 0;
var last_room = -1;

for(var i = path_get_number(path) - 1; i >= 0; i--)
{
    current_room = level_stub_at(path_get_point_x(path, i), path_get_point_y(path, i));
    if(current_room != 0 && current_room != last_room)
    {
        traversed++;
        if(traversed >= room_dist)
        {
            traversed = 0;
            var marker = generator_spawn_at(current_room - 1, room, obj_marker);
            marker.tx = tx;
            marker.ty = ty;
            tx = marker.x;
            ty = marker.y;
            
            with(marker)
            {
                if(level_stub_find(obj_door) || level_stub_find(obj_player))
                {
                    if(instance_exists(obj_cgrid))
                    {
                        cgrid_set_collision(0);
                    }
                    instance_destroy();
                }
            }
        }
    }
    last_room = current_room;
}
