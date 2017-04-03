///camera_update()
x = lerp(x, x_target, move_speed);
y = lerp(y, y_target, move_speed);
current_zoom = lerp(current_zoom, zoom, zoom_speed);
view_wview[0] = (width * current_zoom);
view_hview[0] = (height * current_zoom);

view_xview[0] = x - ((width * current_zoom) / 2);
view_yview[0] = y - ((height * current_zoom) / 2);
