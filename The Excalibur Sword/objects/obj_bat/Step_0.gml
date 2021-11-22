//calc player cords
var px, py;
px = instance_nearest(self.x,self.y,obj_knight).x;
py = instance_nearest(self.x,self.y,obj_knight).y;

/*
var amp = 2.5;
var period = 25;
if(state == state.idle)
{
	self.y = self.y + amp*sin(self.x/period);
}
*/

attack_cooldown += 2;

//manage which direction bat animation is flying
if(hspeed > 0)
{
	sprite_index = spr_bat_right;
}
else if(hspeed < 0)
{
	sprite_index = spr_bat_left;
}

//player enters 145 pixel radius of bat
if(point_distance(self.x, self.y, px, py) < safe_distance && state == state.idle)
{
	state = state.attack;
	hspeed = 3;
	vspeed = 3;
	if(self.x - px < 0)
	{
		sprite_index = spr_bat_right;
	}
	else if(self.x - px > 0)
	{
		sprite_index = spr_bat_left;
	}
	direction = point_direction(self.x,self.y, obj_knight.x, obj_knight.y);
}

//reset bat aggro once outside safe distance
if(attack_cooldown > 40 && distance_to_object(obj_knight) > safe_distance && state != state.idle)
{
	state = state.idle;
	hspeed = 1.5;
	vspeed = 1.5;
}
