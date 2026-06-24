if (global.noobmode == 1)
{
    if ((Player_GetHp() + Player_GetKr()) > 0)
    {
        if (Player_GetHp() != 1)
        {
            Player_Hurt(1)
            Player_SetKr(Player_GetKr() + 1)
        }
        else if (Battle_GetState() != BATTLE_STATE.MENU)
        {
            Player_SetKr(Player_GetKr() - 1)
        }
        else if (Battle_GetState() == BATTLE_STATE.MENU && Player_GetKr() > 0)
        {
            Player_SetKr(Player_GetKr() - 1)
        }
    }
}
else if ((Player_GetHp() + Player_GetKr()) > 0)
{
    if (Player_GetHp() != 2)
    {
        Player_Hurt(2)
        Player_SetKr(Player_GetKr() + 1)
    }
    else if (Battle_GetState() != BATTLE_STATE.MENU)
    {
        Player_SetKr(Player_GetKr() - 2)
    }
    else if (Battle_GetState() == BATTLE_STATE.MENU && Player_GetKr() > 0)
    {
        Player_SetKr(Player_GetKr() - 2)
    }
}
audio_play_sound(snd_hurt, 0, false)
alarm[0] = 1