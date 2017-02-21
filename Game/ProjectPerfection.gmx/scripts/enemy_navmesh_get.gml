///enemy_navmesh_get()

var nav = level_stub_find(obj_navmesh);
if(!nav)
{
    return instance_create(x, y, obj_navmesh);
}else{
    return nav;
}
