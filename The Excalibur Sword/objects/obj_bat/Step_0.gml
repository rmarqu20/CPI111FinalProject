var px, py;
px = instance_nearest(x,y,obj_knight).x;
py = instance_nearest(x,y,obj_knight).y;

//manage which direction bat animation is flying
switch(hspeed)
{
	case -1: //left
		sprite_index = spr_bat_left;
		if (attack == 1)
		{
			attack_cooldown += 2;
		}
		break;
		
	case 1: //right
		sprite_index = spr_bat_right;
		if (attack == 1)
		{
			attack_cooldown += 2;
		}
		break;
}

//player enters 145 pixel radius of bat
if(point_distance(x, y, px, py) < 145 && attack == 0)
{
	locked_on = 1;
	if(x - px < 0)
	{
		sprite_index = spr_bat_right;
	}
	else if(x - px > 0)
	{
		sprite_index = spr_bat_left;
	}
	vspeed = 1;
	direction = point_direction(x, y, obj_knight.x, obj_knight.y);
}

if(attack_cooldown > 40)
{
	attack = 0
	attack_cooldown = 0;
}