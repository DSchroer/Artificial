///draw_weapon(weapon, x, y, xscale, yscale, rot, alpha)
exit;
var weapon = argument0;
var xp = argument1;
var yp = argument2;
var xscale = argument3;
var yscale = argument4;
var rot = argument5;
var alpha = argument6;
var count = weapon[weapon_index.sprite_count];
for(var i = 0; i < count; i++)
{
    var sprite = weapon[weapon_index.sprite_count + (i * 2) + 1];
    var color = weapon[weapon_index.sprite_count + (i * 2) + 2];
    draw_sprite_ext(sprite, -1, xp, yp, xscale, yscale, rot, color, alpha);
}
