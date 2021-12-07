color1 = c_ltgray;	//unselected items
color2 = c_white;	//selected items
vS = 48;	//vertical space

//pause menu
option[0, 0] = "Start Game";
option[0, 1] = "Credits";
option[0, 2] = "Quit Game";

//setings menu
option[1, 0] = "Devs";
option[1, 1] = "Artwork";
option[1, 2] = "Environment Sprites";
option[1, 3] = "Player/Enemy Sprites";
option[1, 4] = "Music/Sfx";
option[1, 5] = "Back";

option[2, 0] = "Devs";
option[2, 1] = "Nick Meyer";
option[2, 2] = "Diego Peraza";
option[2, 3] = "Richard Marquez Cortes";
option[2, 4] = "Francisco Valdez-Gallegos";
option[2, 5] = "Back";

option[3, 0] = "Artwork";
option[3, 1] = "Excalibur Pixel art by munstudios";
option[3, 2] = "Background, Pixel Art by LolaMusslin";
option[3, 3] = "Back Button (Red)2 by 9664c4";
option[3, 4] = "Back";

option[4, 0] = "Environment Sprites";
option[4, 1] = "Pixel Fantasy Caves by Szadiart";
option[4, 2] = "Gen. Dungeon Pack by EstudioVacaRoxa";
option[4, 3] = "Pixel Castle 2D by Szadiart";
option[4, 4] = "Magic Cliffs Environment by ansimuz";
option[4, 5] = "Back";

option[5, 0] = "Player/Enemy Sprites";
option[5, 1] = "Medieval Fantasy Character Pack by oco";
option[5, 2] = "Monsters Creatures Fantasy by LuizMelo";
option[5, 3] = "Orc Sprite Pack by FinalGateStudios";
option[5, 4] = "Bandits by Sven";
option[5, 5] = "Bat(Rework) by AntumDeluge";
option[5, 6] = "Back";

option[6, 0] = "Music/Sfx";
option[6, 1] = "Loading Screen Loop by BrandonMorris ";
option[6, 2] = "Caves of Sorrow by AlexanderZhelanov";
option[6, 3] = "Dungeon O3 by FantasyMusica";
option[6, 4] = "Heroic Demis by MatthewPablo";
option[6, 5] = "Final Epic Battle by Telaron";
option[6, 6] = "RPG Sound Pack by artisticdude";
option[6, 7] = "Bat Screeches by AntumDeluge";
option[6, 8] = "Back";

menu_level = 0;
menuitems = array_length(option[menu_level]);
cursor = 0;

//detect if mousec is plugged in
mousec = true;
var gp_num = gamepad_get_device_count();
var i;
for (var i = 0; i < gp_num; i++;) 
{
	if(gamepad_is_connected(i))
	{
		mousec = false;
	}
}
lastmx = device_mouse_x_to_gui(0);
lastmy = device_mouse_y_to_gui(0);