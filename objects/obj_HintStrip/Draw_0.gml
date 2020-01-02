
draw_self();
draw_set_color(c_silver);
draw_set_font(font0);

var title_y;
title_y = y-sprite_height/2 + 50;

draw_text(20,title_y ,string_hash_to_newline("Game Hint"));

draw_set_font(font4);
draw_text(40,title_y + 70, string_hash_to_newline(global.game_hints[global.game_hint_index]));




