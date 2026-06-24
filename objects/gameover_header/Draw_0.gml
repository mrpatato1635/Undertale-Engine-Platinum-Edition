if (alpha <= 0)
    exit;

var _y = floor(y);
draw_set_alpha(alpha);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(Lang_GetFont(Lang_GetString("font.dialog.1")))

draw_text_spaced(320, _y + 230, "Stay determined!",2,2,0, -2);

if (mode == 0)
{
    draw_set_color(c_yellow);
    var str = "Return to menu";
    draw_text_spaced(320, _y + 290, str,2,2,0, -2);
    draw_sprite(spr_battle_soul_red, 0, 320 - (string_width(str) / 2) - 24 - 30, _y + 300 +7);
}
else
{
    draw_set_color(c_white);
    var str = "Play again";
    
    if (sel == 0)
    {
        draw_set_color(c_yellow);
        draw_sprite(spr_battle_soul_red, 0, 320 - (string_width(str) / 2) - 24 - 30, _y + 300+7);
    }
    
    draw_text_spaced(320, _y + 290, str,2,2,0, -2);
    draw_set_color(c_white);
    str = "Return to menu";
    
    if (sel == 1)
    {
        draw_set_color(c_yellow);
        draw_sprite(spr_battle_soul_red, 0, 320 - (string_width(str) / 2) - 24 - 40, _y + 300 + 32+7);
    }
    
    draw_text_spaced(320, _y + 290 + 32, str,2,2,0, -2);
}

draw_set_halign(fa_left);
draw_set_alpha(1);
