if(instance_number(obj_AboutDetails) == 0)
    {
        sound_bite(snd_SwipInOut,1);
        instance_create(320,-480, obj_AboutDetails);
    }