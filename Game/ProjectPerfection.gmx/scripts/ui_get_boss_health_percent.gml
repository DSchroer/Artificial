///ui_get_boss_health_percent()

// Return < 0 for no healthbar
// else return on [0, 1]

with(obj_boss_battle)
{
    with(target)
    {
        return current_health / max_health;
    }
}

return -1;
