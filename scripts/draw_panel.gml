///draw_panel(x1, y1, x2, y2)
//draw a panel.
var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3;
var bar = sprite_get_width(PanelS),
var width = abs(x2 - x1);
var height = abs(y2 - y1);
var gridx = ceil(width / bar);
var gridy = ceil(height / bar);
var subimg;

for(var i = 0; i < gridx; i++){
    for(var j = 0; j < gridy; j++){
        if(j == 0){
            if (i == 0) subimg = 0;
            else if (i == (gridx - 1)) subimg = 2;
            else subimg = 1;
        }else if (j == (gridy - 1)){
            if (i == 0) subimg = 6;
            else if (i == (gridx - 1)) subimg = 8;
            else subimg = 7;
        }else{
            if(i == 0) subimg = 3;
            else if (i == (gridx - 1)) subimg = 5;
            else subimg = 4;
        }
        draw_sprite(PanelS, subimg, x1 + (i*bar), y1 + (j*bar));
    }
}
