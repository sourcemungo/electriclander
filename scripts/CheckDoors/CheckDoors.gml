if(image_speed ==1)
{

var myX,myY;
var still_move;

still_move = false;
myX = phy_position_x;
myY = phy_position_y;

//Check if there are doors still moving
with(obj_SeekerDoor)
    {
        if(abs(x-myX) < 100 && abs(y-myY) < 40)
        {
            if((phy_position_x >= myX && phy_speed_x > 0)
            || (phy_position_x <= myX && phy_speed_x < 0))
            {
                phy_speed_x = 0;
            }
            else
            {
                still_move = true;
            }
        }
    }
//if not, stop the rotation
if(!still_move)
    {
        image_speed = 0;
    }
}