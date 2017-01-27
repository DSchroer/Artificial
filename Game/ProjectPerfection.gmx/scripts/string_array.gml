///string_array(array)
var array = argument0;

var str = "[";
for(var i = 0; i < array_length_1d(array); i++)
{
    str += string(array[i]) + ", ";
}
str += "]";
return str;

