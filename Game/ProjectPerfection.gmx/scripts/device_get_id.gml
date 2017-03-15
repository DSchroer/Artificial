#define device_get_id
///device_get_id()
/*
    PLEASE NOTE: You should find a better way to
    generate device ID's. Please look on the YYG
    marketplace for DeviceID for android and
    iOS and replace this function.
*/
var rID = "unknown";
ini_open("ga.ini");
    if (ini_key_exists("ga", "id")) {
        rID = ini_read_string("ga", "id", "unknown");
    } else {
        rID = random_string(25);
        ini_write_string("ga", "id", rID);
    }
ini_close();

return rID;

#define random_string
///random_string(l)
var str = "";
repeat(argument0)
{
    str += chr(ord("a") + irandom(25));
}

return str;