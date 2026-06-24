/// @desc Turn Preparation Start
// Receive Turn Attack Object
var turn = asset_get_index(("battle_turn_sans" + string(_turn))) //Get The Name Turn Attack Object From battle_bullet
if object_exists(turn) // Receive Turn Name If One Already Exist
 instance_create_depth(0, 0, 0, turn)
 
 // The Name is Obtained By Combining The String "battle_turn_sans" With Current Turn
 // For Example IF The Current Turn Number Is A Object Named "battle_turn_sans" It Will Be Obtained
 // You Can Also Change The Name battle_turn_sans Whatever You LIke