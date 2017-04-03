///generator_random_room()
var size = ds_map_size(spawn_map);
var pos = random(size - 1);

var key = ds_map_find_first(spawn_map);
for(var i = 0; i < pos; i++)
{
    key = ds_map_find_next(spawn_map, key);
}

return key;
