/// range_finder(x,y,dir,range,object,prec,notme, offset)
//
//  Returns the exact distance to the nearest instance of an object in a
//  given direction from a given point, or noone if no instance is found.
//  The solution is found in log2(range) collision checks.
//
//      x,y         position in room, real
//      dir         direction to look in degrees, real
//      range       the greatest distance to look in pixels, real
//      object      which objects to look for (or all), real
//      prec        true to use precise collision checking, bool
//      notme       true to ignore the calling instance, bool
//
/// GMLscripts.com/license
{
    var ox,oy,dir,range,object,prec,notme,dx,dy,sx,sy,distance;
    ox = argument0;
    oy = argument1;
    dir = argument2;
    range = argument3;
    object = argument4;
    prec = argument5;
    notme = argument6;
    var offset = argument7;
    
    sx = lengthdir_x(range,dir);
    sy = lengthdir_y(range,dir);
    dx = ox + sx;
    dy = oy + sy;
    
    var ca = collision_line(ox,oy + offset,dx,dy + offset,object,prec,notme);
    var cb = collision_line(ox,oy,dx,dy,object,prec,notme);
    var hit = (ca >= 0 && cb >= 0);
    
    if (!hit) {
        distance = -1;
    }else{
        while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
            sx /= 2;
            sy /= 2;
            
            ca = collision_line(ox,oy + offset,dx,dy + offset,object,prec,notme);
            cb = collision_line(ox,oy,dx,dy,object,prec,notme);
            hit = (ca >= 0 && cb >= 0);
            
            if (!hit) {
                dx += sx;
                dy += sy;
            }else{
                dx -= sx;
                dy -= sy;
            }
        }
        
        distance = point_distance(ox,oy,dx,dy);
    }
    return distance;
}
