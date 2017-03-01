///choose_weighted(choices, weights)

var choices = argument0;
var weights = argument1;

var total_weight = 0;

for(var i = 0; i < array_length_1d(weights); i++)
{
    total_weight += weights[i];
}

var rng = irandom_range(1, total_weight);

var current_bottom = 1;
for(var i = 0; i < array_length_1d(weights); i++)
{
    if(rng >= current_bottom && rng < current_bottom + weights[i])
    {
        return choices[i];   
    }   
    current_bottom += weights[i];
}
return false;
