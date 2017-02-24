///player_render_self()

if(!surface_exists(surface))
{
    surface = surface_create(256, 256);
}

surface_set_target(surface);
draw_clear_alpha(c_red, 0);

var yscale = 0.75;
if(gun_angle > 90 && gun_angle < 270)
{
    image_xscale = -1;
    yscale = -0.75;
}else{
    image_xscale = 1;
}

if(gun_angle <= 180)
{
    sprite_index = spr_player_back;
}else{
    sprite_index = spr_player;
}

var distance = 13;

if(view_current == 0)
{
    var gangle = 270;
    var gdist = 10;
    if(is_array(inventory[selected_slot]))
    {
        gangle = gun_hand_angle(inventory[selected_slot], 1, gun_dist, gun_angle, 0.75, yscale);
        gdist = gun_hand_distance(inventory[selected_slot], 1, gun_dist, gun_angle, 0.75, yscale);
    }
    
    var gx = lengthdir_x(gdist, gangle) + base_x + (gun_x * image_xscale);
    var gy = lengthdir_y(gdist, gangle) + base_y + gun_y;

    draw_ik(base_x + (arm_2_x * image_xscale), base_y + arm_2_y, gx, gy, 23-6, 22-5, image_xscale > 0, spr_player_arm_r, spr_player_arm_r_bottom);
    
    draw_sprite_ext(sprite_index, image_index, base_x, base_y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    
    if(is_array(inventory[selected_slot]))
    {
        draw_held_gun(inventory[selected_slot], base_x + (gun_x * image_xscale), base_y + gun_y, gun_dist, gun_angle, 0.75, yscale);
    }
    
    if(is_array(inventory[selected_slot]))
    {
        gangle = gun_hand_angle(inventory[selected_slot], 0, gun_dist, gun_angle, 0.75, yscale);
        gdist = gun_hand_distance(inventory[selected_slot], 0, gun_dist, gun_angle, 0.75, yscale);
    }
    
    gx = lengthdir_x(gdist, gangle) + base_x + (gun_x * image_xscale);
    gy = lengthdir_y(gdist, gangle) + base_y + gun_y;
    
    draw_ik(base_x + (arm_1_x * image_xscale), base_y + arm_1_y, gx, gy, 23-6, 22-5, image_xscale > 0, spr_player_arm_l, spr_player_arm_l_bottom);
}

surface_reset_target();
