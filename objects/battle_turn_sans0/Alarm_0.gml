var a = irandom_range(0,3)

switch (a)
{
	case 0:
	BlueSoulDown()
	BoneStab(270,60,130,0,30,10)
	break
	
	case 1:
	BlueSoulUp()
	BoneStab(90,60,130,0,30,10)
	break
	
	case 2:
	BlueSoulRight()
	BoneStab(0,60,130,0,30,10)
	break
	
	case 3:
	BlueSoulLeft()
	BoneStab(180,60,130,0,30,10)
	break
}

alarm[0] = 60