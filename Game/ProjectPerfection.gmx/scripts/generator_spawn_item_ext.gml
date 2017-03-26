///generator_spawn_item_ext(item, chance, consume, clear, bias, bias_amt)
var item = argument0;
var chance = argument1;
var consume = argument2;
var clear = argument3;
var bias_val = argument4;
var bias_amt = argument5;

enum bias{
    bias_none,
    bias_path,
    bias_off_path
}

if(random(chance) < 1)
{
    var p;
    if(bias_val == bias.bias_none)
    {
        with(obj_level)
        {  
            p = generator_random_room();
        }
    }else if(bias_val == bias.bias_path)
    {
        for(var i = 0; i < bias_amt; i++)
        {
            with(obj_level)
            {  
                p = generator_random_room();
            }
            
            if(level_path_in_stub(path, p))
            {
                break;
            }
        }
    }else if(bias_val == bias.bias_off_path)
    {
        for(var i = 0; i < bias_amt; i++)
        {
            with(obj_level)
            {  
                p = generator_random_room();
            }
            
            if(!level_path_in_stub(path, p))
            {
                break;
            }
        }
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
