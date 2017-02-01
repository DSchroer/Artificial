///ui_compute_slot

var slot = selected_slot - 3;
if(slot < 0) 
{
    slot += inventory_slot.shield;
}
return slot;
