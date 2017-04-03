///menu_create_menu(type)

var type = argument0;

switch(type)
{
case menu_type.main:
    menu_create_main_menu();
    break;
case menu_type.options:
    menu_create_options_menu(0);
    break;
case menu_type.difficulty_menu:
    menu_create_difficulty_menu();
    break;
case menu_type.tutorial_skip:
    menu_create_skip_tutorial();
    break;
            
}

