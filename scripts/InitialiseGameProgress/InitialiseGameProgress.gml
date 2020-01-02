var i;


for(i=0;i<global.progress_items; i+= 1)
{
    global.game_progress[i,0] =0;
    global.game_progress[i,1] = date_current_datetime();
}

progress_gc_name[0] = "Mission_6_Complete";
progress_gc_name[1] = "Mission_12_Complete";
progress_gc_name[2] = "Mission_18_Complete";
progress_gc_name[3] = "Mission_Medley_Standard_Complete";
progress_gc_name[4] = "Mission_Medley_Twinkle_2_Complete";
progress_gc_name[5] = "Mission_Medley_Max_Config_Complete";
progress_gc_name[6] = "Mission_Medley_Min_Config_Complete";
progress_gc_name[7] = "Mission_Medley_Always_On_Complete";
progress_gc_name[8] = "Mission_Medley_Gravity_Plus_Plus_Complete";

