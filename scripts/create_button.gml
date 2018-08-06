///create_button(x, y, name, isLong, showName)
//Dedicated to Buttonable.
//create a button, and return its id.
var xx = argument0, yy = argument1, str = argument2;
var spr;

if(argument3) spr = LongButtonS;
else spr = ShortButtonS;

var button = instance_create(xx, yy, Button);
button.sprite_index = spr;
button.name = str;
button.boundTo = self.id;
button.depth = self.depth - 1;
button.showName = argument4;

return button;
