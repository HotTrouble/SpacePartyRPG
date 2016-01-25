var outline_alpha=1;
var outline_color=c_red;
var outline_offset=1;

draw_sprite_ext(sprite_index,image_index,x-outline_offset,y,image_xscale,image_yscale,image_angle,outline_color,outline_alpha)
draw_sprite_ext(sprite_index,image_index,x+outline_offset,y,image_xscale,image_yscale,image_angle,outline_color,outline_alpha)
draw_sprite_ext(sprite_index,image_index,x,y-outline_offset,image_xscale,image_yscale,image_angle,outline_color,outline_alpha)
draw_sprite_ext(sprite_index,image_index,x,y+outline_offset,image_xscale,image_yscale,image_angle,outline_color,outline_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

