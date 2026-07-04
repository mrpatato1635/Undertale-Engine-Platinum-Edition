var offset = 0;
var offsety = -20;
var offsety2 = 20;
var textsize = 0.8;
var border_labels = ["NONE","Simple","Sepia","Dynamic","Ruins","Snowdin","Waterfall","Hotland","Castle","True Lab","Beauty","MadMadMew","Super Dog","Casino"];
var current_border_label = border_labels[border_case];
var lang_labels =  ["ENGLISH"];
var current_lang_label = lang_labels[lang_case];

draw_set_font(Lang_GetFont(Lang_GetString("font.dialog.0")));

buffer -= 1;
if (weather == 2) {
    var c = instance_create_depth(offset, 0, depth, obj_ct_fallobj);
    c.sprite_index = spr_fallleaf;
    c.image_blend = merge_color(c_red, c_white, 0.5);
    siner += 1;
    draw_sprite_ext(spr_tobdog_spring, floor(siner / 15), 250 + offset, 218 + offsety + offset, 1, 1, 0, c_white, 1);
    draw_set_color(c_gray);
    draw_text_transformed(220 + offset + sin(siner / 12), 120 + offsety + offset +offsety2 + cos(siner / 12), "this is a\nsettings example", textsize,textsize, -20);
}

var menu_options = ["EXIT", "BORDER"];
for (var i = 0; i < array_length(menu_options); i++) {
    if (_menu == i) draw_set_color(c_yellow);
    else draw_set_color(c_white);
    
    var y_pos;
    if (i == 0) y_pos = 40 + offsety + offset + 40;
    else y_pos = 80 + (i-1) * 20 + offsety + offset + 40 - 10;

    draw_text(20 + offset, y_pos, string_hash_to_newline(menu_options[i]));

    if (i == 1) {
        draw_set_color(c_white);
        draw_text(120 + offset, y_pos, "< "+current_border_label+" >");
    }

    if (i == 2) {
        draw_set_color(c_white);
        draw_text(120 + offset, y_pos,"< "+current_lang_label+" >");
    }
}

if (Input_IsPressed(INPUT.DOWN)) {
    _menu += 1;
    if (_menu >= array_length(menu_options)) _menu = 0;
}
if (Input_IsPressed(INPUT.UP)) {
    _menu -= 1;
    if (_menu < 0) _menu = array_length(menu_options) - 1;
}


    switch(_menu) {
		case 0:
		_submenu="";
		if (Input_IsPressed(INPUT.CONFIRM)) {
            room_goto(room_logo)
			audio_stop_all()
    }
			break;
        case 1:
            _submenu = "border";
            break;
    }

if (_submenu == "border") {
    if (Input_IsPressed(INPUT.LEFT)) {
        border_case -= 1;
        if (border_case < 0) border_case = array_length(border_labels) - 1;
    }
    if (Input_IsPressed(INPUT.RIGHT)) {
        border_case += 1;
        if (border_case >= array_length(border_labels)) border_case = 0;
    }

if (border_case == 0)
    Border_SetEnabled(false)
else
    Border_SetEnabled(true)

if (border_case == 3) 
    global.dynamic = 1
else
    global.dynamic = 0

if (global.dynamic == 0)
    Border_SetSprite(spr_border_simple, border_case - 1, true, 100)
else
    Border_SetSprite(spr_border_simple, 0, true, 100)
	
if (global.dynamic == 1)
    Border_SetSprite(spr_border_simple, 0, true, 100)
}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_transformed(160 + offset, 10 - offsety + offset, "SETTINGS", 2, 2, 0);
draw_set_valign(fa_bottom);
draw_set_color(c_gray)
draw_text_transformed(320/2, 475/2, "UNDERTALE ENGINE PLATUNUM EDITION (C) BLACKBLOX 2025-2026", 0.5, 0.5, 0);
draw_set_color(c_white)
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (intro == 1) 
{
    if (rectile == 16) audio_play_sound(snd_harpnoise, 0, false);
    rectile += 4;

    draw_set_color(c_black);
    draw_rectangle(168 - rectile, -150, -1, 350, false);

    draw_set_color(c_black);
    draw_rectangle(152 + rectile, -50, 330, 350, false);

    if (rectile >= 170) 
    {
        buffer = 5;
        intro = -1;
        alarm[1] = 20;
    }
}
