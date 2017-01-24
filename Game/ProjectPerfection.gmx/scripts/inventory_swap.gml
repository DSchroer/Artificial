// inventory_swap(player, slot, item)

var player = argument0;
var slot = argument1;
var item = argument2;

var equipped_item = player.inventory[slot];
player.inventory[slot] = item;

return equipped_item;



