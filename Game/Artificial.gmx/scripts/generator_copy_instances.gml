///generator_copy_instances(room, x, x)
var new_room = argument0;
var xpos = argument1;
var ypos = argument2;

for(var i = 0; i < instance_count; i++)
{
    var instance = instance_find(all, i);
    if(!instance.persistent)
    {
        var new = room_instance_add(new_room, xpos + instance.x, ypos + instance.y, instance.object_index);
        
        with(obj_cloner)
        {
            clone_register(instance, new);
            
        }
    }
}

