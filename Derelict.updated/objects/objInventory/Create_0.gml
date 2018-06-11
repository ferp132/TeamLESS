/// @description Initialise Variables
/*
	-Inventory Item/Mod indexes-	-sprMods is the index for each and every mod in the game-
	0 = Dash
	1 = Double dash
	2 = Energy Shield
	3 = Damage Reduction
	4 = Movespeed increase
	5 =  HP Up
	6 = Twin shots
	7 = Repeater shots
	8 = Pulse shots
	9 = Firerate upgrade
	10 = Damage up
	11 = Bullet speed up
*/
//Setting depth to abritrarily low value so inventory shows over all other objects
depth = -1000;

//Global variable 'showInv' sets inventory visible or not
globalvar showInv;
showInv = false;

globalvar invRow, invCol;	//How many item slots the inventory will have. (Row * Column)
invRow = 3;					//Y value for inventory Array
invCol = 6;					//X value for inventory Array

for (i = 0; i < invCol; i++)			//These for loops set all inventory slots to be empty
{										//When inventory is created
	for (j = 0; j < invRow; j++)
	{
		global.inventory[i, j] = -1;
		button[i, j] = instance_create_depth(0,0,-1001, objInventorySlot);
		button[i, j].slotX = i; button[i, j].slotY = j;
		
	}
}
globalvar cursorMod;
cursorMod = -1;
instance_create_depth(0,0,-1002, objCursorMod);

scrModPickup(6);
scrModPickup(7);
scrModPickup(8);
scrModPickup(2);


offset = 3;	//The offset (in pixels) for the inventory slots borders to be from eachother

//How big the rectangle for the inventory should be drawn.
//Updated to change size depending on the inventory size and offset.
//If you want to change it, change the variables invRow, invCol, and offset
inventoryXSize = (objInventory.sprite_width * invCol) + (offset * invCol);
inventoryYSize = (objInventory.sprite_height * invRow) + (offset * invRow);

// Equipped mods inventory
globalvar equipInvRow, equipInvCol;
equipInvRow = 3;
equipInvCol = 2;

for (k = 0; k < equipInvCol; k++)
{
	for (l = 0; l < equipInvRow; l++)
	{
		global.equipInventory[k, l] = -1;
		eqButton[k, l] = instance_create_depth(0,0,-1001, objEquipInventorySlot);
		eqButton[k, l].slotX = k; eqButton[k, l].slotY = l;
	}
}

equipInvXSize = (objInventory.sprite_width * equipInvCol) + (offset * equipInvCol);
equipInvYSize = (objInventory.sprite_height * equipInvRow) + (offset * equipInvRow);