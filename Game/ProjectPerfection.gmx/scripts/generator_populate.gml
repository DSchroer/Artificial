///generator_populate(x, y, width, height)
var x1 = argument0;
var y1 = argument1;
var w = argument2;
var h = argument3;

var x2 = x1 + w;
var y2 = y1 + h;

var y_mid = y1 + (h / 2);
var x_mid = x1 + (w / 2);

var len = ds_list_size(option_rooms);

var list = ds_list_create();
ds_list_add(list, 0);
ds_list_add(list, 1);
ds_list_add(list, 2);
ds_list_add(list, 3);

ds_list_shuffle(list);

while(ds_list_size(list) > 0)
{
    var n = random(len);
    var dir = ds_list_find_value(list, 0);
    ds_list_delete(list, 0);
    
    switch(dir)
    {
        case 0:
            generator_left(n, x1, y_mid);
            break;
        case 1:
            generator_right(n, x2, y_mid);
            break;
        case 2:
            generator_up(n, y1, x_mid);
            break;
        case 3:
            generator_down(n, y2, x_mid);
            break;
    }
}

ds_list_destroy(list);
