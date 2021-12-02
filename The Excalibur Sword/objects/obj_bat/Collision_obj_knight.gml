var test = 10 * obj_knight.spd;
var predictRightX = obj_knight.x + test;
var predictLeftX = obj_knight.x - test;

health-=2;

if(sprite_index == spr_bat_right && (!place_meeting(predictRightX, obj_knight.x, obj_collision_big) || !place_meeting(predictRightX, obj_knight.x, obj_collision_sm)))
{
	obj_knight.xSpeed = 10 * obj_knight.spd;
	obj_knight.x += obj_knight.xSpeed;
	attack_cooldown = 0;
}
else if(sprite_index == spr_bat_left && (!place_meeting(predictLeftX, obj_knight.x, obj_collision_big) || !place_meeting(predictLeftX, obj_knight.x, obj_collision_sm)))
{
	obj_knight.xSpeed = 10 * obj_knight.spd;
	obj_knight.x -= obj_knight.xSpeed;
	attack_cooldown = 0;
}
if(obj_knight.sprite_index == spr_knight_attack)
{
	instance_destroy()
	if(health < 95)
	{
		health+=5;
	}
}

// Flee code
if (distance_to_object(obj_knight) < safe_distance) 
{
	state = state.flee;
	hspeed = 2.5;
	vspeed = 2.5;
	direction = -point_direction(x, y, obj_knight.x, obj_knight.y);
}