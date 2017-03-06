///generator_register_items()

for(var i = 0; i < random(3); i++)
{
    generator_spawn_item(obj_health_can, 1, false, false); 
}

if(book_any())
{
    generator_spawn_item(obj_book, 3, true, true); 
}
generator_spawn_item(obj_chest, 1, false, false);


