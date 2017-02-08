///clone_apply()

if(ds_map_size(clone_list) == 0)
{
    exit;
}

var inst = ds_map_find_first(clone_list);
for(var i = 0; i < ds_map_size(clone_list) - 1; i++)
{
    var values = ds_map_find_value(clone_list, inst);
    clone_set_inst(inst, values);
    inst = ds_map_find_next(clone_list, inst);
}
ds_map_destroy(clone_list);
