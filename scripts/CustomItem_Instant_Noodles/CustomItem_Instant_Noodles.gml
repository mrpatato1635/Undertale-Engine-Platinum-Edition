function CustomItem_Instant_Noodles() : ItemTypeSimple("I.Noodles") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Lang_GetString("I.Noodles")+Item_GetTextHeal(90));Player_SetKr(0); 
		Dialog_Start();

		Player_Heal(90);
		audio_play_sound(snd_item_heal,0,false);

		inventory.Remove(index);
	}
}