function CustomItem_Pie() : ItemTypeSimple("Pie") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Lang_GetString("Pie")+Item_GetTextHeal(92));Player_SetKr(0);
		Dialog_Start();

		Player_Heal(92);
		audio_play_sound(snd_item_heal,0,false);

		inventory.Remove(index);
	}
}