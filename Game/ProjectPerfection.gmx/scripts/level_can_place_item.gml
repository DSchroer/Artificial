///level_can_place_item(item, x, y)

var item = argument0;
var xp = argument1;
var yp = argument2;

var item_width = item.bbox_right - item.bbox_left;
var item_height = item.bbox_bottom - item.bbox_top;

var top_left = cgrid_collision_point(xp, yp);
var top_right = cgrid_collision_point(xp + item_width, yp);
var bottom_left = cgrid_collision_point(xp, yp + item_height);
var bottom_right = cgrid_collision_point(xp + item_width, yp + item_height);
return (!top_left && !top_right && !bottom_left && !bottom_right);



