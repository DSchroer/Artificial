///cgrid_draw()
var w = room_width/cgrid_size;
var h = room_height/cgrid_size;
var s = 5;
draw_set_alpha(0.5);
for(var i = 0; i < w; i++)
{
    for(var j = 0; j < h; j++)
    {
        if(ds_grid_get(cgrid, i, j))
        {
            draw_set_color(c_red);
            draw_rectangle(i * s, j * s, (i * s)+s, (j * s)+s, false);
        }
    }
}
draw_set_alpha(1);
