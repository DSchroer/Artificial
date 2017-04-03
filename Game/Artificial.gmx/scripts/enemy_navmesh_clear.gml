///enemy_navmesh_clear()
if(sm_has_var("path"))
{
    var path = sm_get_var("path");
    if(path_exists(path))
    {
        path_delete(path);
    }   
}
