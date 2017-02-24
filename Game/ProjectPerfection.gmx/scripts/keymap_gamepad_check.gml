///keymap_gamepad_check(button)
var btn = argument0;
for(var i = 0; i < gamepad_get_device_count(); i++)
{
    if(gamepad_button_check(i, btn))
    {
        return true;
    }
}
return false;
