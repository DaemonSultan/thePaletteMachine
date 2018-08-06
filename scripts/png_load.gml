///png_load(filename);
//Dedicated to Main.
//load a png, return it as a sprite.
var filename = argument0;

var backslash = string_count("\", filename);
var num = 0;
var pos = 0;

for(var i = 1; i <= string_length(filename); i++){
    if(string_char_at(filename, i) == "\") num++;
    if(num == backslash){pos = i; break;}
}

var actualName = string_copy(filename, pos + 1, string_length(filename) - pos);
directory = string_copy(filename, 1, pos);

var isStrip = (string_count("_strip", actualName) == 1);
var subimg;

if(isStrip){
    var strip = string_copy(actualName, string_pos("_strip", actualName), string_length(actualName) - (string_pos("_strip", actualName)) + 1);
    loadName = string_copy(actualName, 1, string_pos("_strip", actualName) - 1);
    subimg = real(string_digits(strip));
}else{
    loadName = string_copy(actualName, 1, string_pos(".png", actualName) - 1);
    subimg = 1;
}
var sprite = sprite_add(filename, subimg, false, false, 0, 0);
var width = sprite_get_width(sprite);
var height = sprite_get_height(sprite);

if(width > 256 or height > 256) show_error("That is just too big!!", true);

var xoff = floor(width / 2);
var yoff = floor(height / 2);
sprite_set_offset(sprite, xoff, yoff);

if(!surface_exists(surface)) surface = surface_create(width, height);
else surface_resize(surface, width, height);

imgNum = subimg;
currentImg = 0;
ratio = 1;
newHue = 0;
return sprite;
