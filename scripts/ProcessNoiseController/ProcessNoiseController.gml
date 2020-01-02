cycle += 1;
var i;
var noise_inst;

if(cycle >= 5)
{
    with(obj_Noise) instance_destroy();

    for(i=0;i<12; i+=1)
    {
        if(gap_pos < i  || gap_pos >= i+8 )
            {
                noise_inst = instance_create(x+16*i,y,obj_Noise);
                noise_inst.image_index = irandom_range(0,7);
            }
    }
    gap_pos += 1;    
    if(gap_pos>18)
        {
            gap_pos= 0;
        }
    cycle = 0;    
}