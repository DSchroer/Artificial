///sm_set_var(index, value)
var index = argument0;
var val = argument1;
if(ds_map_exists(sm_variables, index))
{
    ds_map_replace(sm_variables, index, val);
}else{
    ds_map_set(sm_variables, index, val);
}
