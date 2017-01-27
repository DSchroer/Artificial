/// locker_swap(player, slot, item)

var player = argument0;
var slot = argument1;
var item = argument2;

var removed_item = player.locker[slot];
player.locker[slot] = item;

return removed_item;



