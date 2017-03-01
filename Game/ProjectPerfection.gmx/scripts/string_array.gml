///string_array(array)
var arr = argument0;

var str = "[";
for(var i = 0; i < array_length_1d(arr); i++)
{
    str += string(arr[i]) + ", ";
}
str += "]";
return str;

