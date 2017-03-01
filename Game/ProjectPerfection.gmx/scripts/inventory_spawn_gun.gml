///inventory_spawn_gun(power)
var pow = argument0;
var gun = inventory_create_weapon();

var q;
var weights = array(1, 3, 21, 90, 885);
var types = array(item_quality.legendary, item_quality.epic, item_quality.rare, item_quality.uncommon, item_quality.common);
q = choose_weighted(types, weights);

weights = array(10, 10, 10, 10);
types = array(weapon_modifier.normal, weapon_modifier.rail, weapon_modifier.plasma, weapon_modifier.scatter);
gun[weapon_index.modifier] = choose_weighted(types, weights); 
gun[weapon_index.name] = "Gun";
gun[weapon_index.quality] = q;

var shot_sprites;
shot_sprites[weapon_modifier.normal] = spr_bullet;
shot_sprites[weapon_modifier.plasma] = spr_plasma;
shot_sprites[weapon_modifier.rail] = spr_rail;
shot_sprites[weapon_modifier.scatter] = spr_bullet;
gun[weapon_index.bullet_sprite] = shot_sprites[gun[weapon_index.modifier]];

var weights = array(10, 10, 10, 10, 10, 10, 10, 10);
types = array(weapon_subtype.pistol, weapon_subtype.auto_rifle, weapon_subtype.heavy_rifle, weapon_subtype.sniper_rifle, weapon_subtype.smg, weapon_subtype.extended_magazine, weapon_subtype.superfast_reload, weapon_subtype.machine_gun);
subType = choose_weighted(types, weights);
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
gun[weapon_index.recoil_modifier] = core[subType, 4];

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
