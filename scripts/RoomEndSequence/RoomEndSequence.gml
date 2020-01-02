if(is_in_room_end > 0)
{
var rex,redy, lx,ly;

// Stop the rest of the game functions
global.game_on = 0;

// Find the lander and start twisting it, adding a little upward force

with(obj_Lander) 
    { 
        image_speed = 1;
        phy_angular_velocity = 0;
        phy_rotation = 0;
        phy_speed_x = 0;
        phy_speed_y = 0;
        ThrusterOff();
    }

// Move to centre of spiral
obj_Lander.x = x ;
obj_Lander.y = y;
obj_Lander.phy_position_x = phy_position_x;
obj_Lander.phy_position_y = phy_position_y;


// Set the alarm for the Spiral to go to the next room (Alarm 6 )
if(is_in_room_end == 1)
    {
        sound_bite(snd_CountDown,0.5);
        alarm[6] = 5;
        is_in_room_end = 2;
    } 
}