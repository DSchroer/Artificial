///roll_boss_loot(boss_number)

var boss_number = argument0;

var gun1 = instance_create(x - 250 + random(500), y + random(300), obj_item);
gun1.data = inventory_spawn_gun_ext(roll_power() + (boss_number - 1) * 18, item_quality.uncommon, 100);
var gun2 = instance_create(x - 250 + random(500), y + random(300), obj_item);
gun2.data = inventory_spawn_gun_ext(roll_power() + (boss_number - 1) * 18, item_quality.uncommon, 100);
var gun3 = instance_create(x - 250 + random(500), y + random(300), obj_item);
gun3.data = inventory_spawn_gun_ext(roll_power() + (boss_number - 1) * 18, item_quality.rare, 100);

var dropped_components = save_get_value(obj_save_data, "boss_component_count", 0);
if(dropped_components < boss_number * 2)
{
    save_set_value(obj_save_data, "boss_component_count", dropped_components + 1);   
    instance_create(x - 50 + random(100), y - 50 + random(100), obj_component);
}

