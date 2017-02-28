
sm_set_state("idle");

var pdist = point_distance(obj_player.x, obj_player.y, x, y);
if(pdist < 400)
{
    if(random(2) < 1)
    {
        attack_gun(basic, x, y, enemy_dumb(enemy_target(obj_player, 20), 10), self);
    }else{
        attack_gun(slam, x, y, enemy_dumb(enemy_target(obj_player, 20), 0), self);
    }
}else if(pdist < 900)
{
    attack_gun(wave, x, y, enemy_dumb(enemy_target(obj_player, 20), 0), self);
}else{
    attack_gun(rock, x, y, enemy_dumb(enemy_target(obj_player, 20), 0), self);
}
