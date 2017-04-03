#define google_analytics_init
///google_analytics_init(key, appname, version, appid);
globalvar __ga, __gt;

__ga = ds_map_create();
__ga[? "key"] = argument[0];
__ga[? "endpoint"] = "https://www.google-analytics.com/collect";
__ga[? "appname"] = argument[1];
__ga[? "appversion"] = argument[2];
__ga[? "appid"] = argument[3];
__ga[? "enabled"] = true;//(os_type == os_android || os_type == os_ios);

__gt = ds_map_create();

google_analytics_start();

#define google_analytics_start
var param = dm();

param[? "sc"] = "start";
param[? "sr"] = string(display_get_width()) + "x" + string(display_get_height());
param[? "ul"] = string_lower(os_get_language() + "-" + os_get_region());
param[? "t"] = "screenview";
param[? "cd"] = "contentLoad";

google_analytics_request(param);

#define google_analytics_request
///google_analytics_request(mapdata)
/*
    Makes a request. mapdata is destroyed.
*/

var param = argument[0], i, paramstring = "";

//add in default settings
param[? "v"] = 1;
param[? "tid"] = __ga[? "key"];
param[? "cid"] = device_get_id();
param[? "ds"] = "app";
param[? "an"] = __ga[? "appname"];
param[? "aid"] = __ga[? "appid"];
param[? "av"] = string(__ga[? "appversion"]);
//IMPORTANT: t must be set to screenview or event usually

i = iter(param, true);
while (iter(i)) {
    paramstring += url_encode(iterkey(i))+ "=" + url_encode(iterval(i)) + "&";
}
paramstring = string_delete(paramstring, string_length(paramstring), 1);

if (__ga[? "enabled"])
    http_post_string(__ga[? "endpoint"], paramstring);

ds_map_destroy(param);

#define google_analytics_screenview
///google_analytics_screenview(screenname)
var param = dm();
param[? "t"] = "screenview";
param[? "cd"] = argument[0];

google_analytics_request(param);

#define google_analytics_event
///google_analytics_event(category, action[,value, label])
var param = dm();
param[? "t"] = "event";
param[? "ec"] = argument[0];
param[? "ea"] = argument[1];

//Optional parameters
if (argument_count > 2) {
   param[? "ev"] = argument[2];
    if (argument_count > 3)
        param[? "el"] = argument[3];
}

google_analytics_request(param);

#define D_google_analytics_dependencies
///dependencies
//these scripts are not part of the functionality of analytics
//dm(),dl() function
//url_encode function
//iter() library
//isset

#define google_analytics_time_start
///google_analytics_time_start(category, name)
__gt[? argument[0]+"-"+argument[1]] = current_time;

#define google_analytics_time_stop
///google_analytics_time_stop(category, name)
var param, ind = argument[0] + "-" + argument[1], t = __gt[? ind];

if (isset(t)) {
    param = dm();
    param[? "t"] = "timing";
    param[? "utc"] = argument[0];
    param[? "utv"] = argument[1];
    param[? "utt"] = current_time - t;
    
    google_analytics_request(param);
    ds_map_delete(__gt, ind);
} else {
    show_debug_message("timing index not found, not sending.");
}