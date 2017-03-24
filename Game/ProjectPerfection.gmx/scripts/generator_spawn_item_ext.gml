///generator_spawn_item_ext(item, chance, consume, clear, bias)
var item = argument0;
var chance = argument1;
var consume = argument2;
var clear = argument3;
var bias = argument4;

enum bias{
    bias_none,
    bias_path,
    bias_off_path
}

if(random(chance) < 1)
{
    var p;
    with(obj_level)
    {  
        p = generator_random_room();
    }
    generator_spawn_at(p, room, item);
    
    if(clear)
    {
        generator_spawn_at(p, room, obj_clear_entities);
    }
    
    if(consume)
    {
        with(obj_level)
        {
            generator_use_room(p);
        }
    }
}
