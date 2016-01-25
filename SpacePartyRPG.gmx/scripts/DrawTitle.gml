///DrawTitle(text)
var text=argument0;

draw_set_font(card_text_font);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(sprite_width / 2 + 10 + x, 55 * image_yscale + y, text);
