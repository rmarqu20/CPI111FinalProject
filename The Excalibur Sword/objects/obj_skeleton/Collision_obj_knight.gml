attack = 1;
if(sprite_index == spr_skeleton_walk_right)
{
	obj_knight.xSpeed = 10 * obj_knight.spd;
	obj_knight.x += obj_knight.xSpeed;
}
else if(sprite_index == spr_skeleton_walk_left)
{
	obj_knight.xSpeed = 10 * obj_knight.spd;
	obj_knight.x -= obj_knight.xSpeed;
}