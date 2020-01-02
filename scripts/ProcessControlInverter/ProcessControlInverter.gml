var i;
var inverted;
global.invert_controls=0;
for(i=0; i< regions; i+= 1)
{
        if(obj_Lander.x >= region_x1[i] && obj_Lander.y >= region_y1[i]
            && obj_Lander.x <= region_x2[i] && obj_Lander.y <= region_y2[i])
        {
            global.invert_controls=1;
        }   
}
