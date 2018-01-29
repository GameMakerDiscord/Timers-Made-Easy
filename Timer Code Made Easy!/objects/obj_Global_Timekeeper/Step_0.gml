if paused = false
//If the game isn't paused
{
	global.ticks += 1;
	//Increment the game's global ticks by 1
}

if global.ticks >= global.maxticks
//If the Global Ticks are at or over 1000
{
	global.ticks = 0;
	//Set them back to 0.
}