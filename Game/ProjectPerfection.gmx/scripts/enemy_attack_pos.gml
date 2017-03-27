///enemy_attack_pos(target, gun, x, y)
var target = argument0;
var gun = argument1;
var time = gun[weapon_index.bullet_speed];
attack_gun(gun, argument2, argument3, enemy_target(target, time), self, false, false);
