/// @description Player Values

if (room == rm_LevelOne) {
	draw_set_font(fnt_PlayerController);
	draw_set_valign(fa_center);
	draw_set_halign(fa_middle);
	draw_text(413,150,"Money: " + string(money) + " / 2500");
	draw_text(413,180,"Points: " + string(points) + " / 100");
	draw_text(413,210,"Boxes Left: " + string(obj_Dispenser.total_boxes) + " / 20");
}

if (room == rm_LevelZero) {
	draw_set_font(fnt_PlayerController);
	draw_set_valign(fa_center);
	draw_set_halign(fa_middle);
	draw_text(413,150,"Money: " + string(money) + " / 2500");
	draw_text(413,180,"Points: " + string(points) + " / 100");
	draw_text(413,210,"Boxes Left: " + string(obj_Dispenser.total_boxes) + " / 20");
}
if (room == rm_LevelZeroTwo) {
	draw_set_font(fnt_PlayerController);
	draw_set_valign(fa_center);
	draw_set_halign(fa_middle);
	draw_text(413,150,"Money: " + string(money) + " / 2500");
	draw_text(413,180,"Points: " + string(points) + " / 100");
	draw_text(413,210,"Boxes Left: " + string(obj_Dispenser.total_boxes) + " / 20");
}
