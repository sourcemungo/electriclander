var seeker_dirn;
seeker_dirn = 1;
if(global.lander_can_damage==0) seeker_dirn = -1;

if(global.user_started == 1)
    {
        physics_apply_force(x,y,(lander.x-x)*0.010*seeker_dirn, -.001 + (lander.y-y)*0.05*seeker_dirn);
    }