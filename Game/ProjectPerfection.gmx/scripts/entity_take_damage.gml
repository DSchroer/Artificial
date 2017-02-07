///entity_take_damage()
current_health -= damage;

if(damage > 0)
{
    var d = instance_create(x, y - (sprite_height / 2), obj_damage_indicator);
    d.damage = damage;
}

damage = 0;

if(current_health <= 0)
{
    event_user(1);
}
