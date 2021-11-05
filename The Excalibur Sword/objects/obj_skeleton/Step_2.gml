/// @description Insert description here
// You can write your code in this editor

//manage which direction skeleton animation is walking
switch(hspeed)
{
	case -1:	//left
		sprite_index = spr_skeleton_walk_left
		break;
		
	case 1:		//right
		sprite_index = spr_skeleton_walk_right
		break;
}