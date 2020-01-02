var umbrella;
umbrella = instance_nearest(x,y,obj_Umbrella);
with(umbrella)
{
var my_x;        
my_x = phy_position_x;
twinkles_under_umbrella = 0;
with(obj_Twinkle)
    { 
        if(phy_position_x >= my_x - 77 && phy_position_x <= my_x + 77)
            {
                umbrella.twinkles_under_umbrella += 1;
            }
    }
} 