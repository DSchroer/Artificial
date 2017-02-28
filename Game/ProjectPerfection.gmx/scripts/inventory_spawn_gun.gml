///inventory_spawn_gun(power)
var pow = argument0;
var gun = inventory_create_weapon();

var q;
var roll = random(1000);
if(roll < 1)
{
    q = item_quality.legendary;
}else if(roll < 4)
{
    q = item_quality.epic;
}else if(roll < 25)
{
    q = item_quality.rare;
}else if(roll < 115)
{
    q = item_quality.uncommon;
}else{
    q = item_quality.common;
}

gun[weapon_index.modifier] = round(random(3));
gun[weapon_index.name] = "Gun";
gun[weapon_index.quality] = q;

var shot_sprites;
shot_sprites[weapon_modifier.normal] = spr_bullet;
shot_sprites[weapon_modifier.plasma] = spr_plasma;
shot_sprites[weapon_modifier.rail] = spr_rail;
shot_sprites[weapon_modifier.scatter] = spr_bullet;
gun[weapon_index.bullet_sprite] = shot_sprites[gun[weapon_index.modifier]];

var subType = round(random(7));
gun[weapon_index.weapon_subtype] = subType;

var accuracies;
accuracies[weapon_subtype.pistol] = 5;
accuracies[weapon_subtype.auto_rifle] = 10;
accuracies[weapon_subtype.heavy_rifle] = 15;
accuracies[weapon_subtype.sniper_rifle] = 1;
accuracies[weapon_subtype.smg] = 15;
accuracies[weapon_subtype.extended_magazine] = 5;
accuracies[weapon_subtype.superfast_reload] = 5;
accuracies[weapon_subtype.machine_gun] = 10;

gun[weapon_index.accuracy] =  accuracies[subType];

var core = inventory_core_table();

var bases;
bases[item_quality.common] = 5;
bases[item_quality.uncommon] = 61;
bases[item_quality.rare] = 76;
bases[item_quality.epic] = 86;
bases[item_quality.legendary] = 96;

var ranges;
ranges[item_quality.common] = 55;
ranges[item_quality.uncommon] = 14;
ranges[item_quality.rare] = 9;
ranges[item_quality.epic] = 9;
ranges[item_quality.legendary] = 4;

//Damage Per Shot
var damages = 8 * (1 + (pow / 20));
damages = inventory_scale_stat(damages, bases[q] / 100, ranges[q] / 100, core[subType, 0]);
gun[weapon_index.damage] = max(1, round(damages));

//Fire rate (per second)
var rates = 10;
rates = inventory_scale_stat(rates, bases[q] / 100, ranges[q] / 100, core[subType, 1]);
gun[weapon_index.fire_timeout] = 60 / rates;

//Magazine Size
var mag = 20;
mag = inventory_scale_stat(mag, bases[q] / 100, ranges[q] / 100, core[subType, 2]);
gun[weapon_index.capacity] = round(mag);
gun[weapon_index.remaining] = min(60, gun[weapon_index.capacity]);

//Reload Time (Seconds)
var reload = 1.0;
reload = inventory_scale_stat(reload, bases[q] / 100, ranges[q] / 100, core[subType, 3]);
gun[weapon_index.reload_timeout] = reload * 60;

gun = inventory_skin_gun(gun);

return gun;
