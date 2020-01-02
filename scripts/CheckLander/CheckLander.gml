if(sqrt(power(lander.phy_position_x-x,2)+power(lander.phy_position_y-y,2)) < 25)
        {
            bouncer.phy_rotation -= 1;
        }