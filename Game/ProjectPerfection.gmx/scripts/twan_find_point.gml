///twan_find_point()
if(instance_number(obj_twan_point) == 0)
{
    speed = 0;
    var tx = random(room_width);
    var ty = random(room_height);
    
    if(enemy_line_of_sight_ext(tx, ty, 45) && !cgrid_place_meeting(tx, ty))
    {
        var nearest = instance_nearest(tx, ty, obj_wall);
        if(point_distance(tx, ty, nearest.x, nearest.y) > 64 && 
        point_distance(tx, ty, obj_player.x, obj_player.y) > 500)
        {
            instance_create(tx, ty, obj_twan_point);
        }
    }
}else{
    enemy_navmesh_move_nowall(obj_twan_point, 10, 60);
    
    if(point_distance(x, y, obj_twan_point.x, obj_twan_point.y) < 64)
    {
        speed = 0;
        with(obj_twan_point)
        {
            instance_destroy();
        }
        sm_set_state("idle");
    }
}
