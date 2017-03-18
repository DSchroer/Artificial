///level_drop_item_ext(x, y, items, x_offsets, y_offsets)

var xp = argument0;
var yp = argument1;
var items = argument2;
var x_offsets = argument3;
var y_offsets = argument4;

var offset_index = 0;
var offsets_length = max(array_length_1d(x_offsets), array_length_1d(y_offsets));
var item_index = 0;

while(offset_index < offsets_length && item_index < array_length_1d(items)) 
{
    var item = items[item_index];
    if(level_can_place_item(item, item.x + x_offsets[offset_index] * 64, item.y + y_offsets[offset_index] * 64))
    {
        item.x += x_offsets[offset_index] * 64;
        item.y += y_offsets[offset_index] * 64
        item_index++;        
    }
    offset_index++;
}

var failed = item_index < array_length_1d(items);
for(; item_index < array_length_1d(items); item_index++)
{
    with(items[item_index])
    {
        instance_destroy();
    }
}
return failed;



