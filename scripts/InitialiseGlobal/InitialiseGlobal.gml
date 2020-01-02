/*  ALARMS USED
Alarm 0 : Lander: Process Damage
Alarm 0 : Zapper Lifetime
Alarm 0 : Obj Startup
alarm 0 : Contdown before move to next room
Alarm 3 : Lander: Process Lives
Alarm 5 : Emitter: Time between zaps
Alarm 6 : Spiral : Room End Sequence
Alarm 7 : Shooter: Shoot Right Timer
Alarm 8 : Shooter: Shoot Right Timer
Alarm 9 : Block Parent glow from lander
*/

globalvar g_block_damage, zapper_damage
        ,g_starting_health, g_starting_fuel
        ,g_fuel, g_thrust_fuel
        ,lander_count
        
        , button_left, button_right, button_thrust
        , between_zappers, zapper_length, flare_damage
        , flare_speed, shooter_time
        
        , rotation_sensitivity_init, rotation_sensitivity , rotation_sensitivity_min, rotation_sensitivity_max,rotation_sensitivity_room
        , thrust_init, thrust, thrust_min, thrust_max, thrust_room
        , red_freedom_init, red_freedom, red_freedom_min, red_freedom_max, red_freedom_room
        , lander_damping_init, lander_damping, lander_damping_min, lander_damping_max, lander_damping_room
        
        ,g_is_alive, g_is_dying , lander_can_damage
        ,game_on,user_started,paused, current_room, paused_room, room_last_played
        
        ,tilt, room_gravity
        ,speaker, sound, music, refresh, twinkle_score, twinkles_in_room
        ,room_start_time, room_running_time, room_last_seen_time, allowed_time
        ,room_time_allowed, time_remaining
        ,star_score_1, star_score_2, star_score_3
        
        ,gameplay
        ,room_to_return, room_sprite, room_names
        ,room_score,room_scores, room_stars,max_room_scores, max_room_stars, rooms_this_game, max_game_score
        ,room_id, room_count, indexed_room
        ,is_room_high_score,is_game_high_score
        ,all_time_stars, twinkle_twenty, unlocked
        
        ,games_started, rating_left
        
        ,choose_screen, choose_screens
        
        ,raindrop_count, invert_controls
        ,hail_shooter_interval, hail_shooter_speed
        
        ,umbrella_in_room
        
        ,ScoreFont
        
        ,challenge_id , challenge_text, challenge_count
        
        ,game_progress, progress_items, progress_gc_name
        ,game_leaderboard, leaderboard_items, leaderboard_gc_name
        
        ,gamecenter_enabled, facebook_enabled
        ,game_format
        ,adBannerAdded
        ,game_hints, game_hint_index
        ,y_correction;
 
// Set random seed 
randomize();

// Ad banner not yet added    
global.adBannerAdded=0;

// User Settings 
global.rotation_sensitivity_init = 0.2;
global.rotation_sensitivity = 0.2;
global.rotation_sensitivity_min = 0.005
global.rotation_sensitivity_max = 0.5

global.thrust_init=20;
global.thrust=20;
global.thrust_min = 8;
global.thrust_max = 30;

global.lander_damping_init = 1;
global.lander_damping = 1;
global.lander_damping_min = 0.3;
global.lander_damping_max = 4;

global.red_freedom_init = 70;
global.red_freedom = 70;
global.red_freedom_min = 0;
global.red_freedom_max = 180;


global.y_correction=0;
if(os_device == device_ios_iphone5)global.y_correction=1136-960;

// Global Settings
global.flare_speed= 20;
global.shooter_time = 100;
global.hail_shooter_interval = 30;
global.hail_shooter_speed = 14;
global.flare_damage = 10;
global.between_zappers = 120;
global.zapper_length = 40;
global.zapper_damage = 30;  
global.twinkle_score = 20;
global.g_starting_health = 100;
global.g_starting_fuel = 100;
global.g_block_damage = 0.5;
global.g_thrust_fuel = 0.06;
global.raindrop_count = 60;

// Progress
global.all_time_stars = 0;
global.games_played = 0;
global.progress_items = 9;
global.leaderboard_items = 14;


// Room-instance based variables
global.umbrella_in_room = 0;                 
global.lander_count = 1;
global.choose_screen = 0;               // Which level of choose screen (0 to start on initially)
                                        // Screen for choosing screen to go to.
global.invert_controls = 0;             // Thrust and rotation
global.gameplay = 0;                    // 1= single mission, 2 = All Mission Challenge
global.rating_left = "";
global.room_to_return = rm_Startup;
global.room_running_time = 0.0;         // How long the loom has been running
global.room_time_allowed = 0;           // How long allowed in this room
global.time_remaining = 0;
global.room_score = 0;
global.paused = false;                  
global.g_is_alive = 1;
global.g_is_dying = 0;
global.g_is_dead  = 0;
global.room_cleared = 0;
global.joined_red = 0;
global.button_left = 0;
global.button_right = 0;
global.button_thrust = 0;
global.game_on = 0;
global.tilt = 0;
global.user_started = 0;
global.lander_can_damage = 1;

lives = 3;
score = 0;
health = global.g_starting_health;
global.g_fuel = global.g_starting_fuel;

globalvar score_surface;
global.score_surface = surface_create(384,200);

InitialiseRooms();
InitialiseChallenges();
InitialiseGameProgress();
InitialiseGameLeaderboard();
InitialiseParticles();
InitialiseHints();
    
sound_stop_all();
GetSettings();
GetUserSettings();
SetSoundVolume();
SetMusicVolume();

sound_volume(snd_LanderBacking1,0);
sound_loop(snd_LanderBacking1);
sound_fade(snd_LanderBacking1,global.music*0.4,10);


if(global.gamecenter_enabled) achievement_login();