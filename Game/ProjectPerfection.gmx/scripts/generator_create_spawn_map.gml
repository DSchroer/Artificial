///generator_create_spawn_map()
for(var i = 0; i < ds_list_size(room_list); i++)
{
    ds_map_add(spawn_map, i, ds_list_find_value(room_list, i));
}
ds_map_delete(spawn_map, 0);
