slide_speed = 90;
if(initialising==1)
{
    y += slide_speed;
if(y >=480)
    {
        y=480;
        initialising = 0;
    }
}
    
if(deleting==1)
{
    y -= slide_speed;
    if(y <= -480)
    instance_destroy();

}

