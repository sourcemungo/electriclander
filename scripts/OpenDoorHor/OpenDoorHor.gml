var stop;
stop = instance_nearest(x,y,obj_DoorStop);

if(stop.x > x)
    {
        phy_speed_x = 1;
    }
else
    {
        phy_speed_x = -1;
    }
stop.image_speed = 1;