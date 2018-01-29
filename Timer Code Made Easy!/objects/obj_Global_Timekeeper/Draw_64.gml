draw_set_font(font0)
//Set Font

draw_text(30, 10, string(global.ticks))
//Draw the Global Ticks to the screen

if paused = true
//If the game is Paused
{
	draw_set_font(font1)
	//Set Font
	
	draw_text(x, y, "Paused in Unfiltered Comic Sans");
	//Draw "Paused in Unfiltered Comic Sans" to the screen.
}