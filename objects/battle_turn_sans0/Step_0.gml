if start
	time++;
if time == 1
{
	//This Is A Example Bonestab Attack
	alarm[0] = 1
}
if time == 300
{
	//This Code Might End Turn
	Battle_EndTurn()
	alarm[0] = -1
}