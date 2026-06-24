alpha = -1;
friction = 0.065;
vspeed = -2;
phase = 0;
phasetimer = 0;
mode = 1;
sel = 0;

function draw_text_spaced(_x, _y, _str, _xscale, _yscale, _angle, _spacing)
{
    var total = 0;
    for (var i = 1; i <= string_length(_str); i++)
    {
        var ch = string_char_at(_str, i);
        total += string_width(ch) * _xscale;
        if (i < string_length(_str)) total += _spacing;
    }
    var xx = _x - (total / 2);
    for (var i = 1; i <= string_length(_str); i++)
    {
        var ch = string_char_at(_str, i);
        draw_text_transformed(xx, _y, ch, _xscale, _yscale, _angle);
        xx += string_width(ch) * _xscale + _spacing;
    }
}