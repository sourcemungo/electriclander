var i, xpos, ypos;

for(i=0; i< global.challenge_count; i+=1)
{
    
    xpos = 176 + 296*(i mod 2);
    ypos = 180 + 120*(floor(i/2));
    button[i] = instance_create(xpos,ypos,obj_ChallengeButton);
    
    with(button[i])
        {
            challenge = i;
        }
}