///menu_create_menu(type)

var type = argument0;

switch(type)
{
case menu_type.main:
    menu_create_main_menu();
    break;
case menu_type.options:
    menu_create_options_menu();
    break;
}

