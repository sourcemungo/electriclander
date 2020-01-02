global.room_count = 18;

var i;
for(i=0;i<room_count;i+=1)
{
    global.room_scores[i] = 0;
    if(_UNLOCK_ALL==1)
        global.unlocked[i] = 1; // set to 1 for testing - keep at 0 for distrib 0;
    else
        global.unlocked[i] = 0;    
}
global.unlocked[0] = 1;


global.room_names[0] = "Starter for Ten";
global.room_names[1] = "Starry Starry Night";
global.room_names[2] = "Up 'n' Over";
global.room_names[3] = "Mangled Maze";
global.room_names[4] = "Precision Pilot";
global.room_names[5] = "Seeker Swerve";
global.room_names[6] = "Need for Speed";
global.room_names[7] = "Double Trouble";
global.room_names[8] = "Perfect Storm";
global.room_names[9] = "Hidden Hazards";
global.room_names[10] = "Invinci-pill";
global.room_names[11] = "Control Chaos";
global.room_names[12] = "Target Twenty";
global.room_names[13] = "Tripple Tipple";
global.room_names[14] = "Terrible Trifle";
global.room_names[15] = "Hail the Lander";
global.room_names[16] = "Portal Party";
global.room_names[17] = "The Full Monty";


global.room_id[rm_Room0] = 0;
global.room_id[rm_Room1] = 1;
global.room_id[rm_Room2] = 2;
global.room_id[rm_Room3] = 3;
global.room_id[rm_Room4] = 4;
global.room_id[rm_Room5] = 5;
global.room_id[rm_Room6] = 6;
global.room_id[rm_Room7] = 7;
global.room_id[rm_Room8] = 8;
global.room_id[rm_Room9] = 9;
global.room_id[rm_Room10] = 10;
global.room_id[rm_Room11] = 11;
global.room_id[rm_Room12] = 12;
global.room_id[rm_Room13] = 13;
global.room_id[rm_Room14] = 14;
global.room_id[rm_Room15] = 15;
global.room_id[rm_Room16] = 16;
global.room_id[rm_Room17] = 17;


global.indexed_room[0] = rm_Room0;
global.indexed_room[1] = rm_Room1;
global.indexed_room[2] = rm_Room2;
global.indexed_room[3] = rm_Room3;
global.indexed_room[4] = rm_Room4;
global.indexed_room[5] = rm_Room5;
global.indexed_room[6] = rm_Room6;
global.indexed_room[7] = rm_Room7;
global.indexed_room[8] = rm_Room8;
global.indexed_room[9] = rm_Room9;
global.indexed_room[10] = rm_Room10;
global.indexed_room[11] = rm_Room11;
global.indexed_room[12] = rm_Room12;
global.indexed_room[13] = rm_Room13;
global.indexed_room[14] = rm_Room14;
global.indexed_room[15] = rm_Room15;
global.indexed_room[16] = rm_Room16;
global.indexed_room[17] = rm_Room17;



global.room_sprite[0]=spr_Room0;
global.room_sprite[1]=spr_Room1;
global.room_sprite[2]=spr_Room2;
global.room_sprite[3]=spr_Room3;
global.room_sprite[4]=spr_Room4;
global.room_sprite[5]=spr_Room5;
global.room_sprite[6]=spr_Room6;
global.room_sprite[7]=spr_Room7;
global.room_sprite[8]=spr_Room8;
global.room_sprite[9]=spr_Room9;
global.room_sprite[10]=spr_Room10;
global.room_sprite[11]=spr_Room11;
global.room_sprite[12]=spr_Room12;
global.room_sprite[13]=spr_Room13;
global.room_sprite[14]=spr_Room14;
global.room_sprite[15]=spr_Room15;
global.room_sprite[16]=spr_Room16;
global.room_sprite[17]=spr_Room17;


global.allowed_time[0] = 60;
global.allowed_time[1] = 90;
global.allowed_time[2] = 120;
global.allowed_time[3] = 120;
global.allowed_time[4] = 140;
global.allowed_time[5] = 140;
global.allowed_time[6] = 60;
global.allowed_time[7] = 100;
global.allowed_time[8] = 60;
global.allowed_time[9] = 120;
global.allowed_time[10] = 45;
global.allowed_time[11] = 100;
global.allowed_time[12] = 120;
global.allowed_time[13] = 120;
global.allowed_time[14] = 100;
global.allowed_time[15] = 100;
global.allowed_time[16] = 140;
global.allowed_time[17] = 140;


//Star scores

        global.star_score_1[0]= 600;
        global.star_score_2[0]= 800;
        global.star_score_3[0]= 1000;

        global.star_score_1[1]= 1000;
        global.star_score_2[1]= 1400;
        global.star_score_3[1]= 2000;

        global.star_score_1[2]= 600;
        global.star_score_2[2]= 900;
        global.star_score_3[2]= 1200;

        global.star_score_1[3]= 500;
        global.star_score_2[3]= 800;
        global.star_score_3[3]= 1200;

        global.star_score_1[4]= 800;
        global.star_score_2[4]= 1300;
        global.star_score_3[4]= 2000;

        global.star_score_1[5]= 800;
        global.star_score_2[5]= 1300;
        global.star_score_3[5]= 2000;
        
        global.star_score_1[6]= 800;
        global.star_score_2[6]= 1300;
        global.star_score_3[6]= 2000;

        global.star_score_1[7]= 800;
        global.star_score_2[7]= 1300;
        global.star_score_3[7]= 2000;
        
        global.star_score_1[8]= 800;
        global.star_score_2[8]= 1300;
        global.star_score_3[8]= 2000;
        
        global.star_score_1[9]= 800;
        global.star_score_2[9]= 1300;
        global.star_score_3[9]= 2000;
        
        global.star_score_1[10]= 800;
        global.star_score_2[10]= 1300;
        global.star_score_3[10]= 2000;
        
        global.star_score_1[11]= 800;
        global.star_score_2[11]= 1300;
        global.star_score_3[11]= 2000;
        
        global.star_score_1[12]= 600;
        global.star_score_2[12]= 900;
        global.star_score_3[12]= 1200;
        
        global.star_score_1[13]= 1000;
        global.star_score_2[13]= 1700;
        global.star_score_3[13]= 2500;
        
        global.star_score_1[14]= 800;
        global.star_score_2[14]= 1300;
        global.star_score_3[14]= 2000;

        global.star_score_1[15]= 600;
        global.star_score_2[15]= 1000;
        global.star_score_3[15]= 1500;  
        
        global.star_score_1[16]= 600;
        global.star_score_2[16]= 1000;
        global.star_score_3[16]= 1500;

        global.star_score_1[17]= 600;
        global.star_score_2[17]= 1000;
        global.star_score_3[17]= 1500;       
          