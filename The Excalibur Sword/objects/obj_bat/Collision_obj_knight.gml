attack = 1;
if(sprite_index == spr_bat_right)
{
	obj_knight.xSpeed = 10 * obj_knight.spd;
	obj_knight.x += obj_knight.xSpeed;
	locked_on = 0;
}
else if(sprite_index == spr_bat_left)
{
	obj_knight.xSpeed = 10 * obj_knight.spd;
	obj_knight.x -= obj_knight.xSpeed;
	locked_on = 0;
}

if(obj_knight.sprite_index == spr_knight_attack)
{
	instance_destroy()
}