var left,right;


// Delete current instances
left=instance_nearest(x,y,obj_NavLeft);
if(left != noone) with(left) instance_destroy();

right=instance_nearest(x,y,obj_NavRight);
if(right != noone) with(right) instance_destroy();

// Add instances as necessary
if(global.choose_screen<global.choose_screens)
    {
        instance_create(380,908,obj_NavRight);
    } 
    
if(global.choose_screen>0)
    {
        instance_create(260,908,obj_NavLeft);
    }         