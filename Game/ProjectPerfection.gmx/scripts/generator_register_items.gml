///generator_register_items()

// Health items
for(var i = 0; i < random(3); i++)
{
    generator_spawn_item_ext(obj_health_can, 1, true, false, bias.bias_off_path, 5); 
}

// Chests
generator_spawn_item_ext(obj_chest, 1, true, false, bias.bias_off_path, 10);

// Lore
if(book_any())
{
    // 1 drop per floor, but allow a catchup mechanic.
    var book_progress = save_get_value(obj_save_data, "lore", 0);
    var possible_entries = book_number_epic_entries() - book_progress;
    var segment = 7;
    var lore_modifier = 1;
    if(
        (obj_progress.progress >= 4 && book_progress < segment) || 
        (obj_progress.progress >= 8 && book_progress < segment * 2) || 
        (obj_progress.progress >= 12 && book_progress < segment * 3) ||
        (obj_progress.cube_parts >= 4))
    {
        lore_modifier *= 3;
    }
    else if(obj_progress.cube_parts >= 3)
    {
        lore_modifier = 1.5;
    }
    lore_modifier = min(possible_entries, lore_modifier);
    
    var remainder = lore_modifier % 1;
    for(var i = 0; i < floor(lore_modifier); i++)
    {
        generator_spawn_item_ext(obj_book, 1, true, true, bias.bias_path, 10); 
    }
    if(random(1) < remainder)
    {
        generator_spawn_item_ext(obj_book, 1, true, true, bias.bias_path, 10); 
    }        
    
}



