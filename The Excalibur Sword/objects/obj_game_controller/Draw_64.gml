/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(0.25);
draw_set_alpha(1);
draw_healthbar(20, 11, 120, 32, health, c_black, c_red, c_green, 0, false, false);
draw_sprite(spr_bar, 0, 20, 10);
draw_set_font(font_main_menu2);
draw_text(80, 55, "If stuck press L");
draw_set_halign(fa_center);
