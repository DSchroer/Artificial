///entity_collision()

var collision_object = obj_wall;

var x_change = lengthdir_x(speed, direction);
var y_change = lengthdir_y(speed, direction)
if(place_meeting(x + x_change, y, collision_object))
{
    move_contact_all(point_direction(0, 0, x_change, 0), speed);
    x_change = 0;
}

if(place_meeting(x, y + y_change, collision_object))
{
    move_contact_all(point_direction(0, 0, 0, y_change), speed);
    y_change = 0;
}

if(place_meeting(x + x_change, y + y_change, collision_object))
{
    move_contact_all(direction, speed);
    x_change = 0;
    y_change = 0;
}

speed = point_distance(0, 0, x_change, y_change);
direction = point_direction(0, 0, x_change, y_change);
