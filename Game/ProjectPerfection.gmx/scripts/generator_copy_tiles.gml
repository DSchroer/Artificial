///generator_copy_tiles(room, x, x)
var new_room = argument0;
var xpos = argument1;
var ypos = argument2;

var tiles = tile_get_ids();
for(var i = 0; i < array_length_1d(tiles); i++)
{
    var tile = tiles[i];    

    var back = tile_get_background(tile);
    var left = tile_get_left(tile);
    var top = tile_get_top(tile);
    var width = tile_get_width(tile);
    var height = tile_get_height(tile);
    var xp = tile_get_x(tile);
    var yp = tile_get_y(tile);
    var dep = tile_get_depth(tile);
    var x_scale = tile_get_xscale(tile);
    var y_scale = tile_get_yscale(tile);
    var alpha = tile_get_alpha(tile)
    
    if(dep < 0 && ds_grid_get(door_grid, (xpos + xp)/64, (ypos + yp)/64) > 0)
    {
        continue;
    }
    
    if(dep < 0)
    {
        dep = isomorphic_set_depth_ext(yp + ypos);
    }
    
    room_tile_add_ext(new_room, back, left, top, width, height, xp + xpos, yp + ypos, dep, x_scale, y_scale, alpha);
}

