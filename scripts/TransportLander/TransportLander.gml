var px,py;

px = portal.x - 20*abs(portal.x-x)/(portal.x-x);
py = portal.y;

with(obj_Lander)
{
    if(abs(phy_speed_x) > 3)
        {
            phy_position_x = px;
            phy_position_y = py;
            if(joined_red==1)
            {
                with(obj_LanderRed)
                {
                    phy_position_x = px;
                    phy_position_y = py;
                }
            }
        }
}