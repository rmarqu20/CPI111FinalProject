attack = 1;
if(sprite_index == spr_orc_walk_right)
{
	obj_knight.xSpeed = 40 * obj_knight.spd;
	obj_knight.x += obj_knight.xSpeed;
	obj_knight.ySpeed = -12 * obj_knight.spd;
	obj_knight.y += obj_knight.ySpeed;
}
else if(sprite_index == spr_orc_walk_left)
{
	obj_knight.xSpeed = 40 * obj_knight.spd;
	obj_knight.x -= obj_knight.xSpeed;
	obj_knight.ySpeed = -12 * obj_knight.spd;
	obj_knight.y += obj_knight.ySpeed;
}

if(obj_knight.sprite_index == spr_knight_attack)
{
	instance_create_layer(x, y, "Instances", obj_orc_death)
	instance_destroy()
}