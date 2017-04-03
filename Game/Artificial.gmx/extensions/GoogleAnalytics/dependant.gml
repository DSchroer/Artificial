#define isset
gml_pragma("forceinline");
return !is_undefined(argument[0]);

#define iter
///iter(map[,create])
/*useage: 
j = iter(m, true);
while (iter(j)) {
    i = iterkey(j);
    v = iterval(j);
}
*/

var m = argument[0], v;

if (argument_count == 1) { //iterate mode
    if (m[@ 0] >= m[@ 1])
        return false;
    
    if (m[@ 0] != 0) {
        m[@ 2] = ds_map_find_next(m[@ 3], m[@ 2]);
        m[@ 4] = ds_map_find_value(m[@ 3], m[@ 2]);
    }
    ++m[@ 0];     

    return true;
} else {
    //create mode
    //internal - formatting: [iteration,size,stringindex,mapind,value]
    var j;
    j[4] = undefined;
    j[3] = m;
    j[2] = ds_map_find_first(m);
    j[1] = ds_map_size(m);
    j[0] = 0;
    
    j[4] = ds_map_find_value(j[3], j[2]);
    return j;
}



#define iterkey
///iterkey(iter)
gml_pragma("forceinline");

return argument0[@2];


#define iterval
///iterval(iter)
gml_pragma("forceinline");

return argument0[@4];

#define dm
///dm(prop,value,...)
//creates and returns a map with the specified values
var a = ds_map_create();
for (var i = 0; i < argument_count; i += 2)
    a[? argument[i]] = argument[i + 1];
return a;

#define url_encode
////////////////////////////////////////////////////////////////
//
//url_encode(argument0);
//
//URL-Encodes a string according to RFC 1738
//Written by Insane
//http://gmc.yoyogames.com/index.php?showtopic=327587 
////////////////////////////////////////////////////////////////
var orig,new,char,tmp,ans;
orig = string(argument0);
new = "";
char = 0;
tmp = 0;
ans = 0;
for (ps=1; ps<=string_length(orig); ps+=1)
    {
    char = string_char_at(orig,ps);
    char = ord(char);
    if (char < 32) || (char > 126) || (char == 36) || (char == 38) || (char == 43) || (char == 44) || (char == 47) || (char == 58) || (char == 59) || (char == 61) || (char == 63) || (char == 64) || (char == 32) || (char == 34) || (char == 60) || (char == 62) || (char == 35) || (char == 37) || (char == 123) || (char == 125) || (char == 124) || (char == 92) || (char == 94) || (char == 126) || (char == 91) || (char == 93) || (char == 96)
        {
        tmp = floor(char/16);
        ans = char-tmp*16;
        tmp = string(tmp);
        if (tmp = "10") tmp = "A";
        if (tmp = "11") tmp = "B";
        if (tmp = "12") tmp = "C";
        if (tmp = "13") tmp = "D";
        if (tmp = "14") tmp = "E";
        if (tmp = "15") tmp = "F";
        ans = string(ans);
        if (ans = "10") ans = "A";
        if (ans = "11") ans = "B";
        if (ans = "12") ans = "C";
        if (ans = "13") ans = "D";
        if (ans = "14") ans = "E";
        if (ans = "15") ans = "F";
        new = new+"%"+tmp+ans;
        }
    else
        {
        new = new+chr(char);
        }
   }
return new;
