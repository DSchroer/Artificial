///workbench_destroy_menu()

created = false;
with(obj_player)
{
    open_workbench = false;
}

with(button_upgrade_health)
{
    instance_destroy();
}
with(button_upgrade_recharge)
{
    instance_destroy();
}
with(button_upgrade_delay)
{
    instance_destroy();
}
with(button_close)
{
    instance_destroy();
}
