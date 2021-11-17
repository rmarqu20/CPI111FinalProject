//manage which direction skeleton animation is walking
switch(hspeed)
{
	case -1: //left
		sprite_index = spr_skeleton_walk_left
		if (attack == 1)
		{
			sprite_index = spr_skeleton_attack_left;
			attack_cooldown += 2;
		}
		break;
		
	case 1: //right
		sprite_index = spr_skeleton_walk_right
		if (attack == 1)
		{
			sprite_index = spr_skeleton_attack_right;
			attack_cooldown += 2;
		}
		break;
}

if(attack_cooldown > 40)
{
	attack = 0
	attack_cooldown = 0;
}