///inventory_scale_stat(value, base, range, core)
var val = argument0;
var base = argument1;
var range = argument2;
var core = argument3;

val *= core;
val *= (((random(range) + base) * 0.4) + 0.8)

return val;
