///map_should_draw()

if(ui_get_boss_health_percent() >= 0)
{
    return false;
}
if(room == rm_tutorial_beta || room == rm_hub)
{
    return false;
}

return true;
