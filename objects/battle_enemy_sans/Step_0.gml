if (head_sprite == spr_sans_head_pika)
{
	head_image += 0.25
	
	
}else{
	head_sprite = spr_sans_head
	
}



if (!(action == 0))
{
    if (action == 1)
    {
        switch (action_step)
        {
            case 0:
                body_sprite = spr_sans_body_down_up2
                break;
            
            case 1:
                body_sprite = spr_sans_body_down_up1
                break;
            
            case 2:
                body_sprite = spr_sans_body_down_up
                break;
            
            case 3:
                action = 0;
                break;
        }
        
        action_step += 0.25;
    }

    
    if (action == 2)
    {
        switch (action_step)
        {
            case 0:
                body_sprite = spr_sans_body_down_up
                break;
            
            case 1:
                body_sprite = spr_sans_body_down_up1
                break;
            
            case 2:
                body_sprite = spr_sans_body_down_up2
                break;
            
            case 3:
                action = 0;
                break;
        }
        
        action_step += 0.25;
    }
    
    if (action == 3)
    {
        switch (action_step)
        {
            case 0:
                body_sprite = spr_sans_body
                break;
            
            case 1:
                body_sprite = spr_sans_body_left_right1
                break;
            
            case 2:
                body_sprite = spr_sans_body_left_right
                break;
            
            case 3:
                action = 0;
                break;
        }
        
        action_step += 0.25;
    }
    
    if (action == 4)
    {
        switch (action_step)
        {
            case 0:
                body_sprite = spr_sans_body_left_right
                break;
				
            case 1:
                body_sprite = spr_sans_body_left_right1
                break;
            
            case 2:
                body_sprite = spr_sans_body
                break;
            
            case 3:
                action = 0;
                break;
        }
        
        action_step += 0.25;
    }
}

if (sa)
{
    switch (dir)
    {
        case 270:
            action = 2;
            action_step = 0;
            sa = 0;
            break;
        
        case 90:
            action = 1;
            action_step = 0;
            sa = 0;
            break;
        
        case 0:
            action = 3;
            action_step = 0;
            sa = 0;
            break;
        
        case 180:
            action = 4;
            action_step = 0;
            sa = 0;
            break;
    }
}
