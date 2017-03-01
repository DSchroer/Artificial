///inventory_get_subtype_weights()

//types = (pistol, auto_rifle, heavy_rifle, sniper_rifle, smg, extended_magazine, superfast_reload, machine_gun);
var weights = array(0, 0, 0, 0, 0, 0, 0, 0);
var player_level = save_get_value(obj_save_data, "player_level", 1);
if(player_level >= 1)
{
    weights[0] = 10;
    weights[1] = 10;
    weights[2] = 10;
}
if(player_level >= 2)
{
    // Snipers and SMG
    weights[3] = 10;
    weights[4] = 10;
}
if(player_level >= 3)
{
    // Machine guns
    weights[7] = 10;
}


return weights;
