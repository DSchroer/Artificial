///debug_show_string(string)
var data = argument0;
if(instance_exists(obj_debug))
{
    ds_list_add(obj_debug.display_lines, data);
}
