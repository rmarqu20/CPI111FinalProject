//manage which direction skeleton animation is walking
switch(hspeed)
{
	case -1.5: //left
		sprite_index = spr_orc_walk_left
		if (attack == 1)
		{
			sprite_index = spr_orc_attack_left;
			attack_cooldown += 2;
		}
		break;
		
	case 1.5: //right
		sprite_index = spr_orc_walk_right;
		if (attack == 1)
		{
			sprite_index = spr_orc_attack_right;
			attack_cooldown += 2;
		}
		break;
}

if(attack_cooldown > 40)
{
	attack = 0
	attack_cooldown = 0;
}