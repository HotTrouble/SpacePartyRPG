var set = argument0;
var point = argument1;

if(!ds_map_exists(set, point))
{
    set[? point] = point;
}
