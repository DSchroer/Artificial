///inventory_generate_quality_weights(min_quality, common_weight);
var min_quality = argument0;
var common_weight = argument1;
var weights = array(common_weight, 90, 21, 3, 1);
var qualities = inventory_get_qualities();
for(var i = 0; i <= item_quality.legendary; i++)
{
    if(min_quality > qualities[i])
    {
        weights[i] = 0;
    }
}
return weights;
