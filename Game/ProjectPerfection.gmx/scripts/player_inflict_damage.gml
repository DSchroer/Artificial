
var damage = argument0;

if(shield_active && remaining_shield > 0)
{
    // Hit shield.
    if(remaining_shield > damage)
    {
        remaining_shield -= damage;
    }
    else 
    {
        remaining_shield = 0;
        var equipped_shield = player_get_shield();
        var overkill_percent = (damage - remaining_shield) / equipped_shield.max_shield_health;
        if(overkill_percent > 0.2)
        {
            shield_penalty_time = equipped_shield.recharge_delay * (overkill_percent + 1);
        } 
        else 
        {
            shield_penalty_time = equipped_shield.recharge_delay;
        }
    }
} 
else 
{
    health -= damage;    
}
