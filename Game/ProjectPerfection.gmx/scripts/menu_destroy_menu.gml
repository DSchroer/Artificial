///menu_destroy_menu(type)

var type = argument0;

switch(type)
{
case menu_type.main:
    menu_destroy_main_menu();
    break;
case menu_type.options:
    menu_destroy_options_menu();
    break;
}

