/// @description Insert description here
// You can write your code in this editor
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var attack = mouse_check_button(mb_left);
var shield = mouse_check_button(mb_right);
var jump_hld = keyboard_check(vk_space);
var onTheGround_big = place_meeting(x, y + 1, obj_collision_big);
var onTheGround_sm = place_meeting(x, y + 1, obj_collision_sm);
var onTheGround_stair = place_meeting(x, y + 1, obj_collision_stair);
if (xDirection != 0) image_xscale = xDirection;

xSpeed = xDirection * spd;
ySpeed += 0.5;

attack_cooldown -= 1;
swing_cooldown ++;


if(keyboard_check(ord("D")) || keyboard_check(ord("A")))
{
	if(place_meeting(x + xSpeed, y, obj_collision_stair))
	{
		var instance = instance_place(x + xSpeed, y, obj_collision_stair);

		y = instance.y - 18;
		if (jump) 
		{
			show_debug_message(self.y);
			sprite_index = spr_knight_jump;
			ySpeed = -12;
		}
	}
}

if (onTheGround_big || onTheGround_sm || onTheGround_stair) 
{
	if (jump) 
	{
		show_debug_message(self.y);
		sprite_index = spr_knight_jump;
		ySpeed = -12;
	}
	else if (attack) 
	{ 
		if(!audio_is_playing(player_attack) && swing_cooldown > 42)
		{
			
			audio_play_sound(player_attack,1,false);
			swing_cooldown = 0;
		}
		sprite_index = spr_knight_attack;
		
	} 
	else if (shield) 
	{ 
		sprite_index = spr_knight_shield; 
	} 
	else if (xDirection != 0) 
	{ 
		sprite_index = spr_knight_run; 
	} 
	
	else 
	{ 
		sprite_index = spr_knight_idle; 
	}
	
} 

if((ySpeed < 0) && (!jump_hld))
{
	sprite_index = spr_knight_jump;
	ySpeed = max(ySpeed, 0);
}

//infinite jumps for testing
if (jump) 
	{
		sprite_index = spr_knight_jump;
		ySpeed = -12;
	}




if (place_meeting(x + xSpeed, y, obj_collision_big) || place_meeting(x + xSpeed, y, obj_collision_sm) || place_meeting(x + xSpeed, y, obj_collision_stair)) 
{ 	
	while (!place_meeting(x + sign(xSpeed), y, obj_collision_big) && !place_meeting(x + sign(xSpeed), y, obj_collision_sm) && !place_meeting(x + sign(xSpeed), y, obj_collision_stair)) 
	{
		x += sign(xSpeed);
	}
	xSpeed = 0; 
}

x += xSpeed;

if (place_meeting(x, y + ySpeed, obj_collision_big) || place_meeting(x, y + ySpeed, obj_collision_sm) || place_meeting(x + xSpeed, y, obj_collision_stair)) 
{ 
	while (!place_meeting(x, y + sign(ySpeed), obj_collision_big) && !place_meeting(x, y + sign(ySpeed), obj_collision_sm) && !place_meeting(x + sign(xSpeed), y, obj_collision_stair)) 
	{
		y += sign(ySpeed);
	}
	ySpeed = 0; 
}

y += ySpeed;


