///array_add(array_id, val);
var array = argument0, val = argument1;

if(!is_array(array)){
    array = array_create(1);
    array[0] = val;
}else{
    var length = array_length_1d(array);
    array[length] = val;
}
return array;

