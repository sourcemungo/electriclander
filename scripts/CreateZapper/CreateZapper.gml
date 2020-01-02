
//Only create a zapper if the game is active

if(global.game_on == 1 && global.paused == 0)
{

//Get passive instance and distance
instPassive = instance_nearest(x,y,obj_Emitter_Passive);
var length,posx,posy;
length = sqrt(power(instPassive.x - x,2) + power(instPassive.y-y,2));
posx = x + (instPassive.x - x)/2 ;
posy = y + (instPassive.y - y)/2 ;


//Create fixture for zapper
fix = physics_fixture_create();
physics_fixture_set_box_shape(fix,floor(length/2),1);
physics_fixture_set_sensor(fix,true);
physics_fixture_set_collision_group(fix,0);
physics_fixture_set_restitution(fix,0.6);

//Create zapper and bind to fixture
instZapper = instance_create(posx,posy,obj_Zapper);
instZapper.posx1 = x;
instZapper.posx2 = instPassive.x;
instZapper.posy1 = y;
instZapper.posy2 = instPassive.y;
physics_fixture_bind(fix,instZapper);
instZapper.phy_rotation = radtodeg(arctan2(instPassive.y - y,instPassive.x - x));

//Delete fixture to prevent memory leak
physics_fixture_delete(fix);

}

alarm[5] = irandom_range(global.between_zappers,global.between_zappers+30);

