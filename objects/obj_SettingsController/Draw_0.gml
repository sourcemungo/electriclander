var top;
top = 200;

draw_sprite(spr_Configurator,0,180,100);

draw_set_font(font5);
draw_set_color(c_white)
draw_set_halign(fa_center);

draw_text( 320, top, string_hash_to_newline("Lander Thrust"));
top += 130;

draw_text( 320, top, string_hash_to_newline("Lander Rotation Speed"));
top += 130;

draw_text( 320, top, string_hash_to_newline("Lander Air Friction"));
top += 130;

draw_text( 320, top, string_hash_to_newline("Red Lander Freedom"));
top += 130;

draw_set_halign(fa_left);

