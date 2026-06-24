function CustomItem_Legendary_Hero() : ItemTypeSimple("L.Hero") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Lang_GetString("L.Hero")+Item_GetTextHeal(40));Player_SetKr(0);
		Dialog_Start();

		Player_Heal(40);
		audio_play_sound(snd_item_heal,0,false);

		inventory.Remove(index);
	}
}