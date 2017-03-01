///ui_draw_weapon_tooltip_2(x, y, weapon)

///ui_draw_weapon_tooltip(x, y, weapon)

var xpos = argument0;
var ypos = argument1;
var weapon = argument2;

var dmg = weapon[weapon_index.damage];
var fire_rate = (60 / weapon[weapon_index.fire_timeout]);
var dps = dmg * fire_rate;
var reload_time = weapon[weapon_index.reload_timeout] / 60;
var bullet_capacity = weapon[weapon_index.capacity];
var quality_colour = ui_get_quality_colour(weapon[weapon_index.quality]);
var modifier_colour = ui_get_modifier_colour(weapon[weapon_index.modifier]);

var text;
var colours;
var scales;
var stats;
var stat_colours;
var c = 0;

text[c] = weapon[weapon_index.name];
colours[c] = quality_colour;
scales[c] = 1.25;
stats[c] = -1;
c++;

text[c] = ui_get_quality_string(weapon[weapon_index.quality]) + " " + inventory_get_modifier_name(weapon[weapon_index.modifier]) + " " + inventory_get_subtype_name(weapon[weapon_index.weapon_subtype]);
colours[c] = quality_colour;
scales[c] = 1;
stats[c] = -1;
c++;

text[c] = " Damage per Second";
colours[c] = "|tooltip";
scales[c] = 1;
stats[c] = string(dps);
stat_colours[c] = "|white";
c++;


text[c] = " Damage";
colours[c] = "|tooltip";
scales[c] = 1;
stats[c] = string(dmg);
stat_colours[c] = "|white";
c++;

text[c] = " Attacks per Second";
colours[c] = "|tooltip";
scales[c] = 1;
stats[c] = string(fire_rate);
stat_colours[c] = "|white";
c++;

text[c] = " Second Reload";
colours[c] = "|tooltip";
scales[c] = 1;
stats[c] = string(reload_time);
stat_colours[c] = "|white";
c++;

text[c] = " Bullet Capacity";
colours[c] = "|tooltip";
scales[c] = 1;
stats[c] = string(bullet_capacity);
stat_colours[c] = "|white";
c++;

ui_draw_tooltip(xpos, ypos, text, colours, scales, stats, stat_colours);




