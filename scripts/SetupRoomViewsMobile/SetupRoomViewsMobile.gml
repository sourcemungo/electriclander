view_enabled = true;

//Small screen

    __view_set( e__VW.Visible, 0, true );
    /****** ON SCREEN  ******/
    // Size
    __view_set( e__VW.WPort, 0, 256 );
    __view_set( e__VW.HPort, 0, 200 );
    //Position
    __view_set( e__VW.XPort, 0, 0 );
    __view_set( e__VW.YPort, 0, 0 ); //760;    
        
    // View in room
    //Size    
    __view_set( e__VW.WView, 0, 656 );
    __view_set( e__VW.HView, 0, 512 );
    
    //Position in room that view has a window on
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, 0 ); 
    __view_set( e__VW.Object, 0, noone );
    
//Scoreboard

    /***** ON SCREEN  ******/  
    //Size on screen
    __view_set( e__VW.WPort, 1, 384 );  
    __view_set( e__VW.HPort, 1, 200 );
    //Position on screen
    __view_set( e__VW.XPort, 1, 257 );
    __view_set( e__VW.YPort, 1, 0 );//760;
    
    /***** IN ROOM *****/    
    //Size in room
    __view_set( e__VW.WView, 1, 384 );
    __view_set( e__VW.HView, 1, 200 );

        //Position in room that view has a window on
    __view_set( e__VW.XView, 1, 0 );
    __view_set( e__VW.YView, 1, 1600 );
    __view_set( e__VW.Object, 1, noone );
    
    __view_set( e__VW.Visible, 1, true );


//Main Screen


    // Size on screen
    __view_set( e__VW.WPort, 2, 640 );
    __view_set( e__VW.HPort, 2, 640 );

    //Position on screen
    __view_set( e__VW.XPort, 2, 0 );
    __view_set( e__VW.YPort, 2, 200 );
        
    // View in room
    
    //Size
    __view_set( e__VW.HView, 2, 480 );
    __view_set( e__VW.WView, 2, 480 );
    // Follow the lander
    __view_set( e__VW.Object, 2, obj_Lander )
    __view_set( e__VW.HBorder, 2, 256 );
    __view_set( e__VW.VBorder, 2, 256 );

    __view_set( e__VW.Visible, 2, true );
    

 //Buttons
    
    __view_set( e__VW.Visible, 3, true );
    //Position on screen that view has a window on
    __view_set( e__VW.XPort, 3, 0 );
    __view_set( e__VW.YPort, 3, 840 );//0;     
    // Size on screen
    __view_set( e__VW.WPort, 3, 640 );
    __view_set( e__VW.HPort, 3, 120 );

    /***** IN ROOM ******/
    //Size    
    __view_set( e__VW.WView, 3, 640 );
    __view_set( e__VW.HView, 3, 120 );

    //Position in room that view has a window on
    __view_set( e__VW.XView, 3, 0 );
    __view_set( e__VW.YView, 3, 1400 );
    __view_set( e__VW.Object, 3, noone );
    
// CountDown

    __view_set( e__VW.Visible, 5, false );
    //Position on screen
    __view_set( e__VW.XPort, 5, 70 );
    __view_set( e__VW.YPort, 5, 300 );     
    // Size on screen
    __view_set( e__VW.WPort, 5, 500 );
    __view_set( e__VW.HPort, 5, 400 );

    /***** IN ROOM ******/
    //Size    
    __view_set( e__VW.WView, 5, 500 );
    __view_set( e__VW.HView, 5, 400 );

    //Position in room that view has a window on
    __view_set( e__VW.XView, 5, 0 );
    __view_set( e__VW.YView, 5, 1000 );
    __view_set( e__VW.Object, 5, noone );