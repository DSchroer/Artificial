///ui_draw_weapon_tooltip(x, y, weapon)

var xpos = argument0;
var ypos = argument1;
var weapon = argument2;

var dmg = weapon[weapon_index.damage];
var fire_rate = 1; //(60 / weapon[weapon_index.fire_timeout]);
var dps = dmg * fire_rate;
var quality_colour = ui_get_quality_colour();
var modifier_colour = ui_get_modifier_colour(weapon[weapon_index.modifier]);

var text;
var colours;
var scales;
var stats;
var stat_colours;
var c = 0;

text[c] = "Epic Rifle";
colours[c] = quality_colour;
scales[c] = 1;
stats[c] = -1;
c++;

text[c] = ui_get_quality_string() + " " + inventory_get_modifier_name(weapon[weapon_index.modifier]);
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

if(weapon[weapon_index.modifier] != weapon_modifier.sword)
{
    text[c] = " Bullet Capacity";
    colours[c] = "|tooltip";
    scales[c] = 1;
    stats[c] = string(weapon[weapon_index.capacity]);
    stat_colours[c] = "|white";
    c++;
}

ui_draw_tooltip(xpos, ypos, text, colours, scales, stats, stat_colours);




