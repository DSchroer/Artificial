///point_in_ellipse(x, y, ex1, ey1, ex2, ey2)
var xp = argument0;
var yp = argument1;

var ex1 = argument2;
var ey1 = argument3;
var ex2 = argument4;
var ey2 = argument5;

var width = (ex2 - ex1) / 2;
var height = (ey2 - ey1) / 2;

var centerx = (ex1 + ex2) / 2;
var centery = (ey1 + ey2) / 2;

var dx = xp - centerx;
var dy = yp - centery;

return ( dx * dx ) / ( width * width ) + ( dy * dy ) / ( height * height ) <= 1;
