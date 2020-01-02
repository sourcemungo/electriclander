if(retreating == 1)
{ 
    scale = scale*1.15;
    if(scale > 10)
        {
            instance_destroy();
        }
}

draw_sprite_ext(spr_ChallengeLabel, global.challenge_id,xpos,ypos,scale*fixer,scale*fixer,0,c_white,1/scale);


