//Set variables
global.button_left = 0;
global.button_right = 0;
global.button_thrust = 0;


// Control inverter 
var  tilt_inverter, thrust_inverter;
tilt_inverter = (1-2*global.invert_controls); // multiplier: 1=-1, 0=1

// Get the actions from user
if(os_type == os_browser || os_type==os_windows || os_type==os_macosx)
{
    if(keyboard_check(vk_left)) { global.button_left = 1; }
    if(keyboard_check(vk_right)) { global.button_right = 1; }
    global.tilt += (global.button_right-global.button_left)
                    * global.rotation_sensitivity_room
                    * tilt_inverter
                    * 0.1
                    / global.lander_count ;
    if(tilt > 1) tilt = -1;
    if(tilt < -1) tilt = 1;
}

if(keyboard_check(vk_up)) { global.button_thrust = 1; }

// Apply rotational forces
if((os_type == os_ios || os_type == os_android ) && global.user_started == 1) 
{ 
  var orientation_factor;
  global.tilt = global.tilt + (device_get_tilt_x()-global.tilt)*global.rotation_sensitivity_room;
            
  if(device_get_tilt_y() < 0) 
    orientation_factor = -180 
  else orientation_factor = 180;  
  
  phy_rotation =  -global.tilt*orientation_factor*tilt_inverter;
}
else 
{
    phy_rotation =  global.tilt*180;
}


// Thrust
// Kicks off the user action at the start of a room
// Turns the thruster on
if(global.challenge_id == 4)
    {
    ThrusterOn();
    global.user_started = 1;
    }
else
{
    if(global.button_thrust xor global.invert_controls)
    {        
        if(user_started == 0)
        {
            global.user_started = 1;
            global.room_start_time = get_timer();
            global.room_last_seen_time = global.room_start_time;
        }
         
        if(global.g_fuel > 0)   
            ThrusterOn();
        else                    
            ThrusterOff();
    }            
    else
        ThrusterOff();
      
}