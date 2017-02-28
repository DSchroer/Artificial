///area_contains(area, obj)
var area = argument0;
var target = argument1;

return collision_rectangle(area.bbox_left, area.bbox_top, area.bbox_right, area.bbox_bottom, target, false, true);
