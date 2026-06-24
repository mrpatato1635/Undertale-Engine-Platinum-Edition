if start
	time++;
if time == 1
{
	// This Is A Example Of Bone Attack
    CreateBone(520,395,56,-2,0,0,0,0,c_white,0,0,0,0,0) 
}
if time == 200
{
	// This Code Might End The Turn 
	Battle_EndTurn()
	battle_enemy_sans.body_sprite = spr_sans_body
}