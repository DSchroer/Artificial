///cgrid_place_meeting(x, y)
var xp = argument0;
var yp = argument1;

var box_top = (sprite_get_bbox_top(sprite_index) + yp - sprite_get_yoffset(sprite_index));
var box_left = (sprite_get_bbox_left(sprite_index) + xp - sprite_get_xoffset(sprite_index));
var box_bottom = (sprite_get_bbox_bottom(sprite_index) + yp - sprite_get_yoffset(sprite_index));
var box_right = (sprite_get_bbox_right(sprite_index) + xp - sprite_get_xoffset(sprite_index));

cgrid_force();
box_top = floor(box_top / obj_cgrid.cgrid_size);
box_left = floor(box_left / obj_cgrid.cgrid_size);
box_bottom = floor(box_bottom / obj_cgrid.cgrid_size);
box_right = floor(box_right / obj_cgrid.cgrid_size);

with(obj_cgrid)
{
    for(var i = box_left; i <= box_right; i++)
    {
        for(var j = box_top; j <= box_bottom; j++)
        {
            var inst = ds_grid_get(cgrid, i, j);
            if(!is_undefined(inst))
            {
                with(other)
                {
                    if( place_meeting(xp, yp, inst))
                    {
                        return true;
                    }
                }
            } 
        }
    }
}
return false;

