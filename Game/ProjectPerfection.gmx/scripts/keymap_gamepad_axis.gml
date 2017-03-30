///keymap_gamepad_axis(axis)
var axis = argument0;

var abs_val = 0;
var val = 0;
for(var i = 0; i < gamepad_get_device_count(); i++)
{
    var a = gamepad_axis_value(i, axis);
    if(abs(a) > abs_val)
    {
        abs_val = abs(a);
        val = a;
    }
}
return val;
