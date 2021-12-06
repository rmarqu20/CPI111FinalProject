/// @description Insert description here
// You can write your code in this editor
if(health < 0)
{
	room_goto(Room1);
	obj_knight.x = 347;
	obj_knight.y = 3707;
	health = 100;
}

if(keyboard_check(ord("L")))
{
	if(room == Room1)
	{
		obj_knight.x = 347;
		obj_knight.y = 3707;
	}
	else if(room == Room2)
	{
		obj_knight.x = 1042;
		obj_knight.y = 3796;
	}
	else if(room == Room3)
	{
		obj_knight.x = 192;
		obj_knight.y = 3775;
	}
	else if(room == Room4)
	{
		obj_knight.x = 60;
		obj_knight.y = 3717;
	}
}