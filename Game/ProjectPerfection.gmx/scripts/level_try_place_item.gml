///level_try_place_item(item, x, y)

var item = argument0;
var xp = argument1;
var yp = argument2;

//cgrid_point_free(x,y);

var item_width = item.bbox_right - item.bbox_left;
var item_height = item.bbox_bottom - item.bbox_top;

var top_left = cgrid_collision_point(xp, yp);
var top_right = cgrid_collision_point(xp + item_width, yp);
var bottom_left = cgrid_collision_point(xp, yp + item_height);
var bottom_right = cgrid_collision_point(xp + item_width, yp + item_height);
if(!top_left && !top_right && !bottom_left && !bottom_right)
{
    item.x = xp;
    item.y = yp;
}
else
{
/*
    if(!top_left && !top_right)
    {
        yp += 64 - yp % 64;
    }
    if(!bottom_right && !bottom_left)
    {    
        yp -= 64;
    }
  */  
    item.x = xp;
    item.y = yp;
}




