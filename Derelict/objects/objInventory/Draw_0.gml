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
	x1 = camera_get_view_x(view_camera[0])+centreX-(inventoryXSize/2 - (offset/2)) + 90;
	//x1 = (view_xport[0]/2)-220;
	x2 = (x1 + inventoryXSize) + offset;
	y1 = camera_get_view_y(view_camera[0])+centreY-(inventoryYSize/2 - (offset/2));
	//y1 = (view_yport[0]/2)-105;
	y2 = (y1 + inventoryYSize) + offset;
	
	draw_set_color(c_gray);					//Inventory square colour
	draw_set_alpha(0.5);					//Transparency
	draw_rectangle(x1, y1, x2, y2, false);	//Drawing the rectangle
	
	draw_set_alpha(1);
	for (i = 0; i < invCol; i++)
	{
		for (j = 0; j < invRow; j++)
		{
			draw_sprite(sprInventoryBorder, 0, x1+24+(offset*i) + (i*40), y1+24+(offset*j)+ (j*40));
			
			/*if (global.inventory[i, j] != -1)	//If an inventory slot is not empty, draw that sprite
			{
				draw_sprite(sprMods, global.inventory[i, j], x1+24+(offset*i) + (i*40), y1+24+(offset*j)+ (j*40));
				
				
			}*/
			button[i, j].x = x1+24+(offset*i) + (i*40);
			button[i, j].y = y1+24+(offset*j)+ (j*40);
		}
	}
	
	
	// Drawing equip inventory
	var eqX1, eqX2, eqY1, eqY2;
	eqX1 = camera_get_view_x(view_camera[0])+centreX-(equipInvXSize/2 - (offset/2)) - 180;
	eqX2 = (x1 - equipInvXSize) - offset*equipInvCol;
	eqY1 = camera_get_view_y(view_camera[0])+centreY-(equipInvYSize/2 - (offset/2));
	eqY2 = (y1 + equipInvYSize) - offset*equipInvRow;
	
	draw_set_color(c_gray);
	draw_set_alpha(0.5);
	draw_rectangle(eqX1, eqY1, eqX2, eqY2, false);
	
	draw_set_alpha(1);
	for (k = 0; k < equipInvCol; k++)
	{
		for (l = 0; l < equipInvRow; l++)
		{
			draw_sprite(sprInventoryBorder, 0, eqX1+24+(offset*k) + (k*40), eqY1+24+(offset*l)+ (l*40));
			eqButton[k, l].x = eqX1+24+(offset*k) + (k*40);
			eqButton[k, l].y = eqY1+24+(offset*l)+ (l*40);
		}
	}
}