function Player_CustomInitialData(){
	Player_SetName("CHARA");
	Player_SetLv(1);
	Player_SetHpMax(20);
	Player_SetHp(20);
	Player_SetAtk(10);
	Player_SetDef(10);
	Player_SetSpd(2);
	Player_SetInv(40);
	Player_SetBattleFightMenuObj(battle_menu_fight_knife);
	
	var items=Item_GetInventoryItems();
	items.Add(ITEM_PIE);
	items.Add(ITEM_INSTANT_NOODLES);
	items.Add(ITEM_FACE_STEAK);	
	items.Add(ITEM_SNOWMAN_PIECE);
    items.Add(ITEM_SNOWMAN_PIECE);
	items.Add(ITEM_LEGENDARY_HERO);
	items.Add(ITEM_LEGENDARY_HERO);
	items.Add(ITEM_LEGENDARY_HERO);
	 
	
	Player_SetItemWeapon(ITEM_STICK);
	Player_SetItemArmor(ITEM_BANDAGE);
}