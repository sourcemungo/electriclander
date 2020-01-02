
var inst;

        
if(global.game_on==1 && global.paused == 0 && global.user_started==1)
    {   
        inst = instance_nearest(x,y,obj_Lander);
        physics_apply_force(x,y,(inst.x-x)*0.01, -.002 + (inst.y-y)*0.01);
    }