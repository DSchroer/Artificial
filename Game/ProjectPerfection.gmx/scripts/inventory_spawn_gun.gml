///inventory_spawn_gun(power)
var pow = argument0;
var gun = inventory_create_weapon();

gun[weapon_index.modifier] = round(random(3));

var shot_sprites;
shot_sprites[weapon_modifier.normal] = spr_bullet;
shot_sprites[weapon_modifier.plasma] = spr_plasma;
shot_sprites[weapon_modifier.rail] = spr_rail;
shot_sprites[weapon_modifier.scatter] = spr_bullet;
gun[weapon_index.bullet_sprite] = shot_sprites[gun[weapon_index.modifier]];

var subType = round(random(3));
gun[weapon_index.weapon_subtype] = subType;

//Damage Per Shot
var damages;
damages[0] = 5 * (1 + (pow / 20));
damages[1] = 6 * (1 + (pow / 20));
damages[2] = 13 * (1 + (pow / 20));
damages[3] = 45 * (1 + (pow / 20));
gun[weapon_index.damage] = round(damages[subType]);

//Fire rate (per second)
var rates;
rates[0] = 5;
rates[1] = 4;
rates[2] = 2;
rates[3] = 0.75;
gun[weapon_index.fire_timeout] = 60 / rates[subType];

//Magazine Size
var mag;
mag[0] = 20;
mag[1] = 35;
mag[2] = 16;
mag[3] = 10;
gun[weapon_index.capacity] = mag[subType];
gun[weapon_index.remaining] = gun[weapon_index.capacity];

//Reload Time (Seconds)
var reload;
reload[0] = 3;
reload[1] = 4;
reload[2] = 5;
reload[3] = 7;
gun[weapon_index.reload_timeout] = reload[subType] * 60;

return gun;
