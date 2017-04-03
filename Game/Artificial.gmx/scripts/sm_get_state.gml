///sm_get_state()

if(is_paused())
{
    if(!was_paused)
    {
        was_paused = true;
        old_speed = speed;
        old_image_speed = image_speed;
    }
    speed = 0;
    image_speed = 0;
    return "paused";
}else if(was_paused){
    was_paused = false;
    speed = old_speed;
    image_speed = old_image_speed;
}

return sm_current_state;
