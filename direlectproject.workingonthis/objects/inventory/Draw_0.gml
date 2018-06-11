if (showinv)
{
		var x1, x2,y1,y2;
		x1= camera_get_view_x(view_camera[0]);	//getting the x coordinate of the camera view
		x2=x1;						
		y1=camera_get_view_y(view_camera[0]);	//getting the y coordinate of the cam view
		y2=y1 ;	
		
		draw_set_color(c_white);
		draw_set_alpha(0.8);
		draw_rectangle(x1 +380,y1 ,x2 + 650 ,y2+100 ,0);
		//1st arg= pushing the 1st x to right, 2nd arg = pushing 1st y lower 
		
		draw_set_alpha(1);
		
		for(i=0; i<maxgunitems; i++)	//FOR GUN ADDON
		{
			draw_sprite(inveborder,0, x1+380+(i*40), y2 +30)			// where in the rect you want each sprite to appear
			if(global.guninventory[i] !=-1)
			{
				draw_sprite(spr_mods, global.guninventory[i], x1+380+(i*40), y2 )
									//subimage is literally inventory which will be a number
									
			}
		}
		
		for(i=0; i<maxarmouritems; i++)		//FOR ARMOUR ADDON
		{
			draw_sprite(inveborder,0, x1+380+(i*40), y2 +70)			//where in the rect you want each sprite to appear
			if(global.armourinventory[i] !=-1)
			{
				draw_sprite(spr_mods, global.armourinventory[i], x1+380+(i*40), y2 +70)
						//will have to put in a separate sprite filled with subimages for guns
						//subimage is literally inventory which will be a number
									
			}
		}
		
}
