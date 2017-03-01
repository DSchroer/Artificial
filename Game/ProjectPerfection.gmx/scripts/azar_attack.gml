
sm_set_state("idle");

var pdist = point_distance(obj_player.x, obj_player.y, x, y);
if(pdist < 400)
{
    if(random(2) < 1)
    {
        enemy_attack(obj_player, basic);
    }else{
        enemy_attack(obj_player, slam);
    }
}else if(pdist < 900)
{
    enemy_attack(obj_player, wave);
}else{
    enemy_attack(obj_player, rock);
}
