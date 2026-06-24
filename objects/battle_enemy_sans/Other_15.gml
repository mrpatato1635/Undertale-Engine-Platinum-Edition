///@desc Menu End

switch (Battle_GetMenuChoiceButton()) {
case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
// Check If The Enemy Is Defeated 
if (_hp <= 0) {
// Create Particle Spare Effect
var inst = instance_create_depth(x, y, 0, battle_death_particle);
inst.sprite = sprite_index;
audio_play_sound(snd_vaporize, 0, false);
instance_destroy();
}
break;
case BATTLE_MENU_CHOICE_BUTTON.ACT:
    switch (Battle_GetMenuChoiceAction()) {
        case 0:
		//First Act
			Dialog_Add("* Sans 1 ATK 1 DEF{sleep 20}&* The Example Enemy&* Just Try Attack");
            break;

        case 1:
            //Second Act
            Dialog_Add("* You Wave At Sans{sleep 20}&* Sans Know You&* Are Waving")
            break;
    }
}