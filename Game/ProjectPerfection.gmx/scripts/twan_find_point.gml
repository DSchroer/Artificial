///twan_find_point()
if(sm_ticks() == 0)
{
    sm_pop_var("wait");
}

if(instance_number(obj_twan_point) == 0)
{
    speed = 0;
    var tx = random(room_width);
    var ty = random(room_height);
    
    var mesh = enemy_navmesh_get();
    
    if(enemy_line_of_sight_ext(tx, ty, 45) && !cgrid_place_meeting(tx, ty))
    {
        debug_show_string(string(mp_grid_get_cell(mesh.nav, tx, ty)));
        if(mp_grid_get_cell(mesh.nav, tx, ty) != 0)
        {
            var nearest = instance_nearest(tx, ty, obj_wall);
            if(point_distance(tx, ty, nearest.x, nearest.y) > 64 && 
            point_distance(tx, ty, obj_player.x, obj_player.y) > 500)
            {
                instance_create(tx, ty, obj_twan_point);
            }
        }
    }
}else{

    if(obj_twan_point.x > x)
    {
        image_xscale = 1;
    }else{
        image_xscale = -1;
    }

    entity_use_animation(spr_twan_move, true);
    enemy_navmesh_move_nowall(obj_twan_point, 10, 60);
    
    if(!sm_has_var("wait"))
    {
        sm_set_var("wait", 0);
    }
    
    if(sm_get_var("wait") > 25)
    {
        if(enemy_line_of_sight_ext(x, y, 45))
        {
            sm_set_var("wait", 0);
            sm_push_var("wait");
            sm_set_state("mgun");
        }
        
    }else{
        sm_set_var("wait", sm_get_var("wait") + 1);
    }
    
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
