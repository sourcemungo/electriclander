
if(joined_red == 0)
    {
    var red_inst,base_inst,fix, inst_halo, redx,redy;
         
    red_inst = instance_nearest(x,y,obj_LanderRed);
    redx = red_inst.phy_position_x;
    redy = red_inst.phy_position_y;
    
   //physics_joint_delete(red_inst.joint);
    
    inst_halo = instance_nearest(x,y,obj_Halo);   
    with(inst_halo){ instance_destroy();}
   
    base_inst = instance_nearest(x,y,obj_Base);
    with(base_inst) { instance_destroy(); }
   

    
    // Move red-lander to position                              
    red_inst.phy_rotation = phy_rotation;
    red_inst.phy_position_x = x+lengthdir_x(25,phy_rotation-270) // joint_inst.phy_position_x;
    red_inst.phy_position_y = y+lengthdir_y(25,phy_rotation-90) //joint_inst.phy_position_y + 50;    
         
    // Link joins red lander    
    var enable_limit;
    enable_limit = (global.red_freedom_room < 175);                               
    rev2 = physics_joint_revolute_create(self, red_inst //joint_inst,red_inst
                                    ,x+lengthdir_x(5,red_inst.phy_rotation-270) //joint_inst.x+lengthdir_x(24,joint_inst.phy_rotation-270)
                                    ,y+lengthdir_y(5,red_inst.phy_rotation-90) //joint_inst.y+lengthdir_y(24,joint_inst.phy_rotation-90)
                                    ,-global.red_freedom,global.red_freedom_room
                                    ,enable_limit,0,0,0,0);  
    rev2_exists=1;  
    
    sound_bite(snd_JoinRedClick,1);
    
    red_inst.image_index = 1;                                
                                 
    joined_red = 1;
    }