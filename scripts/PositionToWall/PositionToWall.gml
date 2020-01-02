var block;
block = instance_nearest(x,y,obj_Block_Vert);

if(block.x< x)
{
    phy_rotation = 90;
    phy_position_x=block.phy_position_x + 120;
        
}
else 
{
    phy_rotation = -90;
    phy_position_x=block.phy_position_x-120;
}

bouncer = instance_create(phy_position_x,phy_position_y,obj_Bouncer);
instance_create((block.phy_position_x + bouncer.phy_position_x)/2, phy_position_y-30, obj_BouncerMover);