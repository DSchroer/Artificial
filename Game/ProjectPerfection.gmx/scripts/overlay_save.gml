///overlay_save()
if(capturing)
{
    display_sprites[level.current_room] = sprite_create_from_surface(view_surface_id[1], 0, 0, room_width, room_height, false, false, 0, 0);
    view_visible[1] = false;
    capturing = false;
}
