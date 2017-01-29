///entity_take_damage()
current_health -= damage;
damage = 0;

if(current_health <= 0)
{
    event_user(1);
}
