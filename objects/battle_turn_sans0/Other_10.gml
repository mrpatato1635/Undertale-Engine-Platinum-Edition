///@desc Turn Preparation Start

//This Is A Size 65x65 Box You Can Adjust The Box Left Up Down RIght Ones The Box Appear The Attack Begins
//You Can Delete this Adjustable Box If You Dont Need To Modify Here
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,65);
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,65);
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,65);
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,65);
//This Is A Battle DIalog Example
var txt = instance_create_depth(420,150,0,battle_dialog_enemy);
txt.text = "{script `sansface1`}text face 1{pause}{clear}{script `sansface6`}{script `sansbodynope`}text face body 2{pause}{clear}{script `sansface3`}{script `sansbody`}text face no body 3{pause}{clear}{script `sansfacesweat1`}text face sweat{pause}{clear}{script `sansfacewithoutsweat`}text face no sweat";