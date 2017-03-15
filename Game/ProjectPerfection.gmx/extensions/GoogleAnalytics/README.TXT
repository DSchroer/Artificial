Google Analytics Extension

IMPORTANT NOTE:
Please replace the function called device_get_id(), as I cannot bundle someone else's extension. You should find a better way to generate device ID's. Please look on the YYG marketplace for DeviceID for Android and iOS to replace this function. 

Functions:

google_analytics_init(trackingID, appName, version, appID);
  - trackingID: The tracking ID of your app, usually in the form UA-xxxxxxx-x
  - appName: A readable version of your app title. Eg "My Game".
  - version: String representation of the applications version. Eg "1.0"
  - appID: Package name for the app, usually reverse domain name Eg com.example.game

google_analytics_screenview(screenName);
  - screenName: Name of the "screen" the user has just gone to (can be different menus, game levels, etc)

google_analytics_event(category, action[, value, label]);
  - category: The category of the event
  - action: The action the user performed
  - value (optional): Quantative value related to the action
  - label (optional): Readable title

google_analytics_time_start(category, name);
This function starts a timer to report to analytics. Can be used to do things like track how long levels take to load etc.
  - category: The category of the timer
  - name: Name of the timer
This function works in conjunction with:

google_analytics_time_end(category, name);
This function must be called with the exact same category and name you called time_start with.
When called it takes the time since time_start was called and sends it to analytics.