
var halo;
halo = instance_create(x,y,obj_Halo);
halo.image_speed = 0.3;
joint = physics_joint_revolute_create(obj_LanderRed, halo,x,y,0,0,false,0,0,0,0);