if(hspeed > 0 && state == state.idle)
{
	hspeed = -hspeed;
}
else if(hspeed < 0 && state == state.idle)
{
	hspeed = hspeed*(-1);
}
alarm[0] = room_speed * 2.5;
