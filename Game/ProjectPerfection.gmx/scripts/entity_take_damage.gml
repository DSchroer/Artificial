///entity_take_damage()
current_health -= damage;

if(damage > 0)
{
    var d = instance_create(x, y - (sprite_height / 2), obj_damage_indicator);
    d.damage = damage;
    
    if(ds_list_size(hurt_sounds) > 0)
    {
        var rng = irandom_range(0, ds_list_size(hurt_sounds) - 1);
        sfx_play_volume(ds_list_find_value(hurt_sounds, rng), false, volume_mod);
    }
   
}

damage = 0;

if(current_health <= 0)
{
    event_user(1);
}
