///enemy_attack(target, gun)
var target = argument0;
var gun = argument1;
var time = gun[weapon_index.bullet_speed];
attack_gun(gun, x, y, enemy_target(target, time), self, false, false);
