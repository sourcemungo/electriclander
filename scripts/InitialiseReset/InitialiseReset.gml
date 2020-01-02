
global.paused = 1;
global.paused_room = room;
__view_set( e__VW.Visible, 5, true );
physics_world_update_speed(0);

if(instance_number(obj_Reset) == 0)
{
    instance_create(0,1000,obj_Reset);
}
