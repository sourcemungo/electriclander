

//Check to see whether we need to put a Hint Red up
if(joined_red == 0 && global.game_on == 1)
    {
        if(instance_number(obj_HintRed) == 0)
            {
                instance_create(other.x,other.y,obj_HintRed);
            }
    }

    
// Initiate the world-end sequence if we have the red joined
if (joined_red == 1 && global.g_is_alive==1 && global.game_on == 1 )
{
    

//Delete joints between the lander and red lander
   if(rev2_exists == 1)
    {
        physics_joint_delete(rev2); 
    }
    
// Find the lander red and destroy
    var inst_lander_red;
    inst_lander_red = instance_nearest(x,y,obj_LanderRed);
    if(inst_lander_red != noone)
        {
            with(inst_lander_red) { instance_destroy(); }
        }
        
// Start the room end sequence    
    global.joined_red = 0;
    spiral_inst = instance_nearest(x,y,obj_Spiral);
    spiral_inst.is_in_room_end = 1;
}