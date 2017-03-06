///area_contains(area, obj)
var area = argument0;
var target = argument1;
with(area)
{
    if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, target, false, true))
    {
        return true;
    }
}
return false;
