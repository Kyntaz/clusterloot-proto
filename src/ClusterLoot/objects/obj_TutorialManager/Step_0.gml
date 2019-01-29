switch (phase) {
	case 0:
		if (instance_number(obj_BuiltObject) > 0) phase = 1;
	break;
	
	case 1:
		if (ds_list_size(obj_JointManager.joint_list) > 0 ) phase = 2;
	break;
	
	case 2:
		if (mode_is_test) phase = 3;
	break;
	
	case 3:
		if (mode_is_build) {
			phase = 4;
			curr_money = obj_PlayerController.money
		}
	break;
	
	case 4:
		if (obj_PlayerController.money > curr_money) phase = 5;
	break;
	
	case 5:
		if (instance_number(obj_Rotor) + instance_number(obj_Pusher) > 0) phase = 6;
	break;
	
	case 6:
		if (instance_number(obj_Bomb) > 0) phase = 7;
	break;
}