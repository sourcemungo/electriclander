draw_self();
var my_red;
my_red = make_color_rgb(206,57,62);
if(attached_to_lander == 0 && twinkles_under_umbrella > 0 )
{ 
    draw_sprite(spr_Halo,0,x,y);
    draw_set_color(my_red);
    draw_set_font(font0);
    draw_text(x-10,y-24,string_hash_to_newline(string(twinkles_under_umbrella)));
}

