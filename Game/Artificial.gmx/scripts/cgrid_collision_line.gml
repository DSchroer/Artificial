///cgrid_collision_line(x1, y1, x2, y2)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

cgrid_force();
x1 /= obj_cgrid.cgrid_size;
y1 /= obj_cgrid.cgrid_size;
x2 /= obj_cgrid.cgrid_size;
y2 /= obj_cgrid.cgrid_size;

var dist = y2 - y1;
var y_inc = 1;
if(y1 > y2)
{   
    y_inc = -1;
}

var loops = dist / y_inc;
for(var i = 0; i < loops; i++)
{

}



