//Create the variables
posx1=0;
posx2=0;
posy1=0;
posy2=0;

//Alarm to shut it down - random
alarm[0] = irandom_range(global.zapper_length,global.zapper_length+20);;

//play the sound
if(!sound_isplaying(snd_Electric_High))
    {
        sound_volume(snd_Electric_High,0);
        sound_loop(snd_Electric_High);
        sound_fade(snd_Electric_High,0.4*global.sound,50);
    }