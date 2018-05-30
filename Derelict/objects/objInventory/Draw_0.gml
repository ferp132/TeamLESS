/// @description Draw inventory
if (showInv)
{
	//Draw a see through rectangle graying out the world
	/*draw_set_color(c_gray);
	draw_set_alpha(0.3);
	draw_rectangle(view_xport[0], view_yport[0], (view_xport[0] + view_wport[0]), (view_yport[0] + view_hport[0]), false);
	*/
	
	//Draw the inventory
	var x1, x2, y1, y2;	//Coordinates for the inventory square to be drawn
	x1 = camera_get_view_x(view_camera[0])+centreX-(inventoryXSize/2 - (offset/2));
	//x1 = (view_xport[0]/2)-220;
	x2 = (x1 + inventoryXSize) + offset;
	y1 = camera_get_view_y(view_camera[0])+centreY-(inventoryYSize/2 - (offset/2));
	//y1 = (view_yport[0]/2)-105;
	y2 = (y1 + inventoryYSize) + offset;
	
	draw_set_color(c_gray);				//Inventory square will be black
	draw_set_alpha(0.5);					//but somewhat transparent
	draw_rectangle(x1, y1, x2, y2, false);	//Drawing the rectangle
	
	draw_set_alpha(1);
	for (i = 0; i < invCol; i++)
	{
		for (j = 0; j < invRow; j++)
		{
			draw_sprite(sprInventoryBorder, 0, x1+24+(offset*i) + (i*40), y1+24+(offset*j)+ (j*40));
			
			if (global.inventory[i, j] != -1)	//If an inventory slot is not empty, draw that sprite
			{
				draw_sprite(sprMods, global.inventory[i, j], x1+24+(offset*i) + (i*40), y1+24+(offset*j)+ (j*40));
			}
		}
	}
}