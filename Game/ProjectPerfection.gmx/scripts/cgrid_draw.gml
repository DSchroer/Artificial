///cgrid_draw()
var w = room_width/64;
var h = room_height/64;
var s = 5;
for(var i = 0; i < w; i++)
{
    for(var j = 0; j < h; j++)
    {
        var color = c_green;
        if(ds_grid_get(cgrid, i, j))
        {
            color = c_red;
        }
        draw_set_color(color);
        draw_rectangle(i * s, j * s, (i * s)+s, (j * s)+s, false);
    }
}
