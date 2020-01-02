
    if(swiping==0)
    {
        //disable view
    }

    if device_mouse_check_button_pressed(0,mb_left)
    {    
        swipex1 = device_mouse_x(0)
        swiping = 0;
    }
    
    //else you've touched before
    else if device_mouse_check_button(0,mb_left)
    {
        //If the new touchpoint is > 6 pixels away, then you're swiping
         ;
        
        if (swiping == 0 && abs(device_mouse_x(0)-swipex1) > 6)
        {
            swipex1 = device_mouse_x(0);
            swiping = 1;    
            
            //Enable view
        
        }
        
        swipex2 = device_mouse_x(0);
        swipe_dist = swipex2-swipex1;
          
    }
    else
    {
        if(abs(swipe_dist) > 0)
        { 
            swipe_dist = floor(swipe_dist / 2);
        }
        
        if(swipe_dist == 0)
        {
            swiping = 0;   
        }
        
    }


