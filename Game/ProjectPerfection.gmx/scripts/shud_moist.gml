///shud_moist()

speed = 15 * speed_mod;

if(sm_ticks() == 0)
{
    sm_set_var("px", obj_player.x);
    sm_set_var("py", obj_player.y);
}

var px = sm_get_var("px");
var py = sm_get_var("py");

shud_turn_dir(point_direction(x, y, px, py), 2);
if(point_distance(x, y, px, py) < 100)
{
    with(obj_shuud_body)
    {
        for(var i = -1; i <= 1; i++)
        {
            var yd = lengthdir_y(16 * i, direction);
            var xd = lengthdir_x(16 * i, direction);
            attack_gun_ext(other.moist, x + xd, y + yd, direction + 90, sprite_width / 2, self, false, false, false, false);
            attack_gun_ext(other.moist, x + xd, y + yd, direction - 90, sprite_width / 2, self, false, false, false, false);
        }
    }
    for(var i = 0; i < 18; i++)
    {
        var diff = -90 + ((180/18) * i);
        attack_gun_ext(moist, x + xd, y + yd, direction + diff, sprite_width / 2, self, false, false, false, false);
    }
    
    sfx_play_volume(snd_shuude_echolocate, false, 0.8);
    sm_set_state("turn");
}

if(sm_ticks() > 60 * 5)
{
    sm_set_state("turn");
}

attack_gun(mele, x, y, 0, self, false, false);

