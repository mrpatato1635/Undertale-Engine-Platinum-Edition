if(_beam_alpha<=0){
	if x <= -10750 {
		instance_destroy()	
	}
	if x >= 10950 {
		instance_destroy()	
	}
	if y <= -10750 {
		instance_destroy()	
	}
	if y >= 10750 {
		instance_destroy()	
	}
}

if _intro==true{
    if movetime <= time_move+1{
		if !angles {
			image_angle=angle_start
			angles=1
		}
        movetime += 1
        if (x < x_target)
            x += abs(((x_target - x)/ time_move))* 4 
        if (x > x_target)
            x -= abs(((x - x_target)/ time_move))* 4 
        if (y < y_target)
            y += abs(((y_target - y)/ time_move))* 4 
        if (y > y_target)
            y -= abs(((y - y_target)/ time_move))* 4 
        if (image_angle < angle_target)
            image_angle += abs(((angle_target - image_angle)/ time_move))* 4
        if (image_angle > angle_target)
            image_angle -= abs(((image_angle - angle_target)/ time_move))* 4
    }else if (movetime >= time_move){
        x = x_target
        y = y_target
        image_angle = angle_target
        _intro=false
    }
}
