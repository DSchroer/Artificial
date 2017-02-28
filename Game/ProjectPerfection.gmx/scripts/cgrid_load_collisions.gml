///cgrid_load_collisions()
with(obj_wall)
{
    ds_grid_set_region(other.cgrid, x / other.cgrid_size, y / other.cgrid_size, (x / other.cgrid_size) + 1, (y / other.cgrid_size) + 1, id)
}
