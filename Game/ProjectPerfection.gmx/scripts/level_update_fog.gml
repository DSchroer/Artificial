///level_update_fog()
if(!player_exists())
{
    exit;
}

var px = obj_player.x / 64;
var py = obj_player.y / 64;

var index = ds_grid_get(room_grid, px, py);
if(index == 0 || is_undefined(index))
{
    exit;
}

if(ds_list_find_value(fog_list, index - 1) == 0)
{
    fog_changed = true;
    ds_list_replace(fog_list, index - 1, 1);
}else{
    fog_changed = false;
}

