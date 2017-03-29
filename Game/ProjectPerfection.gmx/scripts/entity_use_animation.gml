///entity_use_animation(sprite, force)
var sprite = argument0;
var force = argument1;

if(sprite_index != sprite && (force ||  image_index >= image_number - 1))
{
    sprite_index = sprite;   
}
