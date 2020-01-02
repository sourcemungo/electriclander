var i;
for(i=0;i<regions; i+=1)
    {
        draw_set_color(make_color_rgb(255,252,107));
        draw_set_alpha(0.2);
        draw_rectangle(region_x1[i], region_y1[i], region_x2[i], region_y2[i],false);
        draw_set_alpha(1);
    }
    