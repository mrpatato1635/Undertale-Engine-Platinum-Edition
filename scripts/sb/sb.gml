///@arg U
///@arg D
///@arg L
///@arg R
///@arg TIME
///@arg tween
///@arg ease
function sb(){
var U = argument[0]
var D = argument[1]
var L = argument[2]
var R = argument[3]
var TIME = 25
var K = 0
var K2 = 0
if (argument_count >= 5)
    TIME = argument[4]
if (argument_count >= 6)
    K = argument[5]
if (argument_count >= 7)
    K2 = argument[6]
if is_real(U)
{
    if (TIME == 0)
        battle_board.up = U
    else
        Anim_Create(battle_board, "up", K, K2, battle_board.up, (U - battle_board.up), TIME)
}
if is_real(D)
{
    if (TIME == 0)
        battle_board.down = D
    else
        Anim_Create(battle_board, "down", K, K2, battle_board.down, (D - battle_board.down), TIME)
}
if is_real(L)
{
    if (TIME == 0)
        battle_board.left = L
    else
        Anim_Create(battle_board, "left", K, K2, battle_board.left, (L - battle_board.left), TIME)
}
if is_real(R)
{
    if (TIME == 0)
        battle_board.right = R
    else
        Anim_Create(battle_board, "right", K, K2, battle_board.right, (R - battle_board.right), TIME)
}
return 1;

}