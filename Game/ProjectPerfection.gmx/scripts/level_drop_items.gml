///level_drop_items(x, y, items)

var xp = argument0;
var yp = argument1;
var items = argument2;

var positions_x;
var positions_y;

var i = 0;
positions_x[i] = 0;
positions_y[i] = 0;
i++;

positions_x[i] = -1;
positions_y[i] = 0;
i++;

positions_x[i] = -1;
positions_y[i] = 1;
i++;

positions_x[i] = 1;
positions_y[i] = 0;
i++;

positions_x[i] = 0;
positions_y[i] = 1;
i++;

positions_x[i] = -1;
positions_y[i] = -1;
i++;

positions_x[i] = 0;
positions_y[i] = -1;
i++;

positions_x[i] = 1;
positions_y[i] = 1;
i++;

positions_x[i] = 1;
positions_y[i] = -1;
i++;


return level_drop_item_ext(xp, yp, items, positions_x, positions_y);



