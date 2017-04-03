///inventory_swap(player, slot, item)

var player = argument0;
var slot = argument1;
var item = argument2;

var save_name = "inv" + string(slot);

var removed_item = player.inventory[slot];

save_set_value(obj_save_data, save_name, item);

player.inventory[slot] = item;

sfx_play_volume(snd_inventory_rummage2, false, 0.6);

return removed_item;



