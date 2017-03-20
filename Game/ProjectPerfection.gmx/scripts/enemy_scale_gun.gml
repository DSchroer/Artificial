///enemy_scale_gun(gun, pow)
var gun = argument0;
var pow = argument1;
gun[weapon_index.damage] = gun[weapon_index.damage] * balance_get_enemy_damage_coefficient(pow);
return gun;
