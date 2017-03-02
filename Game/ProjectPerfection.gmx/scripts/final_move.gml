
if(sm_ticks() == 0)
{
    sm_pop_var("path_index");
}

enemy_path_move(pth_final, 6);

if(sm_ticks() > 120)
{
    var healthPct = current_health / max_health;
    sm_push_var("path_index");
    if(healthPct < 0.05)
    {
        sm_set_state("kill");
    }else if(healthPct < 0.4)
    {
        var d = random(2);
        if(d < 1)
        {
            sm_set_state("mele");
        }else
        {
            sm_set_state("jump");
        }
    }else{
        var c = random(3);
        if(c < 1)
        {
            sm_set_state("kill");
        }else if(c < 2)
        {
            sm_set_state("lazer");
        }else{
            sm_set_state("bolt");
        }
    }
    
}
