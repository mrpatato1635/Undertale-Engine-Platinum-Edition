///@desc Init
Battle_SetEnemyName(_enemy_slot,"* Sans") // Name Enemy
Battle_SetEnemyDEF(_enemy_slot,-15) // Defense
//Status
_hp = 1
_hp_max = 1

//--------------------------------------
//ACTS
//--------------------------------------

//--------------------------------------
//Act Choice 1
//--------------------------------------
Battle_SetEnemyActionNumber(_enemy_slot,1); // First Slot
Battle_SetEnemyActionName(_enemy_slot,0,"* Check"); // Action Name
//--------------------------------------
//Act Choice 2
//--------------------------------------
Battle_SetEnemyActionNumber(_enemy_slot,2); // Second Slot
Battle_SetEnemyActionName(_enemy_slot,1,"* Wave"); // Action Name
