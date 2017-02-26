///enemy_scale_gun(gun)
var gun = argument0;
var pow = 1;
if(instance_exists(obj_progress))
{
    pow = obj_progress.progress;
}
gun[weapon_index.damage] = gun[weapon_index.damage] * (1 + (pow / 20));
return gun;
