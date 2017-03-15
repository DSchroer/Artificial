///inventory_get_modifier_weights()

//types = (normal, rail, plasma, scatter);
var weights = array(0, 0, 0, 0, 0);
var player_level = save_get_value(obj_save_data, "player_level", 1);
if(player_level >= 1)
{
    // Regular, Plasma
    weights[0] = 10;
    weights[2] = 10;
}
if(player_level >= 2)
{
    // Explosive, Scatter
    weights[3] = 10;
    weights[4] = 10;
}
if(player_level >= 3)
{
    // Lasers
    weights[1] = 10;
}
if(player_level >= 4)
{
} 


return weights;


