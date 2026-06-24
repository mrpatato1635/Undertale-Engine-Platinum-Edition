draw_set_font(font_mars_needs_cunnilingus);
draw_set_color(c_white);
draw_text(x,y,Player_GetName()+"   LV "+string(Player_GetLv()));
draw_sprite(spr_battle_ui_hp,0,x+214,y+4);

draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHpMax()*1.25,21,0,make_color_rgb(192,0,0),1);
draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHp()*1.25,21,0,make_color_rgb(255,255,0),1);

draw_sprite_ext(spr_pixel,0,x+245+Player_GetHp()*1.25,y-1,Player_GetKr()*1.25,21,0,make_color_rgb(255,40,255),1);


draw_sprite_ext(spr_battle_ui_kr,0,x+245+Player_GetHpMax()*1.25+8,y+3,1,1,0,c_white,1);

var colorkr=(Player_GetKr()<=0 ? c_white : make_color_rgb(255,40,255));
draw_set_color(colorkr);

draw_text(x+245+Player_GetHpMax()*1.25+14+32,y,string(Player_GetHp()+Player_GetKr())+" / "+string(Player_GetHpMax()));
if (global.noobmode == 1)
{
    ca++;
    col = make_color_hsv(ca % 255, 255, 255);
    draw_set_color(col);
    draw_set_font(font_mars_needs_cunnilingus);
    draw_text_ext_transformed(520, 398, "EASY", 120, 160, 1.5, 1.5, 0);
    x1 = 520 + (sin(degtorad(ca)) * 20);
    y1 = 398 + (cos(degtorad(ca)) * 20);
    x2 = 520 + (sin(degtorad(ca + 120)) * 20);
    y2 = 398 + (cos(degtorad(ca + 120)) * 20);
    x3 = 520 + (sin(degtorad(ca + 240)) * 20);
    y3 = 398 + (cos(degtorad(ca + 240)) * 20);
    gpu_set_blendmode(bm_add);
    col1 = make_color_rgb(255, 0, 0);
    col2 = make_color_rgb(0, 255, 0);
    col3 = make_color_rgb(0, 0, 255);
    draw_text_ext_transformed_color(x3 + 5, y3, "EASY", 120, 160, 1.5, 1.5, 0, col1, col3, col3, col3, 1);
    draw_text_ext_transformed_color(x2 + 5, y2, "EASY", 120, 160, 1.5, 1.5, 0, col1, col2, col2, col2, 1);
    draw_text_ext_transformed_color(x1 + 5, y1, "EASY", 120, 160, 1.5, 1.5, 0, col1, col1, col1, col1, 1);
    gpu_set_blendmode(bm_normal);
}
if (global.debug == 1)
{
    draw_set_font(font_mars_needs_cunnilingus);
    Player_SetHp(Player_GetHpMax());Player_SetKr(0);
    ca++;
    col = make_color_hsv(ca % 255, 255, 255);
    draw_set_color(col);
    draw_text_ext_transformed(250, 5, "DEBUG MODE ", 300, 3000, 1, 1, 0);
    draw_text_ext_transformed(510, 5, "TURN: " + string(Battle_GetTurnNumber()), 120, 160, 1, 1, 0);
    draw_text_ext_transformed(0, 5, "SOUL.x : " + string(battle_soul.x), 300, 3000, 0.7, 0.7, 0);
    draw_text_ext_transformed(0, 20, "SOUL.y : " + string(battle_soul.y), 300, 3000, 0.7, 0.7, 0);
    gpu_set_blendmode(bm_normal);
	
    if (keyboard_check_pressed(ord("E")))	
        Battle_EndTurn();
}
if (keyboard_check(ord("B")))
{
    if (keyboard_check(ord("K")))
    {
        if (keyboard_check_pressed(ord("L")))
        {
            if (global.debug == 0)
            {
                global.debug = 1;
            }
            else if (global.debug == 1)
            {
                global.debug = 0;
            }
        }
    }
}
{
    if (keyboard_check_pressed(ord("N")))
    {
        if (global.noobmode == 0)
        {
            global.noobmode = 1;
            global.debug = 0;
        }
        else if (global.noobmode == 1)
        {
            global.noobmode = 0;
        }
    }
}