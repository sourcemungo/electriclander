var xforce,yforce,angle;

    // Which image to use
        image_index=1+ 2*processing_damage;

    // USe Fuel
        global.g_fuel -= global.g_thrust_fuel/global.lander_count;  // make sure more landers dont use more fuel

    // Angle in radians - Clockwise from 0=UP
        angle=degtorad(phy_rotation);
        xforce=0; yforce=0;
     
        xforce = (sin(angle));
        yforce = -(cos(angle));
        physics_apply_force(x,y,global.thrust_room*xforce,global.thrust_room*yforce); 
    
    //Generate the thruster graphics
        var thrust_angle, maxx,maxy,minx,miny;
          
        thrust_angle = 270-phy_rotation;
        //Where are the thruster particles going to come from
        maxx = x + lengthdir_x(thruster_dist,thrust_angle) + thruster_size/2;
        maxy = y + lengthdir_y(thruster_dist,thrust_angle) + thruster_size/2;
        minx = x + lengthdir_x(thruster_dist,thrust_angle) - thruster_size/2;
        miny = y + lengthdir_y(thruster_dist,thrust_angle) - thruster_size/2;
        
        part_emitter_stream(ps,em_thruster,pt1,-1);   // create one every four steps
        part_type_direction(pt1,thrust_angle-5,thrust_angle+5,0,0);
        part_emitter_region(ps,em_thruster,minx,maxx,miny,maxy,ps_shape_diamond,ps_distr_gaussian);
                        
       
    // Thruster sounds
    if(!sound_isplaying(snd_LanderRoar)&&global.sound==1)
        {
        sound_volume(snd_LanderRoar,0);
        sound_loop(snd_LanderRoar);
        sound_fade(snd_LanderRoar,global.sound*0.7,100);
        }   