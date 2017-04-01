///balance_global_difficulty_coefficient()

enum difficulty
{
    easy = 0,
    normal = 1,
    nightmare = 2
}

var difficulty = save_get_value(obj_save_data, "difficulty", difficulty.normal);

switch(difficulty)
{
case difficulty.easy:
    return 0.63;
case difficulty.nightmare:
    return 1.7;
default: 
    return 1;    
}

