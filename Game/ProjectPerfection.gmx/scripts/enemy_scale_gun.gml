///enemy_scale_gun(gun, pow)
var gun = argument0;
var pow = argument1;
var adjusted_coeff = 1 + (get_scaling_coefficient(max(0, pow)) - 1) * 0.5;
gun[weapon_index.damage] = gun[weapon_index.damage] * adjusted_coeff;
return gun;
