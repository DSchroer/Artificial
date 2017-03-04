///generator_register_items()

generator_spawn_item(obj_health_can, 1, false, false); 
generator_spawn_item(obj_item, 2, true, true); 

if(book_any())
{
    generator_spawn_item(obj_book, 3, true, true); 
}
