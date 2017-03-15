///minimap_draw_symbol(obj, sprite, px, py, scale)
var target = argument0;
var sprite = argument1;
var px = argument2;
var py = argument3;
var scale = argument4;

with(target)
{
    var dx = ((obj_player.x - x) / 64) * scale;
    var dy = ((obj_player.y - y) / 64) * scale;
    
    if(abs(dx) < (other.map_diameter / 2) && abs(dy) < (other.map_diameter / 2))
    {
        draw_sprite(sprite, 0, px - dx, py - dy);
    }
}
