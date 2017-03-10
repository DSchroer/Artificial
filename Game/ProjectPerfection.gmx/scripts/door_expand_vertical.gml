///door_expand_vertical()
if(collision_point(x + 32, y - 32, obj_gate, false, true))
{
    exit;
}

var vp = y + 96;
var item = noone;
do
{
    item = collision_point(x + 32, vp, obj_gate, false, true);
    if(item)
    {
        with(item)
        {
            instance_destroy();
        }
        vp += 64;
        image_yscale += 1;
    }
}
until(!item);
