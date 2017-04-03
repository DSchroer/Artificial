///line_in_ellipse(x1, y1, x2, y2, ex1, ey1, ex2, ey2)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

var ex1 = argument4;
var ey1 = argument5;
var ex2 = argument6;
var ey2 = argument7;

var semi_major = (ex2 - ex1) / 2;
var semi_minor = (ey2 - ey1) / 2;

var centerx = (ex1 + ex2) / 2;
var centery = (ey1 + ey2) / 2;

//Center all values around 0
x1 -= centerx;
y1 -= centery;
x2 -= centerx;
y2 -= centery;

var delta_x = x2 - x1;
var delta_y = y2 - y1;

var semi_major_2 = (semi_major * semi_major);
var semi_minor_2 = (semi_minor * semi_minor);

//Fucking intermediate math values
var A = ((delta_x * delta_x) / semi_major_2) + ((delta_y * delta_y) / semi_minor_2);
var B = ((2 * x1 * delta_x) / semi_major_2) + ((2 * y1 * delta_y) / semi_minor_2);
var C = ((x1 * x1) / semi_major_2) + ((y1 * y1) / semi_minor_2) - 1;

var discriminant = (B * B) - 4 * A * C;
if(discriminant < 0)
{
    return false;
}else if(discriminant == 0)
{
    var p = (-B / (2 * A));
    return p >= 0 && p <= 1;
}else{
    var pa = (-B + sqrt(discriminant)) / (2 * A);
    var pb = (-B - sqrt(discriminant)) / (2 * A);
    return (pa >= 0 && pa <= 1) || (pb >= 0 && pb <= 1);
}

