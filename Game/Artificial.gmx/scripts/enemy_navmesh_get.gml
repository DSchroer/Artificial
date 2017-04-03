///enemy_navmesh_get()

/*
var nav = level_stub_find(obj_navmesh);
if(!nav)
{
    return instance_create(x, y, obj_navmesh);
}else{
    return nav;
}*/

if(instance_number(obj_navmesh) > 0)
{
    var nav = instance_find(obj_navmesh, 0);
    return nav;
}
return instance_create(x, y, obj_navmesh);


