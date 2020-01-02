if(global.game_on == 1 && global.paused == 0)
{ 
var flare;
flare = instance_create(argument0,argument1,obj_Flare);
flare.phy_speed_x = -global.flare_speed;
flare.phy_speed_y = -1;
}