globalvar showinv;		//display the inventory
showinv = true;
globalvar maxgunitems, maxarmouritems;	//total item slots
maxgunitems = 6;		//MODIFY MUST KNOW HOW MANY MAX!!
maxarmouritems= 6;		//MODIFY

global.gunItem = 0;
global.armourItem = 0;

for(i=0; i<maxgunitems; i++)
{
	global.guninventory[i]=-1;			//=-1 if nothings in the borders sprtes
	
}
for(i=0; i<maxarmouritems; i++)
{
	global.armourinventory[i]=-1;			//=-1 if nothings in the borders sprtes
	
}

//global.inventory[i] is going to be the subimage and the argument passed into the script functions
//for gunpickup and armourpickup functions

