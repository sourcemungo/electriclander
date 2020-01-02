
view_enabled = false;


//Main Screen

    // On screen
    __view_set( e__VW.WPort, 1, 2048 );
    __view_set( e__VW.HPort, 1, 1171 );
    __view_set( e__VW.XPort, 1, 0 );
    __view_set( e__VW.YPort, 1, 300 );
        
    // View in room
    __view_set( e__VW.WView, 1, 656*2048/1500 );// 656
    __view_set( e__VW.HView, 1, 512 );
    __view_set( e__VW.XView, 1, -(656*2048/1500-656)/2 );//0;
    __view_set( e__VW.YView, 1, 0 );
    
    __view_set( e__VW.Object, 1, noone );   
    __view_set( e__VW.Visible, 1, true );

//Scoreboard

    /***** ON SCREEN  ******/  
    //Size on screen
    __view_set( e__VW.WPort, 2, 384*1.5 );  
    __view_set( e__VW.HPort, 2, 300 );
    __view_set( e__VW.XPort, 2, (2048-384*1.3)/2 );
    __view_set( e__VW.YPort, 2, 0 );
    
    /***** IN ROOM *****/    
    __view_set( e__VW.WView, 2, 384 );
    __view_set( e__VW.HView, 2, 200 );
    __view_set( e__VW.XView, 2, 0 );
    __view_set( e__VW.YView, 2, 1600 );

    __view_set( e__VW.Object, 2, noone );  
    __view_set( e__VW.Visible, 2, true );
        
            
// CountDown

    //Position on screen
    __view_set( e__VW.WPort, 5, 1000 );
    __view_set( e__VW.HPort, 5, 800 );
    __view_set( e__VW.XPort, 5, (2048-1000)/2 );
    __view_set( e__VW.YPort, 5, 500 );  
       
    /***** IN ROOM ******/  
    __view_set( e__VW.WView, 5, 500 );
    __view_set( e__VW.HView, 5, 400 );
    __view_set( e__VW.XView, 5, 0 );
    __view_set( e__VW.YView, 5, 1000 );

    __view_set( e__VW.Object, 5, noone );     
    __view_set( e__VW.Visible, 5, false );
        

    
view_enabled = true;