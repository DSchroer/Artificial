///save_create_array(list)
var val = argument0;
var arr = -1;

for(var j = 0; j < ds_list_size(val); j++)
{
    arr[j] = jso_list_get(val, j);
}

return arr;