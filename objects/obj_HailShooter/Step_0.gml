phy_rotation = radtodeg(arctan2(lander.y - y,lander.x - x))+90;
var hail;
cycle += 1;
if(cycle > global.hail_shooter_interval)
    {
        hail = instance_create(phy_position_x,phy_position_y,obj_Rain);
        hail.phy_bullet = true;
        hail.phy_speed_x = cos(degtorad(phy_rotation-90)) * global.hail_shooter_speed;
        hail.phy_speed_y = sin(degtorad(phy_rotation-90)) * global.hail_shooter_speed;  
        cycle = 0;  
    }

if(instance_number(obj_Rain) > 10)
    {
        hail = instance_furthest(x,y,obj_Rain);
        with(hail)instance_destroy(); 
    }

