/// @description Insert description here
// You can write your code in this editor
if(point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2))
{
	image_xscale = .6;
	image_yscale = .6;
	if(mouse_check_button_pressed(mb_left))
	{
		pressed = true;
	}
	if(mouse_check_button_pressed(mb_left) && pressed == true)
	{
		image_alpha = 0.8;
	}
	if(mouse_check_button_released(mb_left))
	{
		health = 100;
		image_alpha = 1;
		room_goto(TitleScreen);
		pressed=false;
	}
}
else
{
	image_xscale = .5;
	image_yscale = .5;
	image_alpha = 1;
}
