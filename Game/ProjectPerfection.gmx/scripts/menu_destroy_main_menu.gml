///menu_destroy_main_menu()

ds_list_clear(keep_centered);

with(logo)
{
    instance_destroy();
}
with(button_new)
{
    instance_destroy();
}
with(button_load)
{
    instance_destroy();
}
with(button_options)
{
    instance_destroy();
}
with(button_exit)
{
    instance_destroy();
}

