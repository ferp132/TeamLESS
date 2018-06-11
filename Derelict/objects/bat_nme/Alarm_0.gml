if (active==true )		//if bats awake and timers off he shoots
{
with (instance_create_layer(x,y,"Instances", acid_obj))         //whatevers in with (object) will happen to the object  defined 
    {     
        speed = 5;         
		
        direction= 270 + other.image_angle;            
          //its direction is going to be the THIS objects(spacebats) image angle    
            
    }
	
	alarm[0]=60;		//resets the timer after shooting
	
}

alarm[0]=60;	//if he is not active, the timer resets automatically not doing anything.
