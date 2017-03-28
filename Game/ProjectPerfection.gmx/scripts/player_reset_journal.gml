///player_reset_journal()
with(obj_player)
{   
    if(journal_is_open)
    {
        exit;
    }
    journal_scroll_cooldown = 0;
    journal_is_open = false;
    scroll_index = 0;
    journal_is_open_slots[0] = false;
    journal_is_open_slots[1] = false;
    journal_is_open_slots[2] = false;
    journal_is_open_slots[3] = false;
    journal_is_open_slots[4] = false;
    journal_active_category = -1;
    journal_active_entry = -1;
    journal_block_mouse = false;

}
