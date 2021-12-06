attack = 1;
health-=2;
audio_play_sound(skeleton_attack, 1, false)
audio_play_sound(player_take_hit, 1, false);
if(sprite_index == spr_skeleton_walk_right)
{
	obj_knight.xSpeed = 15 * obj_knight.spd;
	obj_knight.x += obj_knight.xSpeed;
	obj_knight.ySpeed = -7 * obj_knight.spd;
	obj_knight.y += obj_knight.ySpeed;
}
else if(sprite_index == spr_skeleton_walk_left)
{
	obj_knight.xSpeed = 15 * obj_knight.spd;
	obj_knight.x -= obj_knight.xSpeed;
	obj_knight.ySpeed = -7 * obj_knight.spd;
	obj_knight.y += obj_knight.ySpeed;
}

if(obj_knight.sprite_index == spr_knight_attack)
{
	audio_play_sound(skeleton_death, 1, false)
	if(health < 91)
	{
		health+=10;
	}
	instance_create_layer(x, y, "Instances", obj_skeleton_death)
	instance_destroy()
}