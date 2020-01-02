sound_volume(snd_LanderRoar,global.sound*0.9);
sound_volume(snd_Explosion,0.5*global.sound);
sound_volume(snd_Ting,global.sound);  
sound_volume(snd_Electric,global.sound*0.7);
sound_volume(snd_Electric_High,0.8*global.sound); 
sound_volume(snd_Scream,0.3*global.sound);
sound_volume(snd_EvilLaugh,0.8*global.sound);
sound_volume(snd_Shooter,0.4*global.sound);

sound_fade(snd_LanderRoar,global.sound*0.9,100);
sound_fade(snd_Explosion,0.5*global.sound,100);
sound_fade(snd_Ting,global.sound,100);  
sound_fade(snd_Electric,0,100);
sound_fade(snd_Electric_High,0.8*global.sound,100); 
sound_fade(snd_Scream,0.3*global.sound,100);
sound_fade(snd_EvilLaugh,0.8*global.sound,100);
sound_fade(snd_Shooter,0.4*global.sound,100);



SetSettings();        