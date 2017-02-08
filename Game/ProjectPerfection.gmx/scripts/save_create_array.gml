///save_create_array(list)
var val = argument0;
var arr;
arr[0] = 0;

for(var j = 0; j < ds_list_size(val); j++)
{
    arr[j] = ds_list_find_value(val, j);
}

return arr;
