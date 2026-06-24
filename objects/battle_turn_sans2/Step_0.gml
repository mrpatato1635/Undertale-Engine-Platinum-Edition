if start
	time++;
if time == 1
{
	// This Is A Example Of Gaster Blaster Attack	
    gb=MakeGB(0,0,320,150,0,270,2,1,c_white,20,20)
}
if time == 150
{
	// This Code Might End The Turn 
	Battle_EndTurn()
	battle_enemy_sans.body_sprite = spr_sans_body
	alarm[0] = -1
}