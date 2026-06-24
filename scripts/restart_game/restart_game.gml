// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function restart_game(){
	room_goto(room_logo)
	var items = Item_GetInventoryItems()
	Player_SetKr(0)
	items.Clear()
	Player_CustomInitialData()
	audio_stop_all()	
}