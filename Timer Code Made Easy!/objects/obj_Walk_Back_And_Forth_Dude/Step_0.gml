if timestamp != global.ticks
//If the global ticks have incremented
{
	//run all the code in here.
	
	scr_timer(100, 0)
	//Run a timer in the 0 slot for 100 ticks.
	
	if execute[1] = false
	//If timer one hasn't executed
	{
		scr_timer(50, 1)
		//Run a timer in the 1 slot for 50 ticks.
		//This timer will only run until it executes, then it will stop running it.
	}
	else
	{
		scr_timer(100, 2)
		//Run a timer in the 2 slot for 100 ticks
	}
	
	if execute[0] = true
	//If timer zero executes
	{
		hmove *= -1
		//Flip the movement direction
	
		execute[0] = false;
		//Set the timer execution back to false
	}
	
	if execute[2] = true
	//If timer two executes
	{
		vmove *= -1
		//Flip the movement direction
	
		execute[2] = false;
		//Set the timer execution back to false
	}
	
	

	x += hmove;
	
	y += vmove;
	//Move the object in the movement directions.
}

timestamp = global.ticks