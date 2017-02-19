///inventory_pickup_weapon(item)
var item = argument0;
if(is_array(item))
{
    for(var i = 0; i < 4; i++)
    {
        if(inventory[i] == -1)
        {
            selected_slot = i;
            return inventory_swap(self, i, item);
        }
    }
    
    return inventory_swap(self, selected_slot, item);
}
