///keymap_gamepad_check_pressed(button)
var btn = argument0;
for(var i = 0; i < gamepad_get_device_count(); i++)
{
    if(gamepad_button_check_pressed(i, btn))
    {
        return true;
    }
}
return false;
