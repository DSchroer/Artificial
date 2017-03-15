///attack_gun_ext(weapon, x, y, direction, dist, ignore, flash)
var weapon = argument0;
var xpos = argument1;
var ypos = argument2;
var dir = argument3;
var dist = argument4;
var ignore = argument5;
var flash = argument6;

xpos += lengthdir_x(dist, dir);
ypos += lengthdir_y(dist, dir);

if(is_paused())
{
    return weapon;
    exit;
}

if(weapon[weapon_index.reload_cooldown] > 0 || weapon[weapon_index.fire_cooldown] > 0)
{    
    return weapon;
    exit;
}

if(--weapon[weapon_index.remaining] <= 0)
{
    weapon = player_reload(weapon); 
}

weapon[weapon_index.fire_cooldown] = weapon[weapon_index.fire_timeout];

if(self.object_index == obj_player)
{
    with(obj_camera)
    {
        camera_shake(15);
    }
    gun_recoil += 10 * weapon[weapon_index.recoil_modifier];
    var base = -32;
    motion_add(dir, base * (1 / 60 * weapon[weapon_index.fire_timeout]) * weapon[weapon_index.recoil_modifier]);
}

switch(weapon[weapon_index.modifier])
{
    case weapon_modifier.normal:
        attack_normal(weapon, xpos, ypos, dir, ignore);
        break;
    case weapon_modifier.plasma:
        attack_plasma(weapon, xpos, ypos, dir, ignore);
        break;
    case weapon_modifier.rail:
        attack_rail(weapon, xpos, ypos, dir, ignore);
        break;
    case weapon_modifier.scatter:
        attack_scatter(weapon, xpos, ypos, dir, ignore);
        break;
    case weapon_modifier.sword:
        attack_sword(weapon, xpos, ypos, dir, ignore);
        break;
}

if(flash)
{
    instance_create(xpos, ypos, obj_muzzle_flash);
}

return weapon;
