/// @description Insert description here
// You can write your code in this editor
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var onTheGround_big = place_meeting(x, y + 1, obj_collision_big);
var onTheGround_sm = place_meeting(x, y + 1, obj_collision_sm);
if (xDirection != 0) image_xscale = xDirection;

xSpeed = xDirection * spd;
ySpeed+= 0.5;

if (onTheGround_big || onTheGround_sm) 
{
	if (xDirection != 0) 
	{ 
		sprite_index = spr_knight_run; 
	} 
	else 
	{ 
		sprite_index = spr_knight_idle; 
	}
	if (jump) 
	{
		sprite_index = spr_knight_jump;
		ySpeed = -12;
	}
} 
//infinite jumps for testing
if (jump) 
	{
		sprite_index = spr_knight_jump;
		ySpeed = -12;
	}

if (place_meeting(x + xSpeed, y, obj_collision_big) || place_meeting(x + xSpeed, y, obj_collision_sm)) 
{ 	
	while (!place_meeting(x + sign(xSpeed), y, obj_collision_big) && !place_meeting(x + sign(xSpeed), y, obj_collision_sm)) 
	{
		x += sign(xSpeed);
	}
	xSpeed = 0; 
}

x += xSpeed;

if (place_meeting(x, y + ySpeed, obj_collision_big) || place_meeting(x, y + ySpeed, obj_collision_sm)) 
{ 
	while (!place_meeting(x, y + sign(ySpeed), obj_collision_big) && !place_meeting(x, y + sign(ySpeed), obj_collision_sm)) 
	{
		y += sign(ySpeed);
	}
	ySpeed = 0; 
}

y += ySpeed;
