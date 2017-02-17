///camera_resize()
var w = window_get_width();
var h = window_get_height();
height = (h/w) * width;

room_set_view_enabled(0, true);
view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = w;
view_hport[0] = h;

view_wview[0] = width;
view_hview[0] = height;

//surface_resize()
surface_resize(application_surface ,w, h);
