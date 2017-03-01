///inventory_generate_quality_weights(min_quality);
var min_quality = argument0;
var weights = array(885, 90, 21, 3, 1);
var qualities = inventory_get_qualities();
for(var i = 0; i < item_quality.unique; i++)
{
    if(min_quality > qualities[i])
    {
        weights[i] = 0;
    }
}
return weights;
