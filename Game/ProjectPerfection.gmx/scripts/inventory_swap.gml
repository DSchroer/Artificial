///inventory_swap(player, slot, item)

var player = argument0;
var slot = argument1;
var item = argument2;

var save_name = "inv" + string(slot);

var removed_item = player.inventory[slot];

save_set_value(obj_save_data, save_name, item);

player.inventory[slot] = item;

return removed_item;



