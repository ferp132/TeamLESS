

if (place_meeting(x, y, objCollision))
{
    instance_destroy(self);
}


if(instance_exists(WalkerNme))
{
	if(place_meeting(x,y,WalkerNme)){
if(WalkerNme.sprite_index==WalkerAttack )
{
	
		WalkerNme.hp=WalkerNme.hp-0;
		WalkerNme.flash=1
		image_index=1
		
	
}

if(WalkerNme.sprite_index==WalkerWalk ){
	WalkerNme.hp=WalkerNme.hp-0;
		WalkerNme.flash=1

}
}}


