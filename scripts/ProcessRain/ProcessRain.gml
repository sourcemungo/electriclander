var far_rain, new_x;
far_rain = instance_furthest(x,y,obj_Rain);

if(follow_lander == 1)
    new_x = lander.phy_position_x + irandom_range(0,120) - 60;
else
    new_x = irandom_range(15,room_width-15);

if(far_rain != noone)
if(far_rain.y > room_height)
    {
    
       far_rain.phy_position_x = new_x;
       far_rain.phy_position_y = y;
       far_rain.phy_speed_y = far_rain.phy_speed_y/2;
    }

if(instance_number(obj_Rain) < global.raindrop_count && choose(1,2,3,4)==1)
    {
        rain = instance_create(new_x,y,obj_Rain);
     }
     