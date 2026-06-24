function CustomItem_Snowman_Piece() : ItemTypeSimple("SnowPiece") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Lang_GetString("SnowPiece")+Item_GetTextHeal(45));Player_SetKr(0);
		Dialog_Start();

		Player_Heal(45);
		audio_play_sound(snd_item_heal,0,false);

		inventory.Remove(index);
	}
}