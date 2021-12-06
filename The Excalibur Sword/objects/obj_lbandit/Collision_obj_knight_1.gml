attack = 1;
if(sprite_index == spr_lbandit_walk_right)
{
	obj_knight.xSpeed = 15 * obj_knight.spd;
	obj_knight.x += obj_knight.xSpeed;
	obj_knight.ySpeed = -45 * obj_knight.spd;
	obj_knight.y += obj_knight.ySpeed;
}
else if(sprite_index == spr_lbandit_walk_left)
{
	obj_knight.xSpeed = 15 * obj_knight.spd;
	obj_knight.x -= obj_knight.xSpeed;
	obj_knight.ySpeed = -45 * obj_knight.spd;
	obj_knight.y += obj_knight.ySpeed;
}

if(obj_knight.sprite_index == spr_knight_attack)
{
	instance_create_layer(x, y, "Instances", obj_lbandit_death)
	instance_destroy()
}