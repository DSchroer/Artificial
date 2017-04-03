///dym_port()

speed = 0;
if(sm_ticks() == 0)
{
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    var testx = obj_player.x + lengthdir_x(400, dir);
    var testy = obj_player.y + lengthdir_y(400, dir);
    
    if(cgrid_place_meeting(testx, testy) || !area_contains_point(obj_dym_area, testx, testy))
    {
        sm_set_state("idle");
        exit;
    }
    
    sm_set_var("sx", x);
    sm_set_var("sy", y);
    sm_set_var("px", testx);
    sm_set_var("py", testy);
    
    sfx_play_volume(snd_dym_cloudport, false, 1.0);
}

var sx = sm_get_var("sx");
var sy = sm_get_var("sy");
var px = sm_get_var("px");
var py = sm_get_var("py");

var time = 15;
if(sm_ticks() <= time)
{
    image_alpha = 0.5;
    x = lerp(sx, px, sm_ticks() / time);
    y = lerp(sy, py, sm_ticks() / time);
    rock_x = sx - x;
    rock_y = sy - y;
}else if(sm_ticks() == time + 1){
    image_alpha = 1;
    rock_x = 0;
    rock_y = 0;
}else{
    sm_set_state("idle");
}

