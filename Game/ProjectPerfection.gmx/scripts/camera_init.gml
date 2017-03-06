///camera_init()
move_speed = 0.1;
zoom_speed = 0.25;

width = 1920;

x_target = x;
y_target = y;

shake_x = 0;
shake_y = 0;

current_zoom = 1;
zoom = 1;

camera_resize();
texture_set_interpolation(false);


