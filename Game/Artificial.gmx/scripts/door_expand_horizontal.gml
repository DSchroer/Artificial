///door_expand_horizontal()
if(collision_point(x - 32, y + 32, obj_gate, false, true))
{
    exit;
}

var hp = x + 96;
var item = noone;
do
{
    item = collision_point(hp, y + 32, obj_gate, false, true);
    if(item)
    {
        with(item)
        {
            instance_destroy();
        }
        hp += 64;
        image_xscale += 1;
    }
}
until(!item);

