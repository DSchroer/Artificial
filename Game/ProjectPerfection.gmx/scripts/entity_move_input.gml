///entity_move_input()
var x_dir = 0;
var y_dir = 0;

if(keymap_check(keycode.up))
{
    y_dir -= 1;
}

if(keymap_check(keycode.down))
{
    y_dir += 1;
}

if(keymap_check(keycode.left))
{
    x_dir -= 1;
}

if(keymap_check(keycode.right))
{
    x_dir += 1;
}

if(x_dir != 0 || y_dir != 0)
{
    if(speed <= 8)
    {
        var new_dir = point_direction(0, 0, x_dir, y_dir);
        motion_add(new_dir, 3);
    }
}


