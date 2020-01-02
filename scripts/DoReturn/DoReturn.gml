// Finalise if room needs finalising
if(room == rm_Choose)
{
    inst = instance_nearest(x,y,obj_Choose);
    with(inst)
        {
            FinaliseChoose();
        }
}

room_goto(global.room_to_return);