///generator_spawn_item(item, chance, consume, clear)
var item = argument0;
var chance = argument1;
var consume = argument2;
var clear = argument3;

if(random(chance) < 1)
{
    var p = generator_random_room();
    generator_spawn_at(p, custom_room, item);
    
    if(clear)
    {
        generator_spawn_at(p, custom_room, obj_clear_entities);
    }
    
    if(consume)
    {
        generator_use_room(p);
    }
}
