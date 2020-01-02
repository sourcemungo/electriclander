var to_draw;

to_draw = max_count - hit_count;
draw_self();

if(to_draw >0)
{
    draw_set_color(c_black);
    draw_set_font(font0);
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    draw_text(x,y,string_hash_to_newline(string(to_draw)));
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}