///overlay_capture()
if(!surface_exists(surface))
{
    surface = surface_create(room_width, room_height);
}else{
    surface_resize(surface, room_width, room_height);
}
view_xview[1] = 0;
view_yview[1] = 0;
view_wview[1] = room_width;
view_hview[1] = room_height;
view_surface_id[1] = surface;
view_visible[1] = true;
capturing = true;
