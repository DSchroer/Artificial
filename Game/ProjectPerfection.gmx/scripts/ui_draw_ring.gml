///ui_draw_ring(x,y,radius,thickness,maxsegments,segments,startangle,totalangle,direction,colour)

var xpos = argument0;
var ypos = argument1;
var radius = argument2;
var thickness = argument3;
var maxsegments = argument4;
var segments = argument5;
var startangle = argument6;
var totalangle = argument7;
var dir = argument8;
var colour = argument9;

var anglechange = (totalangle / maxsegments) * (pi / 180);
var i = startangle * (pi / 180);

var ax = xpos + (cos(i) * radius);
var ay = ypos - (sin(i) * radius);
var bx = xpos + (cos(i) * (radius + thickness));
var by = ypos - (sin(i) * (radius + thickness));

repeat(segments) 
{
    i += dir * anglechange;
    
    var cx = xpos + (cos(i) * radius);
    var cy = ypos - (sin(i) * radius);
    
    var dx = xpos + (cos(i) * (radius + thickness));
    var dy = ypos - (sin(i) * (radius + thickness));
    
    draw_triangle_colour(ax, ay, bx, by, dx, dy, colour, colour, colour, 0);
    draw_triangle_colour(ax, ay, cx, cy, dx, dy, colour, colour, colour, 0);
    
    ax = cx;
    ay = cy;
    bx = dx;
    by = dy;
}
