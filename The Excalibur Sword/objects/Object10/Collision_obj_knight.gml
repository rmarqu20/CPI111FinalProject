health -= 5;
if(room == Room4)
{
	audio_play_sound(sfx_lava_scream, 1, false);
	obj_knight.x = 75;
	obj_knight.y = 3720;
}

if(room == Room3)
{
	audio_play_sound(sfx_lava_scream, 1, false);
	obj_knight.x = 192;
	obj_knight.y = 3775;
}

if(room == Room2)
{
	audio_play_sound(sfx_lava_scream, 1, false);
	obj_knight.x = 1042;
	obj_knight.y = 3796;
}