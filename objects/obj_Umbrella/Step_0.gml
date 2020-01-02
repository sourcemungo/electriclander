if(attached_to_lander ==0)
    {   
    if(abs(lander.phy_position_x - phy_position_x) < 50 
        && abs(lander.phy_position_y - phy_position_y) < 50
       ) 
       {  
            UmbrellaCheckForTwinkles();
            if(twinkles_under_umbrella == 0)
            {    
                attached_to_lander = 1;
            }
        }   
    }
else
    {
        phy_position_x = lander.phy_position_x;
        phy_position_y = lander.phy_position_y - 50;
    }

