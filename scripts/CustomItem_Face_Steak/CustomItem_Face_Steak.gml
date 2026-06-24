function CustomItem_Face_Steak() : ItemTypeSimple("Steak") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Lang_GetString("Steak")+Item_GetTextHeal(90));Player_SetKr(0);
		Dialog_Start();

		Player_Heal(60);
		audio_play_sound(snd_item_heal,0,false);

		inventory.Remove(index);
	}
}