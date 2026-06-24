///@desc Menu Switch
if !avoid //If Avoidance Is Not Possible
{
switch(Battle_GetMenu()){
case BATTLE_MENU.FIGHT_TARGET:
//Create Enemy Health Bar
var inst=instance_create_depth(0,0,0,battle_menu_fight_hp_bar);
inst.enemy_slot=_enemy_slot;
inst.hp_max=_hp_max;
inst.hp=_hp;
break;
		
case BATTLE_MENU.FIGHT_DAMAGE:
	
		
var dmg=Battle_GetMenuFightDamage();
var hp_orig=_hp;
		
_hp=(_hp-dmg >= 0 ? _hp-dmg : 0);
		
// Writing The Damage Enemy
var inst=instance_create_depth(x,y-150,0,battle_damage);
inst.damage=dmg;
inst.bar_hp_max=_hp_max;
inst.bar_hp_original=hp_orig;
inst.bar_hp_target=_hp;
		
//Damage Sound Effect For Enemy
if(dmg>0){
	audio_play_sound(snd_damage,0,false);
	var shake=instance_create_depth(0,0,0,shaker);
	shake.target=self;
	shake.var_name="x";
	shake.shake_distance=15;
	shake.shake_decrease=3;
	shake.shake_speed=4;
}
break;
}
}
else //If Avoidance Is Enabled
{
if (!(Battle_GetMenuFightDamage() == -1))
{
if (Battle_GetMenu() == (3 << 0))
{
Anim_Create(id, "x", 2, 1, 320, -120, 30)
Anim_Create(id, "x", 2, 1, 200, 120, 30, 40)
}
if (Battle_GetMenu() == (4 << 0))
{
a = instance_create_depth(320, (y - 185), 0, battle_damage)
a.damage = -2
}
}
}