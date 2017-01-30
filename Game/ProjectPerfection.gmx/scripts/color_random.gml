///color_random()
var hue = random(255);
var saturation = random(255);
var value = random(255 - 64) + 64;
return make_colour_hsv(hue, saturation, value);
