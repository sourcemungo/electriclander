image_speed = 0;


portalIn = instance_furthest(x,y,obj_Portal_In);

if(portalIn.phy_position_x < x) 
    {
        image_index = 1;
        phy_speed_y = 2;
    }
else
    {
        image_index = 0;
        phy_speed_y = -2;
    }