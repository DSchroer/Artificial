///balance_get_enemy_damage_coefficient(pow)

var pow = argument0;

var adjusted_coeff = 1 + ((balance_global_difficulty_coefficient() * balance_global_scaling_coefficient(pow)) - 1) * 0.5;

return adjusted_coeff;


