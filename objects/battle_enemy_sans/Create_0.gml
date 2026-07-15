_turn = 0 // Current Turn Number 
_firstattack = false // Pre-Turn Attack Just Like Sans First Attack
avoid = true // Make Enemy Dodge Attack Just Like Sans
Battle_SetTurnInfo(BATTLE_TURN.TIME,-1) //Set The battle_turn Time To Unlimited
if (global.dynamic == 1)
    Border_SetSprite(spr_border_simple, 0, true, 100)

if (global.dynamic == 1)
    Border_SetSprite(spr_border_simple, 1, true, 100)
// You Can Change Border Sprite By Change The Index Number
if (global.dynamic == 1)
    Border_SetSprite(spr_border_simple, 7, true, 100)
head_sprite = spr_sans_head  // Sans Head
body_sprite = spr_sans_body  // Sans Body
body_blood_sprite = spr_sans_body_blood  // Sans Body With Blood
head_blood_sprite = spr_sans_head_blood  // Sans Head With Blood
sweat_sprite = spr_sans_head_sweat  // Sans Head With Sweat
legs_sprite = spr_sans_legs  // Sans Legs
head_image = 0  // Number Sans Head Frame 1-8
body_image = 0  // Number Sans Body Frame (Does Not Changed)
legs_image = 0  // Number Sans Legs Frame (Does Not Changed)
body_blood_image = 0  // Number Sans Body Blood Frame (Does Not Changed)
head_blood_image = 0  // Number Sans Head Blood Frame (Does Not Changed)
sweat_image = 1  // Number Frames Sans Head Sweat
mode = 0  // Switch Type Of Sans 1 Is Sweat 2 Is Blood
head_x = 0 // Horizontal Axis Head Sans
head_y = 0 // Vertical Axis Head Sans
body_x = 0 // Horizontal Axis Body Sans
body_y = 0 // Vertical Axis Head Sans
head_angle = 0 // Visual Rotation For Sans Head
body_angle = 0 // Visual Rotation For Sans Body
b=0 
body_alpha = 1 // Hide The Injured Body 
body_blood_alpha = 0　// Enable Body And Head Show Injuries
sweat_alpha = 0 // Turn On And Off Sweat

action=0
action_step=0
sa=0

alarm[0] = 1