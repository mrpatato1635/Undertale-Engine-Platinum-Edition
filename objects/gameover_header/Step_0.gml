if (phase == 2)
    exit;

if (phase == 0)
{
    if (alpha < 1)
        alpha += 0.1;
    
    if (alpha >= 1)
        phase = 1;
}
else if (phase == 1)
{
        if (mode == 1)
    {
        if (Input_IsPressed(INPUT.DOWN)||Input_IsPressed(INPUT.UP))
        {
            audio_play_sound(snd_menu_switch,2,false)
            sel = 1 - sel;
        }
    }
    if (Input_IsPressed(INPUT.CONFIRM))
    {
        audio_play_sound(snd_menu_confirm,2,false)
		if (mode == 0 || sel == 1)
        {
            	room_goto(room_logo)
	            var items = Item_GetInventoryItems()
	            Player_SetKr(0)
	            items.Clear()
	            Player_CustomInitialData()
	            audio_stop_all()
			
        }else{
            	room_goto(room_battle)
	            var items = Item_GetInventoryItems()
	            Player_SetKr(0)
	            items.Clear()
	            Player_CustomInitialData()
	            audio_stop_all()			
		}
    }
}