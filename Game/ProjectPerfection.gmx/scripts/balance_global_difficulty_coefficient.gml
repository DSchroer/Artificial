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
    return 0.7;
case difficulty.nightmare:
    return 2;
default: 
    return 1;    
}

