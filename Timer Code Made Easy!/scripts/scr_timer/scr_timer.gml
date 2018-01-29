/// @desc scr_timer(duration, entry);
/// @arg duration
/// @arg entry
//Script for making something happen after a period of time in ticks.
//This script currently assumes a timer cycle of 1000 ticks, and thus, can only handle a maximum duration of 1000.

var duration = argument0;

var entry = argument1;

if started[entry] = false
{
	tick[entry] = global.ticks;
	started[entry] = true;
}

if started[entry] = true
{
	if tick[entry] <= global.ticks
	{
		if (global.ticks - tick[entry]) >= duration
		{
			execute[entry] = true;
			started[entry] = false;
		}
		
		currenttick[entry] = (global.ticks - tick[entry]);
	}
	else
	{
		if ((global.ticks - tick[entry])+global.maxticks) >= duration
		{
			execute[entry] = true;
			started[entry] = false;
		}
		
		currenttick[entry] = (global.ticks - tick[entry] + global.maxticks);
	}
}