surface_set_target(surface);


draw_set_color(c_white);
draw_set_font(font0);

draw_sprite(spr_Haze,0,0,0);
draw_sprite(spr_Rewind,0,50,160);
draw_sprite(spr_Restart,0,175,160);
draw_sprite(spr_Hash,0,300,160);
draw_sprite(spr_Continue,0,450,160);

surface_reset_target();
draw_surface( surface , x , y);