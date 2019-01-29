//to be used inside a ChaosWarning object
alarm[0]=-1;
step = 0;
if(ActiveHoleID !=0){
	with(ActiveHoleID){
		instance_destroy();
	}
}
with(ChaosWarningID){
	image_index	= 0;
	image_speed = 0;
}
hole_to_create = 0;