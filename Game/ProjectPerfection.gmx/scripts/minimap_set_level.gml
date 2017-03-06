///minimap_set_level(level)
level = argument0;
if(map_texture != -1)
{
    sprite_delete(map_texture);
}
map_texture = -1;
