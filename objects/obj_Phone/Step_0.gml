if(running)
{
    a=image_angle; 
    image_angle += dirn;
    if(image_angle > 30 || image_angle < -30) dirn = -dirn;
}
    
if(dirn<1 && image_angle < 0 && a > 0)
{
    running = 0;
    alarm[0] = 45;
}

