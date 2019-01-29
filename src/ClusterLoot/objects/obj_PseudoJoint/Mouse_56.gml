if (place_meeting(x, y, obj_Sell)) {
	sell_piece(price);
	instance_destroy();
}
else {
	drop_pseudo_joint();
}