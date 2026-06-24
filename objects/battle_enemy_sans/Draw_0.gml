draw_sprite_pos(legs_sprite,legs_image,x-44+body_x,y-55+body_y,x+44+body_x,y-55+body_y,x+44,y,x-44,y,1) //足の描画
draw_sprite_ext(body_sprite,body_image,x+body_x,y+body_y-35,2,2,body_angle,c_white,body_alpha) //体の描画
draw_sprite_ext(body_blood_sprite,body_blood_image,x+body_x,y+body_y-35,2,2,body_angle,c_white,body_blood_alpha) //体の血の描画
draw_sprite_ext(head_sprite,head_image,x+head_x,y+head_y-90,2,2,head_angle,c_white,1) //頭の描画
draw_sprite_ext(head_blood_sprite,head_blood_image,x+head_x,y+head_y-90,2,2,head_angle,c_white,body_blood_alpha) //頭の血の描画
draw_sprite_ext(sweat_sprite,sweat_image,x+head_x,y+head_y-90,2,2,head_angle,c_white,sweat_alpha) //汗の描画
if mode == 0 { //通常
    head_x = sin(b/20)*1
    head_y = sin(b/10)*1
    body_x = sin(b/20)*1
    body_y = sin(b/10)*1
    head_angle = -sin(b/20)*0.5
    body_angle = -sin(b/20)*0.5
}
else if mode == 1 { //汗を出す
	sweat_alpha = 1
    head_x = sin(b/20)*1
    head_y = sin(b/10)*1
    body_x = sin(b/20)*1
    body_y = sin(b/10)*1
    head_angle = -sin(b/20)*0.5
    body_angle = -sin(b/20)*0.5
}
else if mode == 2 { //血を出す
	body_alpha = 0
	body_blood_alpha = 0.5
    head_y = sin(b/30)*1
    body_y = sin(b/30)*1
}
b++