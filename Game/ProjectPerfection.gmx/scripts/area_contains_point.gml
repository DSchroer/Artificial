///area_contains_point(area, x, y)
var area = argument0;
var targetx = argument1;
var targety = argument2;
with(area)
{
    if(point_in_rectangle(targetx, targety, bbox_left, bbox_top, bbox_right, bbox_bottom))
    {
        return true;
    }
}
return false;
