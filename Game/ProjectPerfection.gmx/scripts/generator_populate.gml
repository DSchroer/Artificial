///generator_populate(x, y, width, height, distance, flags)
var x1 = argument0;
var y1 = argument1;
var w = argument2;
var h = argument3;
var distance = argument4;
var flags = argument5;

var x2 = x1 + w;
var y2 = y1 + h;

var y_mid = y1 + (h / 2);
var x_mid = x1 + (w / 2);

var len = ds_list_size(option_rooms);
var list = ds_list_create();
if(!(flags & stub_flags.no_door_left))
{
    ds_list_add(list, 0);
}
if(!(flags & stub_flags.no_door_right))
{
    ds_list_add(list, 1);
}
if(!(flags & stub_flags.no_door_up))
{
    ds_list_add(list, 2);
}
if(!(flags & stub_flags.no_door_down))
{
    ds_list_add(list, 3);
}

ds_list_shuffle(list);
var pos = room_number;
var doors = 1;

while(ds_list_size(list) > 0)
{
    var n = random(len);
    while(round(n) == previous_room)
    {
        n = random(len);
    }
    previous_room = round(n);
    var chosen_flags = ds_list_find_value(option_flags, n);
    
    var dir = ds_list_find_value(list, 0);
    ds_list_delete(list, 0);
    switch(dir)
    {
        case 0:
            if(chosen_flags & stub_flags.no_door_right)
            {
                break;
            }
            if(generator_left(n, x1, y_mid, distance + 1))
            {
                doors++;
            }
            break;
        case 1:
            if(chosen_flags & stub_flags.no_door_left)
            {
                break;
            }
            if(generator_right(n, x2, y_mid, distance + 1))
            {
                doors++;
            }
            break;
        case 2:
            if(chosen_flags & stub_flags.no_door_down)
            {
                break;
            }
            if(generator_up(n, y1, x_mid, distance + 1))
            {
                doors++;
            }
            break;
        case 3:
            if(chosen_flags & stub_flags.no_door_up)
            {
                break;
            }
            if(generator_down(n, y2, x_mid, distance + 1))
            {
                doors++;
            }
            break;
    }
}
ds_list_insert(room_e_list, pos, doors);

ds_list_destroy(list);
